{:id=>"V-76769",
 :title=>
  "Unspecified file extensions on a production IIS 8.5 web server must be removed.",
 :desc=>
  "By allowing unspecified file extensions to execute, the web servers attack surface is significantly increased. This increased risk can be reduced by only allowing specific ISAPI extensions or CGI extensions to run on the web server.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000516-WSR-000174"},
   {:name=>"gid", :value=>"V-76769"},
   {:name=>"rid", :value=>"SV-91465r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000158"},
   {:name=>"fix_id", :value=>"F-83465r1_fix"},
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
     "Double-click the \"ISAPI and CGI restrictions\" icon.\n" +
     "\n" +
     "Click “Edit Feature Settings\".\n" +
     "\n" +
     "Verify the \"Allow unspecified CGI modules\" and the \"Allow unspecified ISAPI modules\" check boxes are NOT checked.\n" +
     "\n" +
     "If either or both of the \"Allow unspecified CGI modules\" and the \"Allow unspecified ISAPI modules\" check boxes are checked, this is a finding."},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Double-click the \"ISAPI and CGI restrictions\" icon.\n" +
     "\n" +
     "Click \"Edit Feature Settings\".\n" +
     "\n" +
     "Remove the check from the \"Allow unspecified CGI modules\" and the \"Allow unspecified ISAPI modules\" check boxes.\n" +
     "\n" +
     "Click OK."}]}
