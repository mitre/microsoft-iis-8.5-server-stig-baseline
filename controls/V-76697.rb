control 'V-76697' do
  title "The log data and records from the IIS 8.5 web server must be backed up
  onto a different system or media."
  desc "Protection of log data includes assuring log data is not accidentally
  lost or deleted. Backing up log records to an unrelated system or onto separate
  media than the system the web server is actually running on helps to assure
  that, in the event of a catastrophic system failure, the log records will be
  retained."
  impact 0.7
  tag "gtitle": 'SRG-APP-000125-WSR-000071'
  tag "gid": 'V-76697'
  tag "rid": 'SV-91393r2_rule'
  tag "stig_id": 'IISW-SV-000116'
  tag "fix_id": 'F-83393r1_fix'
  tag "cci": ['CCI-001348']
  tag "nist": ['AU-9 (2)', 'Rev_4']
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
  tag "check": "The IIS 8.5 web server and website log files should be backed
  up by the system backup.

  To determine if log files are backed up by the system backup, determine the
  location of the web server log files and each website's log files.

  Open the IIS 8.5 Manager.

  Click the IIS 8.5 server name.

  Click the \"Logging\" icon.

  Under \"Log File\" >> \"Directory\" obtain the path of the log file.

  Once all locations are known, consult with the System Administrator to review
  the server's backup procedure and policy.

  Verify the paths of all log files are part of the system backup.
  Verify log files are backed up to an unrelated system or onto separate media
  than the system the web server is running on.

  If the paths of all log files are not part of the system backup and/or not
  backed up to a separate media, this is a finding.
  "
  tag "fix": "Configure system backups to include the directory paths of all
  IIS 8.5 web server and website log files."
  describe 'Manual review of web server is required.' do
    skip 'Manual review of web server is required'
  end
end
