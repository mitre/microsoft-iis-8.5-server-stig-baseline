control 'SV-214440' do
  title 'Unspecified file extensions on a production IIS 8.5 web server must be removed.'
  desc 'By allowing unspecified file extensions to execute, the web servers attack surface is significantly increased. This increased risk can be reduced by only allowing specific ISAPI extensions or CGI extensions to run on the web server.'
  desc 'check', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the "ISAPI and CGI restrictions" icon.

Click “Edit Feature Settings".

Verify the "Allow unspecified CGI modules" and the "Allow unspecified ISAPI modules" check boxes are NOT checked.

If either or both of the "Allow unspecified CGI modules" and the "Allow unspecified ISAPI modules" check boxes are checked, this is a finding.'
  desc 'fix', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the "ISAPI and CGI restrictions" icon.

Click "Edit Feature Settings".

Remove the check from the "Allow unspecified CGI modules" and the "Allow unspecified ISAPI modules" check boxes.

Click OK.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000516-WSR-000174'
  tag gid: 'V-214440'
  tag rid: 'SV-214440r879887_rule'
  tag stig_id: 'IISW-SV-000158'
  tag fix_id: 'F-15648r310369_fix'
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

  isInstalledIsapiCGI = !command('Get-WindowsFeature Web-ISAPI-Ext | Where Installed').stdout.strip.nil?
  notListedCgisAllowed = command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/isapiCgiRestriction" -Name notListedCgisAllowed | select -expandProperty value').stdout.strip == 'False'
  notListedIsapisAllowed = command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/isapiCgiRestriction" -Name notListedIsapisAllowed | select -expandProperty value').stdout.strip == 'False'

  describe 'The ISAPI and CGI restrictions feature must be installed. (currently: ' + (isInstalledIsapiCGI ? 'installed' : 'uninstalled') + " )\n" do
    subject { windows_feature('Web-ISAPI-Ext') }
    it 'The ISAPI and CGI restrictions should be installed' do
      expect(subject).to be_installed
    end
  end
  describe 'The ISAPI and CGI restrictions for notListedCgisAllowed must not be enabled. (currently: ' + (notListedCgisAllowed ? 'disabled' : 'enabled') + " )\n" do
    subject { command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/isapiCgiRestriction" -Name notListedCgisAllowed | select -expandProperty value').stdout.strip }
    it 'The ISAPI and CGI restrictions attribute notListedCgisAllowed should not be checked' do
      expect(subject).to cmp('False')
    end
  end
  describe 'The ISAPI and CGI restrictions for notListedIsapisAllowed must not be enabled. (currently: ' + (notListedIsapisAllowed ? 'disabled' : 'enabled') + " )\n" do
    subject { command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/isapiCgiRestriction" -Name notListedIsapisAllowed | select -expandProperty value').stdout.strip }
    it 'The ISAPI and CGI restrictions attribute notListedIsapisAllowed should not be checked' do
      expect(subject).to cmp('False')
    end
  end
end
