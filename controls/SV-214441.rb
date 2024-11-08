control 'SV-214441' do
  title 'The IIS 8.5 web server must have a global authorization rule configured to restrict access.'
  desc 'Authorization rules can be configured at the server, website, folder (including Virtual Directories), or file level. It is recommended that URL Authorization be configured to only grant access to the necessary security principals. Configuring a global Authorization rule that restricts access ensures inheritance of the settings down through the hierarchy of web directories. This will ensure access to current and future content is only granted to the appropriate principals, mitigating risk of unauthorized access.'
  desc 'check', 'If ASP.NET is not installed, this is Not Applicable.
If the server is hosting SharePoint, this is Not Applicable.
If the server is hosting WSUS, this is Not Applicable.
If the server is hosting Exchange, this is Not Applicable.

Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the ".NET Authorization Rules" icon.

Ensure "All Users" is set to "Allow", and "Anonymous Users" is set to "Deny", otherwise this is a finding.
If any other rules are present, this is a finding.'
  desc 'fix', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the ".NET Authorization Rules" icon.

Alter the list as necessary to ensure "All Users" is set to "Allow" and "Anonymous Users" is set to "Deny".

Remove any other line items.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000516-WSR-000174'
  tag gid: 'V-214441'
  tag rid: 'SV-214441r881085_rule'
  tag stig_id: 'IISW-SV-000159'
  tag fix_id: 'F-15649r881084_fix'
  tag cci: ['CCI-000366']
  tag nist: ['CM-6 b']
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

  anonymousAuthentication = command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/authentication/anonymousAuthentication" -Name enabled | select -expandProperty value').stdout.strip == 'False'
  basicAuthentication = command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/authentication/basicAuthentication" -Name enabled | select -expandProperty value').stdout.strip == 'True'
  defaultLogonDomain = command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/authentication/basicAuthentication" -Name defaultLogonDomain | select -expandProperty value').stdout.strip == 'Administrator'

  describe 'The IIS 8.5 web server must have a global authorization rule configured to restrict access to anonymousAuthentication by disabling it. (currently: ' + (anonymousAuthentication ? 'disabled' : 'enabled') + " )\n" do
    subject { command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/authentication/anonymousAuthentication" -Name enabled | select -expandProperty value').stdout.strip }
    it 'The anonymousAuthentication should be false' do
      expect(subject).to cmp('false')
    end
  end
  describe 'The IIS 8.5 web server must have a global authorization rule configured to restrict access to basicAuthentication, this attribute should be enabled. (currently: ' + (basicAuthentication ? 'enabled' : 'disabled') + " )\n" do
    subject { command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/authentication/basicAuthentication" -Name enabled | select -expandProperty value').stdout.strip }
    it 'The basicAuthentication should be enabled' do
      expect(subject).to cmp('true')
    end
  end
  describe 'The IIS 8.5 web server must have a global authorization rule configured to restrict access to basicAuthentication attribute defaultLogonDomain, this attribute should be set to Administrator only. (currently: ' + (defaultLogonDomain ? 'Administrator' : 'Other') + " )\n" do
    subject { command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/authentication/basicAuthentication" -Name defaultLogonDomain | select -expandProperty value').stdout.strip }
    it 'The basicAuthentication attribute defaultLogonDomain should be Administrator' do
      expect(subject).to cmp('Administrator')
    end
  end
end
