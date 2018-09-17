{:id=>"V-76763",
 :title=>
  "The IIS 8.5 web server must install security-relevant software updates within the configured time period directed by an authoritative source (e.g., IAVM, CTOs, DTMs, and STIGs).",
 :desc=>
  "Several vulnerabilities are associated with older versions of web server software. As hot fixes and patches are issued, these solutions are included in the next version of the server software. Maintaining the web server at a current version makes the efforts of a malicious user more difficult.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000456-WSR-000187"},
   {:name=>"gid", :value=>"V-76763"},
   {:name=>"rid", :value=>"SV-91459r2_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000155"},
   {:name=>"fix_id", :value=>"F-83459r1_fix"},
   {:name=>"cci", :value=>["CCI-002605"]},
   {:name=>"nist", :value=>["SI-2 c", "Rev_4"]},
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
     "Determine the most recent patch level of the IIS 8.5 software, as posted on the Microsoft website.\n" +
     "\n" +
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click \"Help\", and select \"About Internet Information Services\".\n" +
     "\n" +
     "If the version is more than one version behind the most recent patch level, this is a finding.\n"},
   {:name=>"fix",
    :value=>
     "Install the current version of the web server software and maintain appropriate service packs and patches."}]}
