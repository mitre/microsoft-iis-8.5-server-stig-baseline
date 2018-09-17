control "V-76731" do
  title "The production IIS 8.5 web server must utilize SHA2 encryption for the
Machine Key."
  desc  "The Machine Key element of the ASP.NET web.config specifies the
algorithm and keys that ASP.NET will use for encryption. The Machine Key
feature can be managed to specify hashing and encryption settings for
application services such as view state, forms authentication, membership and
roles, and anonymous identification. Ensuring a strong encryption method can
mitigate the risk of data tampering in crucial functional areas such as forms
authentication cookies, or view state."
  impact 0.7
  tag "gtitle": "SRG-APP-000231-WSR-000144"
  tag "gid": "V-76731"
  tag "rid": "SV-91427r2_rule"
  tag "stig_id": "IISW-SV-000137"
  tag "fix_id": "F-83427r2_fix"
  tag "cci": ["CCI-001199"]
  tag "nist": ["SC-28", "Rev_4"]
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

Double-click the \"Machine Key\" icon in the website Home Pane.

Verify \"HMACSHA256\" or stronger encryption is selected for the Validation
method and \"Auto\" is selected for the Encryption method.

If \"HMACSHA256\" or stronger encryption is not selected for the Validation
method and/or \"Auto\" is not selected for the Encryption method, this is a
finding.
"
  tag "fix": "Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the \"Machine Key\" icon in the web server Home Pane.

Set the Validation method to \"HMACSHA256\" or stronger.
Set the Encryption method to \"Auto\".

Click \"Apply\" in the \"Actions\" pane.
"
end

