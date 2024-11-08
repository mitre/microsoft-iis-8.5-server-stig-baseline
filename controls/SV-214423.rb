control 'SV-214423' do
  title 'Directory Browsing on the IIS 8.5 web server must be disabled.'
  desc 'Directory browsing allows the contents of a directory to be displayed upon request from a web client. If directory browsing is enabled for a directory in IIS, users could receive a web page listing the contents of the directory. If directory browsing is enabled the risk of inadvertently disclosing sensitive content is increased.'
  desc 'check', 'If the Directory Browsing IIS Feature is disabled, this is Not Applicable.

Open the IIS 8.5 Manager.
Click the IIS 8.5 web server name.
Double-click the "Directory Browsing" icon.
Under the “Actions” pane verify "Directory Browsing" is disabled.

If “Directory Browsing” is not disabled, this is a finding.'
  desc 'fix', 'If the Directory Browsing IIS Feature is disabled, this is Not Applicable.

Open the IIS 8.5 Manager.
Click the IIS 8.5 web server name.
Double-click the "Directory Browsing" icon.
Under the "Actions" pane click "Disabled".
Under the "Actions" pane, click "Apply".'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000251-WSR-000157'
  tag gid: 'V-214423'
  tag rid: 'SV-214423r879652_rule'
  tag stig_id: 'IISW-SV-000138'
  tag fix_id: 'F-15631r505364_fix'
  tag cci: ['CCI-001310']
  tag nist: ['SI-10']
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

  directory_browsing = command('Get-WebConfigurationProperty -Filter system.webServer/directoryBrowse -name * | select -expand enabled').stdout.strip

  describe 'The websites enable directory browsing' do
    subject { directory_browsing }
    it { should cmp 'False' }
  end
end
