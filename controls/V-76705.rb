control 'V-76705' do
  title "All IIS 8.5 web server sample code, example applications, and
  tutorials must be removed from a production IIS 8.5 server."
  desc "Web server documentation, sample code, example applications, and
  tutorials may be an exploitable threat to a web server. A production web server
  may only contain components that are operationally necessary (i.e., compiled
  code, scripts, web content, etc.). Delete all directories containing samples
  and any scripts used to execute the samples."
  impact 0.7
  tag "gtitle": 'SRG-APP-000141-WSR-000077'
  tag "gid": 'V-76705'
  tag "rid": 'SV-91401r1_rule'
  tag "stig_id": 'IISW-SV-000120'
  tag "fix_id": 'F-83401r1_fix'
  tag "cci": ['CCI-000381']
  tag "nist": ['CM-7 a', 'Rev_4']
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "Navigate to the following folders:

  inetpub\\
  Program Files\\Common Files\\System\\msadc
  Program Files (x86)\\Common Files\\System\\msadc

  If the folder or sub-folders contain any executable sample code, example
  applications, or tutorials which are not explicitly used by a production
  website, this is a finding."
  tag "fix": "Remove any executable sample code, example applications, or
  tutorials which are not explicitly used by a production website."

  describe windows_feature('Web-Server') do
    it { should be_installed }
  end

  describe windows_feature('Web-WebServer') do
    it { should be_installed }
  end
  describe windows_feature('Web-Common-Http') do
    it { should be_installed }
  end

  webroot_folder_test = command('(Get-Item C:\inetpub) -is [System.IO.DirectoryInfo]').stdout.strip
  webroot_found = webroot_folder_test == '' || webroot_folder_test == 'False' ? false : true

  describe 'Able to access webroot at C:\\inetpub ' do
    subject { webroot_found }
    it { should be true }
  end


  # Checking for Executable File Signature
  if disable_slow_controls
    describe "This control consistently takes a long time to run and has been disabled
      using the disable_slow_controls attribute." do
      skip "This control consistently takes a long time to run and has been disabled
            using the disable_slow_controls attribute. You must enable this control for a
            full accreditation for production."
    end
  else
    C_Inetpub_two_bytes = command('Get-ChildItem -Path "C:\Inetpub" -Recurse | ForEach { if ( $_ -is [System.IO.FileInfo] ) {-join ([char[]](Get-Content  $_.FullName -Encoding byte -TotalCount 2))} }').stdout.strip.split("\r\n")
    C_Program_Files_Common_Files_System_msadc_two_bytes = command('Get-ChildItem -Path "C:\Program Files\Common Files\System\msadc" -Recurse | ForEach { if ( $_ -is [System.IO.FileInfo] ) {-join ([char[]](Get-Content  $_.FullName -Encoding byte -TotalCount 2))} }').stdout.strip.split("\r\n")
    C_Program_Files_x86_Common_Files_System_msadc_two_bytes = command('Get-ChildItem -Path "C:\Program Files (x86)\Common Files\System\msadc" -Recurse | ForEach { if ( $_ -is [System.IO.FileInfo] ) {-join ([char[]](Get-Content  $_.FullName -Encoding byte -TotalCount 2))} }').stdout.strip.split("\r\n")

    C_Inetpub_FileExtentions = command('Get-ChildItem -Path "C:\Inetpub" -Recurse | ForEach { if ( $_ -is [System.IO.FileInfo] ) {-join (  ([System.IO.FileInfo]$_.FullName).Extension ) } }').stdout.strip.split("\r\n")
    C_Program_Files_Common_Files_System_msadc_FileExtensions = command('Get-ChildItem -Path "C:\Program Files\Common Files\System\msadc" -Recurse | ForEach { if ( $_ -is [System.IO.FileInfo] ) {-join (  ([System.IO.FileInfo]$_.FullName).Extension ) } }').stdout.strip.split("\r\n")
    C_Program_Files_x86_Common_Files_System_msadc_FileExtensions = command('Get-ChildItem -Path "C:\Program Files (x86)\Common Files\System\msadc" -Recurse | ForEach { if ( $_ -is [System.IO.FileInfo] ) {-join (  ([System.IO.FileInfo]$_.FullName).Extension ) } }').stdout.strip.split("\r\n")

    # Check of any of the files are executable
    describe 'Executable files found at C:\\Inetpub as File Signatures ' do
      subject { C_Inetpub_two_bytes }
      it { should_not include 'MZ' }
    end

    describe 'Executable files found at C:\\Program Files\\Common Files\\System\\msadc as File Signatures ' do
      subject { C_Program_Files_Common_Files_System_msadc_two_bytes }
      it { should_not include 'MZ' }
    end

    describe 'Executable files found at C:\\Program Files (x86)\\Common Files\\System\\msadc as File Signatures ' do
      subject { C_Program_Files_x86_Common_Files_System_msadc_two_bytes }
      it { should_not include 'MZ' }
    end

    # Check for known bad extensions
    describe 'Executable files found at C:\\Inetpub as File Signatures ' do
      subject { C_Inetpub_FileExtentions }
      it { should_not include 'ASP' }
      it { should_not include 'ASPX' }
      it { should_not include 'PHP' }
      it { should_not include 'DLL' }
      it { should_not include 'EXE' }
      it { should_not include 'HTM' }
      it { should_not include 'HTML' }
    end

    describe 'Executable files found at C:\\Program Files\\Common Files\\System\\msadc as as File Signatures ' do
      subject { C_Program_Files_Common_Files_System_msadc_FileExtensions }
      it { should_not include 'ASP' }
      it { should_not include 'ASPX' }
      it { should_not include 'PHP' }
      it { should_not include 'DLL' }
      it { should_not include 'EXE' }
      it { should_not include 'HTM' }
      it { should_not include 'HTML' }
    end

    describe 'Executable files found at C:\\Program Files (x86)\\Common Files\\System\\msadc as File Signatures ' do
      subject { C_Program_Files_x86_Common_Files_System_msadc_FileExtensions }
      it { should_not include 'ASP' }
      it { should_not include 'ASPX' }
      it { should_not include 'PHP' }
      it { should_not include 'DLL' }
      it { should_not include 'EXE' }
      it { should_not include 'HTM' }
      it { should_not include 'HTML' }
    end
  end
end
