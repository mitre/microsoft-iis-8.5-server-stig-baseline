{:id=>"V-76735",
 :title=>"The IIS 8.5 web server Indexing must only index web content.",
 :desc=>
  "The indexing service can be used to facilitate a search function for websites. Enabling indexing may facilitate a directory traversal exploit and reveal unwanted information to a malicious user. Indexing must be limited to web document directories only.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000266-WSR-000142"},
   {:name=>"gid", :value=>"V-76735"},
   {:name=>"rid", :value=>"SV-91431r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000139"},
   {:name=>"fix_id", :value=>"F-83431r1_fix"},
   {:name=>"cci", :value=>["CCI-001312"]},
   {:name=>"nist", :value=>["SI-11 a", "Rev_4"]},
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
     "Navigate to KEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\ContentIndex\\Catalogs\\.\n" +
     "\n" +
     "If this key exists then indexing is enabled; if the key does not exist then this check is Not Applicable.\n" +
     "\n" +
     "Review the Catalogs keys to determine if directories other than web document directories are being indexed. If so, this is a finding."},
   {:name=>"fix",
    :value=>
     "Run MMC.\n" +
     "\n" +
     "Add the Indexing Service snap-in.\n" +
     "\n" +
     "Edit the indexed directories to only include web document directories."}]}
