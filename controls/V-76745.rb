control "V-76745" do
  title "IIS 8.5 web server system files must conform to minimum file
permission requirements."
  desc  "This check verifies the key web server system configuration files are
owned by the SA or the web administrator controlled account. These same files
that control the configuration of the web server, and thus its behavior, must
also be accessible by the account running the web service. If these files are
altered by a malicious user, the web server would no longer be under the
control of its managers and owners; properties in the web server configuration
could be altered to compromise the entire server platform."
  impact 0.7
  tag "gtitle": "SRG-APP-000340-WSR-000029"
  tag "gid": "V-76745"
  tag "rid": "SV-91441r1_rule"
  tag "stig_id": "IISW-SV-000144"
  tag "fix_id": "F-83441r1_fix"
  tag "cci": ["CCI-002235"]
  tag "nist": ["AC-6 (10)", "Rev_4"]
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
  tag "check": "Open Explorer and navigate to the inetpub directory.

Right-click inetpub and select “Properties”.

Click the \"Security\" tab.

Verify the permissions for the following users; if the permissions are less
restrictive, this is a finding.

System: Full control
Administrators: Full control
TrustedInstaller: Full control
ALL APPLICATION PACKAGES (built-in security group): Read and execute
Users: Read and execute, list folder contents
Creator/Owner: Special permissions to subkeys"
  tag "fix": "Open Explorer and navigate to the inetpub directory.

Right-click inetpub and select “Properties”.

Click the \"Security\" tab.

Set the following permissions:

SYSTEM: Full control
Administrators: Full control
TrustedInstaller: Full control
ALL APPLICATION PACKAGES (built-in security group): Read and execute
Users: Read and execute, list folder contents
Creator/Owner: special permissions to subkeys"

  describe directory('C:\\inetpub') do
    # Full control for administrators
    it { should be_allowed('full-control', by: 'SYSTEM') }
    it { should be_allowed('full-control', by: 'WIN-EFQ98MD6RFI/Administrators') }
    it { should be_allowed('full-control', by: 'TrustedInstaller') }

    # read & execute for ALL APPLICATION PACKAGES, SYSTEM, Users
    it { should be_readable.by('ALL APPLICATION PACKAGES') }
    it { should be_executable.by('ALL APPLICATION PACKAGES') }
    it { should be_readable.by('WIN-EFQ98MD6RFI/Users') }
    it { should be_executable.by('WIN-EFQ98MD6RFI/Users') }

    # users with read & execute permissions
    it { should be_readable.by('owner') }
    it { should be_executable.by('owner') }

  end
end

