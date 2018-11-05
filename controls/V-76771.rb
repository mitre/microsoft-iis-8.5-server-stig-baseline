control "V-76771" do
  title "The IIS 8.5 web server must have a global authorization rule
configured to restrict access."
  desc  "Authorization rules can be configured at the server, website, folder
(including Virtual Directories), or file level. It is recommended that URL
Authorization be configured to only grant access to the necessary security
principals. Configuring a global Authorization rule that restricts access
ensures inheritance of the settings down through the hierarchy of web
directories. This will ensure access to current and future content is only
granted to the appropriate principals, mitigating risk of unauthorized access."
  impact 0.7
  tag "gtitle": "SRG-APP-000516-WSR-000174"
  tag "gid": "V-76771"
  tag "rid": "SV-91467r2_rule"
  tag "stig_id": "IISW-SV-000159"
  tag "fix_id": "F-83467r2_fix"
  tag "cci": ["CCI-000366"]
  tag "nist": ["CM-6 b", "Rev_4"]
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
  tag "check": "Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the “Authorization Rules” icon.

If any user other than “Administrator” is listed, this is a finding.
"
  tag "fix": "Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the “Authorization Rules” icon.

Remove all users other than “Administrator”.

"

  describe "The IIS 8.5 web server must have a global authorization rule configured to restrict access to anonymousAuthentication." do
    subject { command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/authentication/anonymousAuthentication" -Name enabled | select -expandProperty value').stdout.strip }
    it "The anonymousAuthentication should be false" do
      expect(subject).to cmp("false")
    end
  end
  describe "The IIS 8.5 web server must have a global authorization rule configured to restrict access to basicAuthentication." do
    subject { command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/authentication/basicAuthentication" -Name enabled | select -expandProperty value').stdout.strip }
    it "The basicAuthentication should be enabled" do
      expect(subject).to cmp("true")
    end
  end
  describe "The IIS 8.5 web server must have a global authorization rule configured to restrict access to basicAuthentication." do
    subject { command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/security/authentication/basicAuthentication" -Name defaultLogonDomain | select -expandProperty value').stdout.strip }
    it "The basicAuthentication defaultLogonDomain should be Administrator" do
      expect(subject).to cmp("Administrator")
    end
  end
end



