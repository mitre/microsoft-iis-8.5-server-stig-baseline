{:id=>"V-76761",
 :title=>
  "A web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version.",
 :desc=>
  "Transport Layer Security (TLS) is a required transmission protocol for a web server hosting controlled information. The use of TLS provides confidentiality of data in transit between the web server and client. FIPS 140-2-approved TLS versions must be enabled and non-FIPS-approved SSL versions must be disabled.\n" +
  "\n" +
  "NIST SP 800-52 defines the approved TLS versions for government applications.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000439-WSR-000156"},
   {:name=>"gid", :value=>"V-76761"},
   {:name=>"rid", :value=>"SV-91457r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000154"},
   {:name=>"fix_id", :value=>"F-83457r1_fix"},
   {:name=>"cci", :value=>["CCI-002418"]},
   {:name=>"nist", :value=>["SC-8", "Rev_4"]},
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
     "Review the web server documentation and deployed configuration to determine which version of TLS is being used.\n" +
     "\n" +
     "If the TLS version is not TLS 1.1 or higher, according to NIST SP 800-52, or if non-FIPS-approved algorithms are enabled, this is a finding."},
   {:name=>"fix",
    :value=>
     "Configure the web server to use an approved TLS version according to NIST SP 800-52 and to disable all non-approved versions."}]}
