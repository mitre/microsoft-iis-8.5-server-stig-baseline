control 'SV-214425' do
  title 'Warning and error messages displayed to clients must be modified to minimize the identity of the IIS 8.5 web server, patches, loaded modules, and directory paths.'
  desc 'HTTP error pages contain information that could enable an attacker to gain access to an information system. Failure to prevent the sending of HTTP error pages with full information to remote requesters exposes internal configuration information to potential attackers.'
  desc 'check', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the "Error Pages" icon.

Click on any error message and click "Edit Feature Setting" from the "Actions" Pane. This will apply to all error messages.

If the feature setting is not set to “Detailed errors for local requests and custom error pages for remote requests”, this is a finding.'
  desc 'fix', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the "Error Pages" icon.

Click on any error message and click "Edit Feature Setting" from the "Actions" Pane. This will apply to all error messages.

Set Feature Setting to “Detailed errors for local requests and custom error pages for remote requests”.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000266-WSR-000159'
  tag gid: 'V-214425'
  tag rid: 'SV-214425r879655_rule'
  tag stig_id: 'IISW-SV-000140'
  tag fix_id: 'F-15633r310324_fix'
  tag cci: ['CCI-001312']
  tag nist: ['SI-11 a']
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

  errorMode = command('Get-WebConfigurationProperty -filter "system.webServer/httpErrors" -Name errorMode').stdout.strip

  describe 'The websites error mode' do
    subject { errorMode }
    it { should cmp 'DetailedLocalOnly' }
  end
end
