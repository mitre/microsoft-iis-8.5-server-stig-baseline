{:id=>"V-76759",
 :title=>
  "An IIS 8.5 web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version.",
 :desc=>
  "Transport Layer Security (TLS) encryption is a required security setting for a private web server. Encryption of private information is essential to ensuring data confidentiality. If private information is not encrypted, it can be intercepted and easily read by an unauthorized party. A private web server must use a FIPS 140-2-approved TLS version, and all non-FIPS-approved SSL versions must be disabled.\n" +
  "\n" +
  "FIPS 140-2-approved TLS versions include TLS V1.1 or greater. NIST SP 800-52 specifies the preferred configurations for government systems.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000439-WSR-000156"},
   {:name=>"gid", :value=>"V-76759"},
   {:name=>"rid", :value=>"SV-91455r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000153"},
   {:name=>"fix_id", :value=>"F-83455r1_fix"},
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
     "Access the IIS 8.5 Web Server.\n" +
     "\n" +
     "Access an administrator command prompt and type \"regedit <enter>\" to access the server's registry.\n" +
     "\n" +
     "Navigate to:\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.1\\Server\n" +
     "\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.2\\Server\n" +
     "\n" +
     "Verify a REG_DWORD value of \"0\" for \"DisabledByDefault\"\n" +
     "\n" +
     "Navigate to:\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.0\\Server\n" +
     "\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\SSL 2.0\\Server\n" +
     "\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\SSL 3.0\\Server\n" +
     "\n" +
     "Verify a REG_DWORD value of \"1\" for \"DisabledByDefault\"\n" +
     "\n" +
     "If any of the respective registry paths are not existent or configured with the wrong value, this is a finding."},
   {:name=>"fix",
    :value=>
     "Access the IIS 8.5 Web Server.\n" +
     "\n" +
     "Access an administrator command prompt and type \"regedit <enter>\" to access the server's registry.\n" +
     "\n" +
     "Navigate to the following registry paths and configure the \"DisabledByDefault\" REG_DWORD with the appropriate values:\n" +
     "\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.1\\Server\n" +
     "\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.2\\Server \n" +
     "\n" +
     "With a REG_DWORD value of \"0\" for \"DisabledByDefault\"\n" +
     "\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.0\\Server\n" +
     "\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\SSL 2.0\\Server\n" +
     "\n" +
     "HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\SSL 3.0\\Server\n" +
     "\n" +
     "With a REG_DWORD value of \"1\" for \"DisabledByDefault\""}]}
