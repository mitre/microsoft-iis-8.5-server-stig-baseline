{:id=>"V-76719",
 :title=>
  "IIS 8.5 Web server accounts accessing the directory tree, the shell, or other operating system functions and utilities must only be administrative accounts.",
 :desc=>
  "As a rule, accounts on a web server are to be kept to a minimum. Only administrators, web managers, developers, auditors, and web authors require accounts on the machine hosting the web server. This is in addition to the anonymous web user account. The resources to which these accounts have access must also be closely monitored and controlled. Only the SA needs access to all the system’s capabilities, while the web administrator and associated staff require access and control of the web content and web server configuration files. The anonymous web user account must not have access to system resources as that account could then control the server.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000211-WSR-000030"},
   {:name=>"gid", :value=>"V-76719"},
   {:name=>"rid", :value=>"SV-91415r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000131"},
   {:name=>"fix_id", :value=>"F-83415r1_fix"},
   {:name=>"cci", :value=>["CCI-001082"]},
   {:name=>"nist", :value=>["SC-2", "Rev_4"]},
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
     "Obtain a list of the user accounts with access to the system, including all local and domain accounts. \n" +
     "\n" +
     "Review the privileges to the web server for each account.\n" +
     "\n" +
     "Verify with the system administrator or the ISSO that all privileged accounts are mission essential and documented.\n" +
     "\n" +
     "Verify with the system administrator or the ISSO that all non-administrator access to shell scripts and operating system functions are mission essential and documented.\n" +
     "\n" +
     "If undocumented privileged accounts are found, this is a finding.\n" +
     "\n" +
     "If undocumented non-administrator access to shell scripts and operating system functions are found, this is a finding."},
   {:name=>"fix",
    :value=>
     "Ensure non-administrators are not allowed access to the directory tree, the shell, or other operating system functions and utilities.\n" +
     "\n" +
     "All non-administrator access to shell scripts and operating system functions must be mission essential and documented."}]}
