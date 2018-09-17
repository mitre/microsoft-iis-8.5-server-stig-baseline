{:id=>"V-76715",
 :title=>
  "The IIS 8.5 web server must perform RFC 5280-compliant certification path validation.",
 :desc=>
  "This check verifies the server certificate is actually a DoD-issued certificate used by the organization being reviewed. This is used to verify the authenticity of the website to the user. If the certificate is not issued by the DoD or if the certificate has expired, then there is no assurance the use of the certificate is valid. The entire purpose of using a certificate is, therefore, compromised.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000175-WSR-000095"},
   {:name=>"gid", :value=>"V-76715"},
   {:name=>"rid", :value=>"SV-91411r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000129"},
   {:name=>"fix_id", :value=>"F-83411r1_fix"},
   {:name=>"cci", :value=>["CCI-000185"]},
   {:name=>"nist", :value=>["IA-5 (2) (a)", "Rev_4"]},
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
     "Double-click the \"Server Certificate\" icon.\n" +
     "\n" +
     "Double-click each certificate and verify the certificate path is to a DoD root CA.\n" +
     "\n" +
     "If not, this is a finding."},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Double-click the \"Server Certificate\" icon.\n" +
     "\n" +
     "Import a valid DoD certificate and remove any non-DoD certificates."}]}
