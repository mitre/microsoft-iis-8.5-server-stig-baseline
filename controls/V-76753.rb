{:id=>"V-76753",
 :title=>
  "The Internet Printing Protocol (IPP) must be disabled on the IIS 8.5 web server.",
 :desc=>
  "The use of Internet Printing Protocol (IPP) on an IIS web server allows client’s access to shared printers. This privileged access could allow remote code execution by increasing the web servers attack surface. Additionally, since IPP does not support SSL, it is considered a risk and will not be deployed.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000383-WSR-000175"},
   {:name=>"gid", :value=>"V-76753"},
   {:name=>"rid", :value=>"SV-91449r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000149"},
   {:name=>"fix_id", :value=>"F-83449r1_fix"},
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
     "If the Print Services role and the Internet Printing role are not installed, this check is Not Applicable.\n" +
     "\n" +
     "Navigate to the following directory:\n" +
     "\n" +
     "%windir%\\web\\printers\n" +
     "\n" +
     "If this folder exists, this is a finding.\n" +
     "\n" +
     "Determine whether Internet Printing is enabled:\n" +
     "\n" +
     "Click “Start”, then click “Administrative Tools”, and then click “Server Manager”.\n" +
     "\n" +
     "Expand the roles node, then right-click “Print Services”, and then select “Remove Roles Services”.\n" +
     "\n" +
     "If the Internet Printing option is enabled, this is a finding."},
   {:name=>"fix",
    :value=>
     "Click “Start”, then click “Administrative Tools”, and then click “Server Manager”.\n" +
     "\n" +
     "Expand the roles node, then right-click “Print Services”, and then select “Remove Roles Services”.\n" +
     "\n" +
     "If the Internet Printing option is checked, clear the check box, click “Next”, and then click “Remove” to complete the wizard."}]}
