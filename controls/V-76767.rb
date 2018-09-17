{:id=>"V-76767",
 :title=>
  "The File System Object component must be disabled on the IIS 8.5 web server.",
 :desc=>
  "Some Component Object Model (COM) components are not required for most applications and should be removed if possible. Most notably, consider disabling the File System Object component; however, this will also remove the Dictionary object. Be aware some programs may require this component (e.g., Commerce Server), so it is highly recommended this be tested completely before implementing on the production web server.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000516-WSR-000174"},
   {:name=>"gid", :value=>"V-76767"},
   {:name=>"rid", :value=>"SV-91463r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000157"},
   {:name=>"fix_id", :value=>"F-83463r1_fix"},
   {:name=>"cci", :value=>["CCI-000366"]},
   {:name=>"nist", :value=>["CM-6 b", "Rev_4"]},
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
     "Locate the HKEY_CLASSES_ROOT\\CLSID\\{0D43FE01-F093-11CF-8940-00A0C9054228} registry key.\n" +
     "\n" +
     "If the key exist, the File System Object component is enabled.\n" +
     "\n" +
     "If the File System Object component is enabled and is not required for operations, this is a finding.\n" +
     "\n" +
     "Note: If the File System Object component is required for operations and has supporting documentation signed by the ISSO, this is not a finding."},
   {:name=>"fix",
    :value=>
     "Run the following command, with administrator privileges, to unregister the File System Object: regsvr32 scrrun.dll /u."}]}
