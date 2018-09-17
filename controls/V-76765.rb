{:id=>"V-76765",
 :title=>
  "All accounts installed with the IIS 8.5 web server software and tools must have passwords assigned and default passwords changed.",
 :desc=>
  "During installation of the web server software, accounts are created for the web server to operate properly. The accounts installed can have either no password installed or a default password, which will be known and documented by the vendor and the user community.\n" +
  "\n" +
  "The first things an attacker will try when presented with a logon screen are the default user identifiers with default passwords. Installed applications may also install accounts with no password, making the logon even easier. Once the web server is installed, the passwords for any created accounts should be changed and documented. The new passwords must meet the requirements for all passwords, i.e., upper/lower characters, numbers, special characters, time until change, reuse policy, etc.\n" +
  "\n" +
  "Service accounts or system accounts that have no logon capability do not need to have passwords set or changed.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000516-WSR-000079"},
   {:name=>"gid", :value=>"V-76765"},
   {:name=>"rid", :value=>"SV-91461r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000156"},
   {:name=>"fix_id", :value=>"F-83461r1_fix"},
   {:name=>"cci", :value=>["CCI-000366"]},
   {:name=>"nist", :value=>["CM-6 b", "Rev_4"]},
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
     "Access the IIS 8.5 web server.\n" +
     "\n" +
     "Access Apps menu. Under Administrative Tools, select Computer Management.\n" +
     "\n" +
     "In left pane, expand \"Local Users and Groups\" and click on \"Users\".\n" +
     "\n" +
     "Review the local users listed in the middle pane. \n" +
     "\n" +
     "If any local accounts are present and are used by IIS 8.5 verify with System Administrator that default passwords have been changed.\n" +
     "\n" +
     "If passwords have not been changed from the default, this is a finding."},
   {:name=>"fix",
    :value=>
     "Access the IIS 8.5 web server.\n" +
     "\n" +
     "Access Apps menu. Under Administrative Tools, select Computer Management.\n" +
     "\n" +
     "In left pane, expand \"Local Users and Groups\" and click on \"Users\".\n" +
     "\n" +
     "Change passwords for any local accounts are present and are used by IIS 8.5 verify with System Administrator that default passwords have been changed.\n" +
     "\n" +
     "Develop an internal process for changing passwords on a regular basis."}]}
