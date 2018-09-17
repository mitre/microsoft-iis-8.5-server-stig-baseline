{:id=>"V-76751",
 :title=>
  "The IIS 8.5 web server must not be running on a system providing any other role.",
 :desc=>
  "Web servers provide numerous processes, features, and functionalities that utilize TCP/IP ports. Some of these processes may be deemed unnecessary or too unsecure to run on a production system.\n" +
  "\n" +
  "The web server must provide the capability to disable or deactivate network-related services that are deemed to be non-essential to the server mission, are too unsecure, or are prohibited by the PPSM CAL and vulnerability assessments.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000383-WSR-000175"},
   {:name=>"gid", :value=>"V-76751"},
   {:name=>"rid", :value=>"SV-91447r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000148"},
   {:name=>"fix_id", :value=>"F-83447r1_fix"},
   {:name=>"cci", :value=>["CCI-001762"]},
   {:name=>"nist", :value=>["CM-7 (1) (b)", "Rev_4"]},
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
     "Review programs installed on the OS.\n" +
     "\n" +
     "Open Control Panel.\n" +
     "\n" +
     "Open Programs and Features.\n" +
     "\n" +
     "The following programs may be installed without any additional documentation:\n" +
     "\n" +
     "Administration Pack for IIS\n" +
     "IIS Search Engine Optimization Toolkit\n" +
     "Microsoft .NET Framework version 3.5 SP1 or greater\n" +
     "Microsoft Web Platform Installer version 3.x or greater\n" +
     "Virtual Machine Additions\n" +
     "\n" +
     "Review the installed programs, if any programs are installed other than those listed above, this is a finding.\n" +
     "\n" +
     "Note: If additional software is needed and has supporting documentation signed by the ISSO, this is not a finding."},
   {:name=>"fix",
    :value=>
     "Remove all unapproved programs and roles from the production web server."}]}
