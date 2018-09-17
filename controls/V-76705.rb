{:id=>"V-76705",
 :title=>
  "All IIS 8.5 web server sample code, example applications, and tutorials must be removed from a production IIS 8.5 server.",
 :desc=>
  "Web server documentation, sample code, example applications, and tutorials may be an exploitable threat to a web server. A production web server may only contain components that are operationally necessary (i.e., compiled code, scripts, web content, etc.). Delete all directories containing samples and any scripts used to execute the samples.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000141-WSR-000077"},
   {:name=>"gid", :value=>"V-76705"},
   {:name=>"rid", :value=>"SV-91401r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000120"},
   {:name=>"fix_id", :value=>"F-83401r1_fix"},
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
     "Navigate to the following folders:\n" +
     "\n" +
     "inetpub\\\n" +
     "Program Files\\Common Files\\System\\msadc\n" +
     "Program Files (x86)\\Common Files\\System\\msadc\n" +
     "\n" +
     "If the folder or sub-folders contain any executable sample code, example applications, or tutorials which are not explicitly used by a production website, this is a finding."},
   {:name=>"fix",
    :value=>
     "Remove any executable sample code, example applications, or tutorials which are not explicitly used by a production website."}]}
