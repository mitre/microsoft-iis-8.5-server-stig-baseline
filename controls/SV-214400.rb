control 'SV-214400' do
  title 'The enhanced logging for the IIS 8.5 web server must be enabled and capture all user and web server events.'
  desc 'Log files are a critical component to the successful management of an IS used within the DoD. By generating log files with useful information web administrators can leverage them in the event of a disaster, malicious attack, or other site specific needs.

Ascertaining the correct order of the events that occurred is important during forensic analysis. Events that appear harmless by themselves might be flagged as a potential threat when properly viewed in sequence. By also establishing the event date and time, an event can be properly viewed with an enterprise tool to fully see a possible threat in its entirety.

Without sufficient information establishing when the log event occurred, investigation into the cause of event is severely hindered. Log record content that may be necessary to satisfy the requirement of this control includes, but is not limited to, time stamps, source and destination IP addresses, user/process identifiers, event descriptions, application-specific events, success/fail indications, file names involved, access control, or flow control rules invoked.'
  desc 'check', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Click the "Logging" icon.

Under Format select "W3C".

Click "Select Fields", verify at a minimum the following fields are checked: Date, Time, Client IP Address, User Name, Method, URI Query, Protocol Status, and Referrer.

If not, this is a finding.'
  desc 'fix', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Click the "Logging" icon.

Under Format select "W3C".

Select the following fields: Date, Time, Client IP Address, User Name, Method, URI Query, Protocol Status, and Referrer.

Under the "Actions" pane, click "Apply".'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000092-WSR-000055'
  tag satisfies: ['SRG-APP-000092-WSR-000055', 'SRG-APP-000093-WSR-000053', 'SRG-APP-000095-WSR-000056', 'SRG-APP-000096-WSR-000057', 'SRG-APP-000097-WSR-000058', 'SRG-APP-000097-WSR-000059']
  tag gid: 'V-214400'
  tag rid: 'SV-214400r879562_rule'
  tag stig_id: 'IISW-SV-000102'
  tag fix_id: 'F-15608r310249_fix'
  tag cci: ['CCI-000130', 'CCI-000131', 'CCI-000132', 'CCI-000133', 'CCI-001462', 'CCI-001464']
  tag nist: ['AU-3', 'AU-14 (2)', 'AU-14 (1)', 'AU-3 a', 'AU-3 b', 'AU-3 c', 'AU-3 d']
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

  is_file_logging_enabled_string = command('Get-WebConfiguration system.applicationHost/log/centralW3CLogFile | select -expand enabled').stdout.strip
  is_file_logging_enabled = is_file_logging_enabled_string == 'False' || is_file_logging_enabled_string == '' ? false : true
  fields = attribute('log_fileds')
  logging_fields = command('Get-WebConfiguration system.applicationHost/log/centralW3CLogFile | select -expand logExtFileFlags').stdout.strip.split(',')

  describe 'Is Web Server Central W3C Logging Configuration Enabled' do
    subject { is_file_logging_enabled }
    it { should be true }
  end

  fields.each do |myField|
    describe myField.to_s do
      it { should be_in logging_fields }
    end
  end
end
