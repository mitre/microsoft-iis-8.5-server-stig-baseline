control "V-76695" do
  title "The log information from the IIS 8.5 web server must be protected from
unauthorized modification or deletion."
  desc  "A major tool in exploring the website use, attempted use, unusual
conditions, and problems are the access and error logs. In the event of a
security incident, these logs can provide the SA and the web manager with
valuable information. Failure to protect log files could enable an attacker to
modify the log file data or falsify events to mask an attacker's activity."
  impact 0.7
  tag "gtitle": "SRG-APP-000120-WSR-000070"
  tag "gid": "V-76695"
  tag "rid": "SV-91391r3_rule"
  tag "stig_id": "IISW-SV-000115"
  tag "fix_id": "F-83391r2_fix"
  tag "cci": ["CCI-000162", "CCI-000163", "CCI-000164"]
  tag "nist": ["AU-9", "AU-9", "AU-9", "Rev_4"]
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
  tag "check": "Query the SA to determine who has update access to the web
server log files.

The role of auditor and the role of SA should be distinctly separate. An
individual functioning as an auditor should not also serve as an SA due to a
conflict of interest.

Only management authorized individuals with a privileged ID or group ID
associated with an auditor role will have access permission to log files that
are greater than read on web servers he or she has been authorized to audit.

Only management authorized individuals with a privileged ID or group ID
associated with either an SA or web administrator role may have read authority
to log files for the web servers he or she has been authorized to administer.

If an account with roles other than auditor has greater than read authority to
the log files, this is a finding.

This check does not apply to service account IDs utilized by automated services
necessary to process, manage, and store log files.
Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Click the \"Logging\" icon.

Click the \"Browse\" button and navigate to the directory where the log files
are stored.

Right-click the log file name to review and click Properties.

Click the \"Security\" tab.

If an account associated with roles other than auditors, SAs, or web
administrators have any access to log files, this is a finding.

If an account with roles other than auditor has greater than read authority to
the log files, this is a finding.

This check does not apply to service account IDs utilized by automated services
necessary to process, manage, and store log files.
"
  tag "fix": "Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Click the \"Logging\" icon.

Click the \"Browse\" button and navigate to the directory where the log files
are stored.

Right-click the log file name to review and click “Properties”.

Click the \"Security\" tab.

Set the log file permissions for the appropriate group(s).

Click \"OK\".

Select \"Apply\" in the \"Actions\" pane.
"
  describe windows_feature('Web-Server') do
    it{ should be_installed }
  end
  describe windows_feature('Web-WebServer') do
    it{ should be_installed }
  end
  describe windows_feature('Web-Common-Http') do
    it{ should be_installed }
  end
end

