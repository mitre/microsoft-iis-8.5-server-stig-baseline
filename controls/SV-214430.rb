control 'SV-214430' do
  title 'The IIS 8.5 web server must use a logging mechanism that is configured to allocate log record storage capacity large enough to accommodate the logging requirements of the IIS 8.5 web server.'
  desc 'In order to make certain that the logging mechanism used by the web server has sufficient storage capacity in which to write the logs, the logging mechanism needs to be able to allocate log record storage capacity.

The task of allocating log record storage capacity is usually performed during initial installation of the logging mechanism. The system administrator will usually coordinate the allocation of physical drive space with the web server administrator along with the physical location of the partition and disk. Refer to NIST SP 800-92 for specific requirements on log rotation and storage dependent on the impact of the web server.'
  desc 'check', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Under "IIS" double-click on the "Logging" icon.

In the "Logging" configuration box, determine the "Directory:" to which the "W3C" logging is being written.

Confirm with the System Administrator that the designated log path is of sufficient size to maintain the logging.

Under "Log File Rollover", verify the "Do not create new log files" is not selected.

Verify a schedule is configured to rollover log files on a regular basis.

Consult with the System Administrator to determine if there is a documented process for moving the log files off of the IIS 8.5 web server to another logging device.

If the designated logging path device is not of sufficient space to maintain all log files and there is not a schedule to rollover files on a regular basis, this is a finding.'
  desc 'fix', 'Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Under "IIS" double-click on the "Logging" icon.

If necessary, in the "Logging" configuration box, re-designate a log path to a location able to house the logs.

Under "Log File Rollover", de-select the "Do not create new log files" setting.

Configure a schedule to rollover log files on a regular basis.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000357-WSR-000150'
  tag gid: 'V-214430'
  tag rid: 'SV-214430r879730_rule'
  tag stig_id: 'IISW-SV-000145'
  tag fix_id: 'F-15638r310339_fix'
  tag cci: ['CCI-001849']
  tag nist: ['AU-4']
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

  log_directory = attribute('log_directory')
  get_log_directory = command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.ApplicationHost/log" -Name centralW3CLogFile | select -expandProperty directory').stdout.strip
  log_period = command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.ApplicationHost/log" -Name centralW3CLogFile | select -expandProperty period').stdout.strip

  describe 'The IIS log directory' do
    subject { get_log_directory }
    it { should cmp log_directory.to_s }
  end

  describe "Manually verify the 'Do not create new log files' is not selected on the IIS web server" do
    skip "Manually verify the 'Do not create new log files' is not selected on the IIS web server"
  end

  describe 'The websites log file rollover period' do
    subject { log_period }
    it { should cmp 'Daily' }
  end 
end
