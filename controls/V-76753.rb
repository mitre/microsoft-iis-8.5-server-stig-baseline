control 'V-76753' do
  title "The Internet Printing Protocol (IPP) must be disabled on the IIS 8.5
  web server."
  desc "The use of Internet Printing Protocol (IPP) on an IIS web server
  allows client’s access to shared printers. This privileged access could allow
  remote code execution by increasing the web servers attack surface.
  Additionally, since IPP does not support SSL, it is considered a risk and will
  not be deployed."
  impact 0.7
  tag "gtitle": 'SRG-APP-000383-WSR-000175'
  tag "gid": 'V-76753'
  tag "rid": 'SV-91449r1_rule'
  tag "stig_id": 'IISW-SV-000149'
  tag "fix_id": 'F-83449r1_fix'
  tag "cci": ['CCI-001762']
  tag "nist": ['CM-7 (1) (b)', 'Rev_4']
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
  tag "check": "If the Print Services role and the Internet Printing role are
  not installed, this check is Not Applicable.

  Navigate to the following directory:

  %windir%\\web\\printers

  If this folder exists, this is a finding.

  Determine whether Internet Printing is enabled:

  Click “Start”, then click “Administrative Tools”, and then click “Server
  Manager”.

  Expand the roles node, then right-click “Print Services”, and then select
  “Remove Roles Services”.

  If the Internet Printing option is enabled, this is a finding."
  tag "fix": "Click “Start”, then click “Administrative Tools”, and then click
  “Server Manager”.

  Expand the roles node, then right-click “Print Services”, and then select
  “Remove Roles Services”.

  If the Internet Printing option is checked, clear the check box, click “Next”,
  and then click “Remove” to complete the wizard."

  describe directory('%windir%\web\printers') do
    it { should_not exist }
  end

  describe windows_feature('Print-Services') do
    it { should_not be_installed }
  end
end
