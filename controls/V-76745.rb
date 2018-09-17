{:id=>"V-76745",
 :title=>
  "IIS 8.5 web server system files must conform to minimum file permission requirements.",
 :desc=>
  "This check verifies the key web server system configuration files are owned by the SA or the web administrator controlled account. These same files that control the configuration of the web server, and thus its behavior, must also be accessible by the account running the web service. If these files are altered by a malicious user, the web server would no longer be under the control of its managers and owners; properties in the web server configuration could be altered to compromise the entire server platform.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000340-WSR-000029"},
   {:name=>"gid", :value=>"V-76745"},
   {:name=>"rid", :value=>"SV-91441r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000144"},
   {:name=>"fix_id", :value=>"F-83441r1_fix"},
   {:name=>"cci", :value=>["CCI-002235"]},
   {:name=>"nist", :value=>["AC-6 (10)", "Rev_4"]},
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
     "Open Explorer and navigate to the inetpub directory.\n" +
     "\n" +
     "Right-click inetpub and select “Properties”.\n" +
     "\n" +
     "Click the \"Security\" tab.\n" +
     "\n" +
     "Verify the permissions for the following users; if the permissions are less restrictive, this is a finding.\n" +
     "\n" +
     "System: Full control\n" +
     "Administrators: Full control\n" +
     "TrustedInstaller: Full control\n" +
     "ALL APPLICATION PACKAGES (built-in security group): Read and execute\n" +
     "Users: Read and execute, list folder contents\n" +
     "Creator/Owner: Special permissions to subkeys"},
   {:name=>"fix",
    :value=>
     "Open Explorer and navigate to the inetpub directory.\n" +
     "\n" +
     "Right-click inetpub and select “Properties”.\n" +
     "\n" +
     "Click the \"Security\" tab.\n" +
     "\n" +
     "Set the following permissions: \n" +
     "\n" +
     "SYSTEM: Full control\n" +
     "Administrators: Full control\n" +
     "TrustedInstaller: Full control\n" +
     "ALL APPLICATION PACKAGES (built-in security group): Read and execute\n" +
     "Users: Read and execute, list folder contents\n" +
     "Creator/Owner: special permissions to subkeys"}]}
