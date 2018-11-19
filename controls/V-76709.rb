control "V-76709" do
  title "The IIS 8.5 web server must be reviewed on a regular basis to remove
  any Operating System features, utility programs, plug-ins, and modules not
  necessary for operation."
  desc  "Just as running unneeded services and protocols is a danger to the web
  server at the lower levels of the OSI model, running unneeded utilities and
  programs is also a danger at the application layer of the OSI model. Office
  suites, development tools, and graphical editors are examples of such programs
  that are troublesome.

      Individual productivity tools have no legitimate place or use on an
  enterprise, production web server and they are also prone to their own security
  risks. The web server installation process must provide options allowing the
  installer to choose which utility programs, services, and modules are to be
  installed or removed. By having a process for installation and removal, the web
  server is guaranteed to be in a more stable and secure state than if these
  services and programs were installed and removed manually.
  "
  impact 0.7
  tag "gtitle": "SRG-APP-000141-WSR-000080"
  tag "gid": "V-76709"
  tag "rid": "SV-91405r1_rule"
  tag "stig_id": "IISW-SV-000123"
  tag "fix_id": "F-83405r1_fix"
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
  tag "check": "Consult with the System Administrator and review all of the IIS
  8.5 and Operating System features installed.

  Determine if any are installed which are no longer necessary for operation.

  If any utility programs, features or modules are installed which are not
  necessary for operation, this is a finding.

  If any unnecessary Operating System features are installed, this is a finding."
  tag "fix": "Remove all utility programs, Operating System features or modules
  which are installed but are not necessary for web server operation."

  describe 'This test currently has no automated tests, you must check manually' do
    skip 'This check must be preformed manually'
  end
end