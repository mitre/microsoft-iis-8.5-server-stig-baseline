control 'SV-214429' do
  title 'IIS 8.5 web server system files must conform to minimum file permission requirements.'
  desc 'This check verifies the key web server system configuration files are owned by the SA or the web administrator controlled account. These same files that control the configuration of the web server, and thus its behavior, must also be accessible by the account running the web service. If these files are altered by a malicious user, the web server would no longer be under the control of its managers and owners; properties in the web server configuration could be altered to compromise the entire server platform.'
  desc 'check', 'Open Explorer and navigate to the inetpub directory.
Right-click "inetpub" and select "Properties".
Click the "Security" tab.
Verify the permissions for the following users:

System: Full control
Administrators: Full control
TrustedInstaller: Full control
ALL APPLICATION PACKAGES (built-in security group): Read and execute
ALL RESTRICTED APPLICATION PACKAGES (built-in security group): Read and execute
Users: Read and execute, list folder contents
CREATOR OWNER: Full Control, Subfolders and files only

If the permissions are less restrictive than what is listed, this is a finding.'
  desc 'fix', 'Open Explorer and navigate to the inetpub directory.
Right-click "inetpub" and select "Properties".
Click the "Security" tab.
Set the following permissions: 

SYSTEM: Full control
Administrators: Full control
TrustedInstaller: Full control
ALL APPLICATION PACKAGES (built-in security group): Read and execute
Users: Read and execute, list folder contents
CREATOR OWNER: special permissions to subkeys'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000340-WSR-000029'
  tag gid: 'V-214429'
  tag rid: 'SV-214429r879717_rule'
  tag stig_id: 'IISW-SV-000144'
  tag fix_id: 'F-15637r505370_fix'
  tag cci: ['CCI-002235']
  tag nist: ['AC-6 (10)']
  tag 'false_negatives'
  tag 'false_positives'
  tag 'documentable'
  tag 'mitigations'
  tag 'severity_override_guidance'
  tag 'potential_impacts'
  tag 'third_party_tools'
  tag 'mitigation_controls'
  tag 'responsibility'
  tag 'ia_controls'
  tag 'check'
  tag 'fix'

  describe directory('C:\\inetpub') do
    it { should be_allowed('full-control', by_user: 'NT AUTHORITY\\SYSTEM') }
    it { should be_allowed('full-control', by_user: 'NT SERVICE\\TrustedInstaller') }
    it { should be_allowed('full-control', by_user: 'BUILTIN\Administrators') }
    it { should be_allowed('read', by_user: 'APPLICATION PACKAGE AUTHORITY\\ALL APPLICATION PACKAGES') }
    it { should be_allowed('read', by_user: 'BUILTIN\\Users') }
    it { should be_allowed('read', by_user: 'CREATOR OWNER') }
  end
end
