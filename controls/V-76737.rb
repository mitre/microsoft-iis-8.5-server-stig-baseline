control "V-76737" do
  title "Warning and error messages displayed to clients must be modified to
  minimize the identity of the IIS 8.5 web server, patches, loaded modules, and
  directory paths."
  desc  "HTTP error pages contain information that could enable an attacker to
  gain access to an information system. Failure to prevent the sending of HTTP
  error pages with full information to remote requesters exposes internal
  configuration information to potential attackers."
  impact 0.7
  tag "gtitle": "SRG-APP-000266-WSR-000159"
  tag "gid": "V-76737"
  tag "rid": "SV-91433r1_rule"
  tag "stig_id": "IISW-SV-000140"
  tag "fix_id": "F-83433r1_fix"
  tag "cci": ["CCI-001312"]
  tag "nist": ["SI-11 a", "Rev_4"]
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

  Double-click the \"Error Pages\" icon.

  Click each error message and click \"Edit Feature Setting\" from the
  \"Actions\" Pane.

  If any error message is not set to “Detailed errors for local requests and
  custom error pages for remote requests”, this is a finding."
  tag "fix": "Open the IIS 8.5 Manager.

  Click the IIS 8.5 web server name.

  Double-click the \"Error Pages\" icon.

  Click each error message and click \"Edit Feature Setting\" from the
  \"Actions\" Pane.

  Set each error message to “Detailed errors for local requests and custom error
  pages for remote requests”."

  describe command("Get-WebConfigurationProperty -pspath \"MACHINE/WEBROOT/APPHOST\" -filter \"system.webServer/httpErrors\" -Name errorMode").stdout.strip do
    it {should cmp "DetailedLocalOnly"}
  end
end