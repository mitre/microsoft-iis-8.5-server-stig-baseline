{:id=>"V-76697",
 :title=>
  "The log data and records from the IIS 8.5 web server must be backed up onto a different system or media.",
 :desc=>
  "Protection of log data includes assuring log data is not accidentally lost or deleted. Backing up log records to an unrelated system or onto separate media than the system the web server is actually running on helps to assure that, in the event of a catastrophic system failure, the log records will be retained.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000125-WSR-000071"},
   {:name=>"gid", :value=>"V-76697"},
   {:name=>"rid", :value=>"SV-91393r2_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000116"},
   {:name=>"fix_id", :value=>"F-83393r1_fix"},
   {:name=>"cci", :value=>["CCI-001348"]},
   {:name=>"nist", :value=>["AU-9 (2)", "Rev_4"]},
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
     "The IIS 8.5 web server and website log files should be backed up by the system backup.\n" +
     "\n" +
     "To determine if log files are backed up by the system backup, determine the location of the web server log files and each website's log files.\n" +
     "\n" +
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 server name.\n" +
     "\n" +
     "Click the \"Logging\" icon.\n" +
     "\n" +
     "Under \"Log File\" >> \"Directory\" obtain the path of the log file.\n" +
     "\n" +
     "Once all locations are known, consult with the System Administrator to review the server's backup procedure and policy.\n" +
     "\n" +
     "Verify the paths of all log files are part of the system backup.\n" +
     "Verify log files are backed up to an unrelated system or onto separate media than the system the web server is running on.\n" +
     "\n" +
     "If the paths of all log files are not part of the system backup and/or not backed up to a separate media, this is a finding.\n"},
   {:name=>"fix",
    :value=>
     "Configure system backups to include the directory paths of all IIS 8.5 web server and website log files."}]}
