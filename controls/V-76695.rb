{:id=>"V-76695",
 :title=>
  "The log information from the IIS 8.5 web server must be protected from unauthorized modification or deletion.",
 :desc=>
  "A major tool in exploring the website use, attempted use, unusual conditions, and problems are the access and error logs. In the event of a security incident, these logs can provide the SA and the web manager with valuable information. Failure to protect log files could enable an attacker to modify the log file data or falsify events to mask an attacker's activity.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000120-WSR-000070"},
   {:name=>"gid", :value=>"V-76695"},
   {:name=>"rid", :value=>"SV-91391r3_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000115"},
   {:name=>"fix_id", :value=>"F-83391r2_fix"},
   {:name=>"cci", :value=>["CCI-000162", "CCI-000163", "CCI-000164"]},
   {:name=>"nist", :value=>["AU-9", "AU-9", "AU-9", "Rev_4"]},
   {:name=>"false_negatives", :value=>nil},
   {:name=>"false_positives", :value=>nil},
   {:name=>"documentable", :value=>false},
   {:name=>"mitigations", :value=>nil},
   {:name=>"severity_override_guidance", :value=>false},
   {:name=>"potential_impacts", :value=>nil},
   {:name=>"third_party_tools", :value=>nil},
   {:name=>"mitigation_controls", :value=>nil},
   {:name=>"responsibility", :value=>nil},
   {:name=>"ia_controls", :value=>nil},
   {:name=>"check",
    :value=>
     "Query the SA to determine who has update access to the web server log files. \n" +
     "\n" +
     "The role of auditor and the role of SA should be distinctly separate. An individual functioning as an auditor should not also serve as an SA due to a conflict of interest. \n" +
     "\n" +
     "Only management authorized individuals with a privileged ID or group ID associated with an auditor role will have access permission to log files that are greater than read on web servers he or she has been authorized to audit. \n" +
     "\n" +
     "Only management authorized individuals with a privileged ID or group ID associated with either an SA or web administrator role may have read authority to log files for the web servers he or she has been authorized to administer. \n" +
     "\n" +
     "If an account with roles other than auditor has greater than read authority to the log files, this is a finding. \n" +
     "\n" +
     "This check does not apply to service account IDs utilized by automated services necessary to process, manage, and store log files. \n" +
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Click the \"Logging\" icon.\n" +
     "\n" +
     "Click the \"Browse\" button and navigate to the directory where the log files are stored.\n" +
     "\n" +
     "Right-click the log file name to review and click Properties.\n" +
     "\n" +
     "Click the \"Security\" tab.\n" +
     "\n" +
     "If an account associated with roles other than auditors, SAs, or web administrators have any access to log files, this is a finding.\n" +
     "\n" +
     "If an account with roles other than auditor has greater than read authority to the log files, this is a finding.\n" +
     "\n" +
     "This check does not apply to service account IDs utilized by automated services necessary to process, manage, and store log files.\n"},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Click the \"Logging\" icon.\n" +
     "\n" +
     "Click the \"Browse\" button and navigate to the directory where the log files are stored.\n" +
     "\n" +
     "Right-click the log file name to review and click “Properties”.\n" +
     "\n" +
     "Click the \"Security\" tab.\n" +
     "\n" +
     "Set the log file permissions for the appropriate group(s).\n" +
     "\n" +
     "Click \"OK\".\n" +
     "\n" +
     "Select \"Apply\" in the \"Actions\" pane.   \n"}]}
