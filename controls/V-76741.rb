{:id=>"V-76741",
 :title=>
  "The IIS 8.5 web server must restrict inbound connections from nonsecure zones.",
 :desc=>
  "Remote access to the web server is any access that communicates through an external, non-organization-controlled network. Remote access can be used to access hosted applications or to perform management functions.\n" +
  "\n" +
  "A web server can be accessed remotely and must be capable of restricting access from what the DoD defines as nonsecure zones. Nonsecure zones are defined as any IP, subnet, or region that is defined as a threat to the organization. The nonsecure zones must be defined for public web servers logically located in a DMZ, as well as private web servers with perimeter protection devices. By restricting access from nonsecure zones, through internal web server access list, the web server can stop or slow denial of service (DoS) attacks on the web server.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000315-WSR-000004"},
   {:name=>"gid", :value=>"V-76741"},
   {:name=>"rid", :value=>"SV-91437r2_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000142"},
   {:name=>"fix_id", :value=>"F-83437r1_fix"},
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
     "Note:  This requirement applies to the Web Management Service. If the Web Management Service is not installed, this is Not Applicable.\n" +
     "\n" +
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Under \"Management\", double-click \"Management Service\".\n" +
     "\n" +
     "If \"Enable remote connections\" is not selected, this is Not Applicable.\n" +
     "\n" +
     "If \"Enable remote connections\" is selected, review the entries under \"IP Address Restrictions\".\n" +
     "\n" +
     "Verify only known, secure IP ranges are configured as \"Allow\".\n" +
     "\n" +
     "If \"IP Address Restrictions\" are not configured or IP ranges configured to be \"Allow\" are not restrictive enough to prevent connections from nonsecure zones, this is a finding."},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Under \"Management\", double-click \"Management Service\".\n" +
     "\n" +
     "Stop the Web Management Service under the \"Actions\" pane.\n" +
     "\n" +
     "Configure only known, secure IP ranges are configured as \"Allow\".\n" +
     "\n" +
     "Select \"Apply\" in \"Actions\" pane.\n" +
     "\n" +
     "Restart the Web Management Service under the \"Actions\" pane."}]}
