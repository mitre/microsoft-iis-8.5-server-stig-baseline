{:id=>"V-76731",
 :title=>
  "The production IIS 8.5 web server must utilize SHA2 encryption for the Machine Key.",
 :desc=>
  "The Machine Key element of the ASP.NET web.config specifies the algorithm and keys that ASP.NET will use for encryption. The Machine Key feature can be managed to specify hashing and encryption settings for application services such as view state, forms authentication, membership and roles, and anonymous identification. Ensuring a strong encryption method can mitigate the risk of data tampering in crucial functional areas such as forms authentication cookies, or view state.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000231-WSR-000144"},
   {:name=>"gid", :value=>"V-76731"},
   {:name=>"rid", :value=>"SV-91427r2_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000137"},
   {:name=>"fix_id", :value=>"F-83427r2_fix"},
   {:name=>"cci", :value=>["CCI-001199"]},
   {:name=>"nist", :value=>["SC-28", "Rev_4"]},
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
     "Double-click the \"Machine Key\" icon in the website Home Pane.\n" +
     "\n" +
     "Verify \"HMACSHA256\" or stronger encryption is selected for the Validation method and \"Auto\" is selected for the Encryption method.\n" +
     "\n" +
     "If \"HMACSHA256\" or stronger encryption is not selected for the Validation method and/or \"Auto\" is not selected for the Encryption method, this is a finding.\n"},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Double-click the \"Machine Key\" icon in the web server Home Pane.\n" +
     "\n" +
     "Set the Validation method to \"HMACSHA256\" or stronger.\n" +
     "Set the Encryption method to \"Auto\".\n" +
     "\n" +
     "Click \"Apply\" in the \"Actions\" pane.   \n"}]}
