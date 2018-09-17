{:id=>"V-76721",
 :title=>
  "The IIS 8.5 web server must separate the hosted applications from hosted web server management functionality.",
 :desc=>
  "The separation of user functionality from web server management can be accomplished by moving management functions to a separate IP address or port. To further separate the management functions, separate authentication methods and certificates should be used.\n" +
  "\n" +
  "By moving the management functionality, the possibility of accidental discovery of the management functions by non-privileged users during hosted application use is minimized.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000211-WSR-000129"},
   {:name=>"gid", :value=>"V-76721"},
   {:name=>"rid", :value=>"SV-91417r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000132"},
   {:name=>"fix_id", :value=>"F-83417r1_fix"},
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
     "Review the IIS 8.5 web server configuration with the System Administrator.\n" +
     "\n" +
     "Determine if the IIS 8.5 web server hosts any applications.\n" +
     "\n" +
     "If the IIS 8.5 web server does not host any applications, this is Not Applicable.\n" +
     "\n" +
     "If the IIS 8.5 web server hosts applications, review the application's management functionality and authentication methods with the System Administrator to determine if the management of the application is accomplished with the same functions and authentication methods as the web server management.\n" +
     "\n" +
     "If the IIS 8.5 web server management and the application's management functionality is not separated, this is a finding."},
   {:name=>"fix",
    :value=>
     "Develop a method to manage the hosted applications, either by moving its management functions off of the IIS 8.5 web server or by accessing the application's management via a uniquely assigned IP address."}]}
