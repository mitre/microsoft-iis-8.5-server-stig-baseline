{:id=>"V-76703",
 :title=>
  "The IIS 8.5 web server must not be both a website server and a proxy server.",
 :desc=>
  "A web server should be primarily a web server or a proxy server but not both, for the same reasons that other multi-use servers are not recommended. Scanning for web servers that will also proxy requests into an otherwise protected network is a very common attack making the attack anonymous.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000141-WSR-000076"},
   {:name=>"gid", :value=>"V-76703"},
   {:name=>"rid", :value=>"SV-91399r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000119"},
   {:name=>"fix_id", :value=>"F-83399r1_fix"},
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
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Under the \"Connections\" pane on the left side of the management console, select the IIS 8.5 web server.\n" +
     "\n" +
     "If, under the IIS installed features, \"Application Request Routing Cache\" is not present, this is not a finding.\n" +
     "\n" +
     "If, under the IIS installed features, \"Application Request Routing Cache\" is present, double-click the icon to open the feature.\n" +
     "\n" +
     "From the right \"Actions\" pane, under \"Proxy\", select \"Server Proxy Settings...\".\n" +
     "\n" +
     "In the \"Application Request Routing\" settings window, verify whether \"Enable proxy\" is selected.\n" +
     "\n" +
     "If “Enable proxy\" is selected under the \"Application Request Routing\" settings, this is a finding."},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Under the \"Connections\" pane on the left side of the management console, select the IIS 8.5 web server.\n" +
     "\n" +
     "Under the IIS installed features, \"Application Request Routing Cache\" is present, double-click the icon to open the feature.\n" +
     "\n" +
     "From the right \"Actions\" pane, under \"Proxy\", select \"Server Proxy Settings...\".\n" +
     "\n" +
     "In the \"Application Request Routing\" settings window, remove the check from the \"Enable proxy\" check box.\n" +
     "\n" +
     "Click \"Apply\" in the \"Actions\" pane."}]}
