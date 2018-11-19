control "V-76733" do
  title "Directory Browsing on the IIS 8.5 web server must be disabled."
  desc  "Directory browsing allows the contents of a directory to be displayed
upon request from a web client. If directory browsing is enabled for a
directory in IIS, users could receive a web page listing the contents of the
directory. If directory browsing is enabled the risk of inadvertently
disclosing sensitive content is increased."
  impact 0.7
  tag "gtitle": "SRG-APP-000251-WSR-000157"
  tag "gid": "V-76733"
  tag "rid": "SV-91429r1_rule"
  tag "stig_id": "IISW-SV-000138"
  tag "fix_id": "F-83429r1_fix"
  tag "cci": ["CCI-001310"]
  tag "nist": ["SI-10", "Rev_4"]
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

  Double-click the \"Directory Browsing\" icon.

  Under the “Actions” pane verify \"Directory Browsing\" is disabled.

  If “Directory Browsing” is not disabled, this is a finding."
  tag "fix": "Open the IIS 8.5 Manager.

  Click the IIS 8.5 web server name.

  Double-click the \"Directory Browsing\" icon.

  Under the \"Actions\" pane click \"Disabled\".

  Under the \"Actions\" pane, click \"Apply\"."

  describe command("Get-WebConfigurationProperty -pspath \"MACHINE/WEBROOT/APPHOST\" -filter \"system.webServer/directoryBrowse\" -Name enabled | select -expandProperty value").stdout.strip do
    it {should cmp "False"}
  end
end