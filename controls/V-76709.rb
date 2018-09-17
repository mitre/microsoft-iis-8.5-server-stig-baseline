{:id=>"V-76709",
 :title=>
  "The IIS 8.5 web server must be reviewed on a regular basis to remove any Operating System features, utility programs, plug-ins, and modules not necessary for operation.",
 :desc=>
  "Just as running unneeded services and protocols is a danger to the web server at the lower levels of the OSI model, running unneeded utilities and programs is also a danger at the application layer of the OSI model. Office suites, development tools, and graphical editors are examples of such programs that are troublesome.\n" +
  "\n" +
  "Individual productivity tools have no legitimate place or use on an enterprise, production web server and they are also prone to their own security risks. The web server installation process must provide options allowing the installer to choose which utility programs, services, and modules are to be installed or removed. By having a process for installation and removal, the web server is guaranteed to be in a more stable and secure state than if these services and programs were installed and removed manually.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000141-WSR-000080"},
   {:name=>"gid", :value=>"V-76709"},
   {:name=>"rid", :value=>"SV-91405r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000123"},
   {:name=>"fix_id", :value=>"F-83405r1_fix"},
   {:name=>"cci", :value=>["CCI-000381"]},
   {:name=>"nist", :value=>["CM-7 a", "Rev_4"]},
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
     "Consult with the System Administrator and review all of the IIS 8.5 and Operating System features installed.\n" +
     "\n" +
     "Determine if any are installed which are no longer necessary for operation.\n" +
     "\n" +
     "If any utility programs, features or modules are installed which are not necessary for operation, this is a finding.\n" +
     "\n" +
     "If any unnecessary Operating System features are installed, this is a finding."},
   {:name=>"fix",
    :value=>
     "Remove all utility programs, Operating System features or modules which are installed but are not necessary for web server operation."}]}
