control 'SV-214435' do
  title 'IIS 8.5 web server session IDs must be sent to the client using TLS.'
  desc 'The HTTP protocol is a stateless protocol. To maintain a session, a session identifier is used. The session identifier is a piece of data that is used to identify a session and a user. If the session identifier is compromised by an attacker, the session can be hijacked. By encrypting the session identifier, the identifier becomes more difficult for an attacker to hijack, decrypt, and use before the session has expired.'
  desc 'check', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Under "Management" section, double-click the "Configuration Editor" icon.

From the "Section:" drop-down list, select “system.webServer/asp".

Expand the "session" section.

Verify the "keepSessionIdSecure" is set to "True".

If the "keepSessionIdSecure" is not set to "True", this is a finding.'
  desc 'fix', %q(Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Under "Management" section, double-click the "Configuration Editor" icon.

From the "Section:" drop-down list, select 'system.webServer/asp".

Expand the "session" section.

Select "True" for the "keepSessionIdSecure" setting.

Select "Apply" from the "Actions" pane.)
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000439-WSR-000152'
  tag gid: 'V-214435'
  tag rid: 'SV-214435r879810_rule'
  tag stig_id: 'IISW-SV-000152'
  tag fix_id: 'F-15643r310354_fix'
  tag cci: ['CCI-002418']
  tag nist: ['SC-8']
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

  # keepSessionIdSecure = command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/asp/session" -Name keepSessionIdSecure | select -expandProperty value').stdout.strip == "True"

  describe 'IIS 8.5 web server session IDs must be sent to the client using TLS, this is performed by going to ' do
    subject { command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/asp/session" -Name keepSessionIdSecure | select -expandProperty value').stdout.strip }
    it 'The keepSessionIdSecure attribute should be set to True' do
      expect(subject).to cmp('true')
    end
  end
end
