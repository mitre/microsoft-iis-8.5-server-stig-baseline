is_proxy = attribute(
    'is_proxy',
    description: 'this system is running as a proxy server',
    default: false
)

WebServer_Software_List = 'Mozilla Firefox 63.0 (x64 en-US)\r\nMozilla Maintenance Service\r\nIIS URL Rewrite Module 2\r\nMicrosoft Web Platform Installer 5.0\r\nPackage Management Preview - x64\r\nMicrosoft External Cache\r\nMicrosoft Application Request Routing 3.0'

Proxy_Software_List = 'IIS URL Rewrite Module 2
Microsoft Application Request Routing 3.0
Microsoft External Cache
Microsoft Web Platform Installer 5.0
Package Management Preview - x64'



control "V-76701" do
  title "The IIS 8.5 web server must only contain functions necessary for
  operation."
  desc  "A web server can provide many features, services, and processes. Some
  of these may be deemed unnecessary or too unsecure to run on a production DoD
  system.

      The web server must provide the capability to disable, uninstall, or
  deactivate functionality and services that are deemed to be non-essential to
  the web server mission or can adversely impact server performance.
  "
  impact 0.7
  tag "gtitle": "SRG-APP-000141-WSR-000075"
  tag "gid": "V-76701"
  tag "rid": "SV-91397r1_rule"
  tag "stig_id": "IISW-SV-000118"
  tag "fix_id": "F-83397r1_fix"
  tag "cci": ["CCI-000381"]
  tag "nist": ["CM-7 a", "Rev_4"]
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
  tag "check": "Click on “Start”.

  Open Control Panel.

  Click on “Programs”.

  Click on “Programs and Features”.

  Review the installed programs, if any programs are installed other than those
  required for the IIS 8.5 web services, this is a finding.

  Note: If additional software is needed supporting documentation must be signed
  by the ISSO."
  tag "fix": "Remove all unapproved programs and roles from the production IIS
  8.5 web server."
  installed_software = command('Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" | select -expand DisplayName ').stdout.strip.split('\n')
  installed_software_count = command('Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" | select -ExpandProperty DisplayName | Measure-Object -Line | Select -expand Lines ').stdout.strip
  #  $Objs = @()
  #  $RegKey = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*"
  #  $InstalledAppsInfos = Get-ItemProperty -Path $RegKey
  #  Foreach($InstalledAppsInfo in $InstalledAppsInfos)
  #      $Obj = [PSCustomObject]@{Computer="localhost";
  #                               DisplayName = $InstalledAppsInfo.DisplayName;
  #                               DisplayVersion = $InstalledAppsInfo.DisplayVersion;
  #                               Publisher = $InstalledAppsInfo.Publisher}
  #      $Objs += $Obj.DisplayName
  #  }
  #  $Objs | Sort-Object').stdout.strip

  unless is_proxy
    describe windows_feature('Web-Server') do
      it { should be_installed }
    end
    describe windows_feature('Web-WebServer') do
      it { should be_installed }
    end
    describe windows_feature('Web-Common-Http') do
      it { should be_installed }
    end
    describe "Running as a web-server, Manual Review of software installed on Web Server Required is limited to required by Web Server -  #{installed_software}  " do
      subject { installed_software_count }
      it { should cmp '0' }
    end
  else
    describe windows_feature('Web-Server') do
      it { should be_installed }
    end
    describe windows_feature('Web-WebServer') do
      it { should be_installed }
    end
    describe windows_feature('Web-Common-Http') do
      it { should be_installed }
    end
    # describe package('arr') do
    #   it should be installed
    # end
    describe "Running as a proxy-server, Manual Review of software installed on Proxy Server Required is limited to required by Web Server  #{installed_software}  " do
      subject { installed_software_count }
      it { should cmp '7' }
    end
  end
end
