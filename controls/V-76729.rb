{:id=>"V-76729",
 :title=>
  "The IIS 8.5 web server must augment re-creation to a stable and known baseline.",
 :desc=>
  "Making certain that the web server has not been updated by an unauthorized user is always a concern. Adding patches, functions, and modules that are untested and not part of the baseline opens the possibility for security risks. The web server must offer, and not hinder, a method that allows for the quick and easy reinstallation of a verified and patched baseline to guarantee the production web server is up-to-date and has not been modified to add functionality or expose security risks.\n" +
  "\n" +
  "When the web server does not offer a method to roll back to a clean baseline, external methods, such as a baseline snapshot or virtualizing the web server, can be used.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000225-WSR-000074"},
   {:name=>"gid", :value=>"V-76729"},
   {:name=>"rid", :value=>"SV-91425r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000136"},
   {:name=>"fix_id", :value=>"F-83425r1_fix"},
   {:name=>"cci", :value=>["CCI-001190"]},
   {:name=>"nist", :value=>["SC-24", "Rev_4"]},
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
     "Interview the System Administrator for the IIS 8.5 web server.\n" +
     "\n" +
     "Ask for documentation on the disaster recovery methods tested and planned for the IIS 8.5 web server in the event of the necessity for rollback.\n" +
     "\n" +
     "If documentation for a disaster recovery has not been established, this is a finding."},
   {:name=>"fix",
    :value=>
     "Prepare documentation for disaster recovery methods for the IIS 8.5 web server in the event of the necessity for rollback.\n" +
     "\n" +
     "Document and test the disaster recovery methods designed."}]}
