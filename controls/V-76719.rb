control "V-76719" do
  title "IIS 8.5 Web server accounts accessing the directory tree, the shell,
  or other operating system functions and utilities must only be administrative
  accounts."
  desc  "As a rule, accounts on a web server are to be kept to a minimum. Only
  administrators, web managers, developers, auditors, and web authors require
  accounts on the machine hosting the web server. This is in addition to the
  anonymous web user account. The resources to which these accounts have access
  must also be closely monitored and controlled. Only the SA needs access to all
  the system’s capabilities, while the web administrator and associated staff
  require access and control of the web content and web server configuration
  files. The anonymous web user account must not have access to system resources
  as that account could then control the server."
  impact 0.7
  tag "gtitle": "SRG-APP-000211-WSR-000030"
  tag "gid": "V-76719"
  tag "rid": "SV-91415r1_rule"
  tag "stig_id": "IISW-SV-000131"
  tag "fix_id": "F-83415r1_fix"
  tag "cci": ["CCI-001082"]
  tag "nist": ["SC-2", "Rev_4"]
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
  tag "check": "Obtain a list of the user accounts with access to the system,
  including all local and domain accounts.

  Review the privileges to the web server for each account.

  Verify with the system administrator or the ISSO that all privileged accounts
  are mission essential and documented.

  Verify with the system administrator or the ISSO that all non-administrator
  access to shell scripts and operating system functions are mission essential
  and documented.

  If undocumented privileged accounts are found, this is a finding.

  If undocumented non-administrator access to shell scripts and operating system
  functions are found, this is a finding."
  tag "fix": "Ensure non-administrators are not allowed access to the directory
  tree, the shell, or other operating system functions and utilities.

  All non-administrator access to shell scripts and operating system functions
  must be mission essential and documented."

  describe 'This test currently has no automated tests, you must check manually' do
    skip 'This check must be preformed manually'
  end
end

