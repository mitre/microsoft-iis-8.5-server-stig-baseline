{:id=>"V-76739",
 :title=>
  "Remote access to the IIS 8.5 web server must follow access policy or work in conjunction with enterprise tools designed to enforce policy requirements.",
 :desc=>
  "Logging into a web server remotely using an unencrypted protocol or service when performing updates and maintenance is a major risk. Data, such as user account, is transmitted in plaintext and can easily be compromised. When performing remote administrative tasks, a protocol or service that encrypts the communication channel must be used.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000315-WSR-000003"},
   {:name=>"gid", :value=>"V-76739"},
   {:name=>"rid", :value=>"SV-91435r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000141"},
   {:name=>"fix_id", :value=>"F-83435r1_fix"},
   {:name=>"cci", :value=>["CCI-002314"]},
   {:name=>"nist", :value=>["AC-17 (1)", "Rev_4"]},
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
     "If web administration is performed at the console, this check is Not Applicable.\n" +
     "\n" +
     "If web administration is performed remotely the following checks will apply.\n" +
     "\n" +
     "If administration of the server is performed remotely, it will only be performed securely by system administrators.\n" +
     "\n" +
     "If website administration or web application administration has been delegated, those users will be documented and approved by the ISSO.\n" +
     "\n" +
     "Remote administration must be in compliance with any requirements contained within the Windows Server STIGs, and any applicable network STIGs.\n" +
     "\n" +
     "Remote administration of any kind will be restricted to documented and authorized personnel.\n" +
     "\n" +
     "All users performing remote administration must be authenticated.\n" +
     "\n" +
     "All remote sessions will be encrypted and they will utilize FIPS 140-2-approved protocols.\n" +
     "\n" +
     "FIPS 140-2-approved TLS versions include TLS V1.1 or greater.\n" +
     "\n" +
     "Review with site management how remote administration, if applicable, is configured on the website.\n" +
     "\n" +
     "If remote management meets the criteria listed above, this is not a finding.\n" +
     "\n" +
     "If remote management is utilized and does not meet the criteria listed above, this is a finding."},
   {:name=>"fix",
    :value=>
     "Ensure the web server administration is only performed over a secure path."}]}
