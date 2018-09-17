{:id=>"V-76701",
 :title=>
  "The IIS 8.5 web server must only contain functions necessary for operation.",
 :desc=>
  "A web server can provide many features, services, and processes. Some of these may be deemed unnecessary or too unsecure to run on a production DoD system.\n" +
  "\n" +
  "The web server must provide the capability to disable, uninstall, or deactivate functionality and services that are deemed to be non-essential to the web server mission or can adversely impact server performance.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000141-WSR-000075"},
   {:name=>"gid", :value=>"V-76701"},
   {:name=>"rid", :value=>"SV-91397r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000118"},
   {:name=>"fix_id", :value=>"F-83397r1_fix"},
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
     "Click on “Start”.\n" +
     "\n" +
     "Open Control Panel.\n" +
     "\n" +
     "Click on “Programs”.\n" +
     "\n" +
     "Click on “Programs and Features”.\n" +
     "\n" +
     "Review the installed programs, if any programs are installed other than those required for the IIS 8.5 web services, this is a finding.\n" +
     "\n" +
     "Note: If additional software is needed supporting documentation must be signed by the ISSO."},
   {:name=>"fix",
    :value=>
     "Remove all unapproved programs and roles from the production IIS 8.5 web server."}]}
