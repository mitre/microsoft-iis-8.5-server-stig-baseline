control "V-76729" do
  title "The IIS 8.5 web server must augment re-creation to a stable and known
baseline."
  desc  "Making certain that the web server has not been updated by an
unauthorized user is always a concern. Adding patches, functions, and modules
that are untested and not part of the baseline opens the possibility for
security risks. The web server must offer, and not hinder, a method that allows
for the quick and easy reinstallation of a verified and patched baseline to
guarantee the production web server is up-to-date and has not been modified to
add functionality or expose security risks.

    When the web server does not offer a method to roll back to a clean
baseline, external methods, such as a baseline snapshot or virtualizing the web
server, can be used.
  "
  impact 0.7
  tag "gtitle": "SRG-APP-000225-WSR-000074"
  tag "gid": "V-76729"
  tag "rid": "SV-91425r1_rule"
  tag "stig_id": "IISW-SV-000136"
  tag "fix_id": "F-83425r1_fix"
  tag "cci": ["CCI-001190"]
  tag "nist": ["SC-24", "Rev_4"]
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
  tag "check": "Interview the System Administrator for the IIS 8.5 web server.

Ask for documentation on the disaster recovery methods tested and planned for
the IIS 8.5 web server in the event of the necessity for rollback.

If documentation for a disaster recovery has not been established, this is a
finding."
  tag "fix": "Prepare documentation for disaster recovery methods for the IIS
8.5 web server in the event of the necessity for rollback.

Document and test the disaster recovery methods designed."

  describe "Manual review of DR portion of BCDR is required." do
    skip "Manual review of DR portion of BCDR is required."
  end
end

