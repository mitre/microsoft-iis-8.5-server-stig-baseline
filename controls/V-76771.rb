{:id=>"V-76771",
 :title=>
  "The IIS 8.5 web server must have a global authorization rule configured to restrict access.",
 :desc=>
  "Authorization rules can be configured at the server, website, folder (including Virtual Directories), or file level. It is recommended that URL Authorization be configured to only grant access to the necessary security principals. Configuring a global Authorization rule that restricts access ensures inheritance of the settings down through the hierarchy of web directories. This will ensure access to current and future content is only granted to the appropriate principals, mitigating risk of unauthorized access.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000516-WSR-000174"},
   {:name=>"gid", :value=>"V-76771"},
   {:name=>"rid", :value=>"SV-91467r2_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000159"},
   {:name=>"fix_id", :value=>"F-83467r2_fix"},
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
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Double-click the “Authorization Rules” icon.\n" +
     "\n" +
     "If any user other than “Administrator” is listed, this is a finding.\n"},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Double-click the “Authorization Rules” icon.\n" +
     "\n" +
     "Remove all users other than “Administrator”.   \n" +
     "\n"}]}
