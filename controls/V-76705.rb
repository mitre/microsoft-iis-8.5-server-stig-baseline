control "V-76705" do
  title "All IIS 8.5 web server sample code, example applications, and
tutorials must be removed from a production IIS 8.5 server."
  desc  "Web server documentation, sample code, example applications, and
tutorials may be an exploitable threat to a web server. A production web server
may only contain components that are operationally necessary (i.e., compiled
code, scripts, web content, etc.). Delete all directories containing samples
and any scripts used to execute the samples."
  impact 0.7
  tag "gtitle": "SRG-APP-000141-WSR-000077"
  tag "gid": "V-76705"
  tag "rid": "SV-91401r1_rule"
  tag "stig_id": "IISW-SV-000120"
  tag "fix_id": "F-83401r1_fix"
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
  tag "check": "Navigate to the following folders:

inetpub\\
Program Files\\Common Files\\System\\msadc
Program Files (x86)\\Common Files\\System\\msadc

If the folder or sub-folders contain any executable sample code, example
applications, or tutorials which are not explicitly used by a production
website, this is a finding."
  tag "fix": "Remove any executable sample code, example applications, or
tutorials which are not explicitly used by a production website."
end

