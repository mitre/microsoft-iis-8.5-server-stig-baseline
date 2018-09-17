{:id=>"V-76749",
 :title=>
  "Access to web administration tools must be restricted to the web manager and the web managers designees.",
 :desc=>
  "A web server can be modified through parameter modification, patch installation, upgrades to the web server or modules, and security parameter changes. With each of these changes, there is the potential for an adverse effect such as a DoS, web server instability, or hosted application instability.\n" +
  "\n" +
  "To limit changes to the web server and limit exposure to any adverse effects from the changes, files such as the web server application files, libraries, and configuration files must have permissions and ownership set properly to only allow privileged users access.\n" +
  "\n" +
  "The key web service administrative and configuration tools must only be accessible by the web server staff. All users granted this authority will be documented and approved by the ISSO. Access to the IIS Manager will be limited to authorized users and administrators.\n" +
  "\n",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000380-WSR-000072"},
   {:name=>"satisfies",
    :value=>
     ["SRG-APP-000380-WSR-000072",
      "SRG-APP-000435-WSR-000147",
      "SRG-APP-000033-WSR-000169"]},
   {:name=>"gid", :value=>"V-76749"},
   {:name=>"rid", :value=>"SV-91445r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000147"},
   {:name=>"fix_id", :value=>"F-83445r1_fix"},
   {:name=>"cci", :value=>["CCI-000213", "CCI-001813", "CCI-002385"]},
   {:name=>"nist", :value=>["AC-3", "CM-5 (1)", "SC-5", "Rev_4"]},
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
     "Right-click InetMgr.exe, then click “Properties” from the “Context” menu.\n" +
     "\n" +
     "Select the \"Security\" tab.\n" +
     "\n" +
     "Review the groups and user names.\n" +
     "\n" +
     "The following account may have Full control privileges:\n" +
     "\n" +
     "TrustedInstaller\n" +
     "Web Managers\n" +
     "Web Manager designees\n" +
     "\n" +
     "The following accounts may have read and execute, or read permissions:\n" +
     "\n" +
     "Non Web Manager Administrators\n" +
     "ALL APPLICATION PACKAGES (built-in security group)\n" +
     "SYSTEM\n" +
     "Users\n" +
     "\n" +
     "Specific users may be granted read and execute and read permissions.\n" +
     "\n" +
     "Compare the local documentation authorizing specific users, against the users observed when reviewing the groups and users.\n" +
     "\n" +
     "If any other access is observed, this is a finding."},
   {:name=>"fix",
    :value=>
     "Restrict access to the web administration tool to only the web manager and the web manager’s designees."}]}
