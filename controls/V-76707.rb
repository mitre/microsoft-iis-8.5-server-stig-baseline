{:id=>"V-76707",
 :title=>
  "The accounts created by uninstalled features (i.e., tools, utilities, specific, etc.) must be deleted from the IIS 8.5 server.",
 :desc=>
  "When accounts used for web server features such as documentation, sample code, example applications, tutorials, utilities, and services are created even though the feature is not installed, they become an exploitable threat to a web server.\n" +
  "\n" +
  "These accounts become inactive, are not monitored through regular use, and passwords for the accounts are not created or updated. An attacker, through very little effort, can use these accounts to gain access to the web server and begin investigating ways to elevate the account privileges.\n" +
  "\n" +
  "The accounts used for web server features not installed must not be created and must be deleted when these features are uninstalled.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000141-WSR-000078"},
   {:name=>"gid", :value=>"V-76707"},
   {:name=>"rid", :value=>"SV-91403r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000121"},
   {:name=>"fix_id", :value=>"F-83403r1_fix"},
   {:name=>"cci", :value=>["CCI-000381"]},
   {:name=>"nist", :value=>["CM-7 a", "Rev_4"]},
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
     "Access “Apps” menu. Under “Administrative Tools”, select “Computer Management”.\n" +
     "\n" +
     "In left pane, expand \"Local Users and Groups\" and click on \"Users\".\n" +
     "\n" +
     "Review the local users listed in the middle pane.\n" +
     "\n" +
     "If any local accounts are present and were created by features which have been uninstalled or are not used, this is a finding."},
   {:name=>"fix",
    :value=>
     "Access the IIS 8.5 web server.\n" +
     "\n" +
     "Access “Apps” menu. Under “Administrative Tools”, select “Computer Management”.\n" +
     "\n" +
     "In left pane, expand \"Local Users and Groups\" and click on \"Users\".\n" +
     "\n" +
     "Delete any local accounts which were created by features which have been uninstalled or are not used."}]}
