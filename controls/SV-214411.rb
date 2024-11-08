control 'SV-214411' do
  title 'The accounts created by uninstalled features (i.e., tools, utilities, specific, etc.) must be deleted from the IIS 8.5 server.'
  desc 'When accounts used for web server features such as documentation, sample code, example applications, tutorials, utilities, and services are created even though the feature is not installed, they become an exploitable threat to a web server.

These accounts become inactive, are not monitored through regular use, and passwords for the accounts are not created or updated. An attacker, through very little effort, can use these accounts to gain access to the web server and begin investigating ways to elevate the account privileges.

The accounts used for web server features not installed must not be created and must be deleted when these features are uninstalled.'
  desc 'check', 'Access the IIS 8.5 web server.

Access “Apps” menu. Under “Administrative Tools”, select “Computer Management”.

In left pane, expand "Local Users and Groups" and click on "Users".

Review the local users listed in the middle pane.

If any local accounts are present and were created by features which have been uninstalled or are not used, this is a finding.'
  desc 'fix', 'Access the IIS 8.5 web server.

Access “Apps” menu. Under “Administrative Tools”, select “Computer Management”.

In left pane, expand "Local Users and Groups" and click on "Users".

Delete any local accounts which were created by features which have been uninstalled or are not used.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000141-WSR-000078'
  tag gid: 'V-214411'
  tag rid: 'SV-214411r879587_rule'
  tag stig_id: 'IISW-SV-000121'
  tag fix_id: 'F-15619r310282_fix'
  tag cci: ['CCI-000381']
  tag nist: ['CM-7 a']
  tag 'false_negatives'
  tag 'false_positives'
  tag 'documentable'
  tag 'mitigations'
  tag 'severity_override_guidance'
  tag 'potential_impacts'
  tag 'third_party_tools'
  tag 'mitigation_controls'
  tag 'responsibility'
  tag 'ia_controls'
  tag 'check'
  tag 'fix'

  min_local_users = attribute('minimal_local_users')
  local_users = command('Get-WmiObject -Class Win32_UserAccount -Filter  "LocalAccount=\'True\'" | select -ExpandProperty Name').stdout.strip.split("\r\n")
  is_min_users = local_users.length != min_local_users.length

  describe 'The number of local users' do
    subject { local_users }
    its('length') { should eq min_local_users.length }
  end

  describe 'List of Local Users on the system' do
    subject { local_users }
    it { should cmp min_local_users }
  end
end
