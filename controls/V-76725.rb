{:id=>"V-76725",
 :title=>"The IIS 8.5 web server must use cookies to track session state.",
 :desc=>
  "Cookies are used to exchange data between the web server and the client. Cookies, such as a session cookie, may contain session information and user credentials used to maintain a persistent connection between the user and the hosted application since HTTP/HTTPS is a stateless protocol.\n" +
  "\n" +
  "Cookies associate session information with client information for the duration of a user’s connection to a website. Using cookies is a more efficient way to track session state than any of the methods that do not use cookies because cookies do not require any redirection.\n",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000223-WSR-000011"},
   {:name=>"gid", :value=>"V-76725"},
   {:name=>"rid", :value=>"SV-91421r3_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000134"},
   {:name=>"fix_id", :value=>"F-83421r3_fix"},
   {:name=>"cci", :value=>["CCI-001185", "CCI-001664"]},
   {:name=>"nist", :value=>["SC-23 (1)", "SC-23 (3)", "Rev_4"]},
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
     "Under \"ASP.Net\", double-click on the \"Session State\" icon.\n" +
     "\n" +
     "Under \"Cookie Settings\", verify the \"Mode\" has \"Use Cookies\" selected from the drop-down list.\n" +
     "\n" +
     "If the \"Cookie Settings\" \"Mode\" is not set to \"Use Cookies\", this is a finding.\n"},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Under \"ASP.Net\", double-click on the \"Session State\" icon.\n" +
     "\n" +
     "Under \"Cookie Settings\", select \"Use Cookies” from the \"Mode\" drop-down list.\n" +
     "\n" +
     "Click \"Apply\" in the \"Actions\" pane. \n"}]}
