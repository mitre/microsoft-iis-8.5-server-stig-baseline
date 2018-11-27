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
  describe "The IIS 8.5 web server must only contain functions necessary for
  operation." do
    skip "Manual review required for this control"
  end
end
