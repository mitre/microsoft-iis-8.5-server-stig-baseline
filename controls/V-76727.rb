{:id=>"V-76727",
 :title=>
  "The IIS 8.5 web server must limit the amount of time a cookie persists.",
 :desc=>
  "ASP.NET provides a session state, which is available as the HttpSessionState class, as a method of storing session-specific information that is visible only within the session. ASP.NET session state identifies requests from the same browser during a limited time window as a session, and provides the ability to persist variable values for the duration of that session.\n" +
  "\n" +
  "Cookies associate session information with client information for the duration of a user’s connection to a website. Using cookies is a more efficient way to track session state than any of the methods that do not use cookies because cookies do not require any redirection.\n",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000223-WSR-000145"},
   {:name=>"gid", :value=>"V-76727"},
   {:name=>"rid", :value=>"SV-91423r2_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000135"},
   {:name=>"fix_id", :value=>"F-83423r3_fix"},
   {:name=>"cci", :value=>["CCI-001664"]},
   {:name=>"nist", :value=>["SC-23 (3)", "Rev_4"]},
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
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Under the \"ASP.NET\" section, select \"Session State\".\n" +
     "\n" +
     "Under \"Cookie Settings\", verify the \"Use Cookies\" mode is selected from the \"Mode:\" drop-down list.\n" +
     "Under Time-out (in minutes), verify “20 minutes or less” is selected.\n" +
     "\n" +
     "If the \"Use Cookies” mode is selected and Time-out (in minutes) is configured for “20 minutes or less”, this is not a finding.\n"},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Under the \"ASP.NET\" section, select \"Session State\".\n" +
     "\n" +
     "Under \"Cookie Settings\", select the \"Use Cookies\" mode from the \"Mode:\" drop-down list.\n" +
     "\n" +
     "Under “Time-out (in minutes), enter a value of “20 or less”.\n"}]}
