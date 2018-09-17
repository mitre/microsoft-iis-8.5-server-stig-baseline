{:id=>"V-76699",
 :title=>
  "The IIS 8.5 web server must not perform user management for hosted applications.",
 :desc=>
  "User management and authentication can be an essential part of any application hosted by the web server. Along with authenticating users, the user management function must perform several other tasks like password complexity, locking users after a configurable number of failed logons, and management of temporary and emergency accounts; and all of this must be done enterprise-wide.\n" +
  "\n" +
  "The web server contains a minimal user management function, but the web server user management function does not offer enterprise-wide user management, and user management is not the primary function of the web server. User management for the hosted applications should be done through a facility that is built for enterprise-wide user management, like LDAP and Active Directory.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000141-WSR-000015"},
   {:name=>"gid", :value=>"V-76699"},
   {:name=>"rid", :value=>"SV-91395r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000117"},
   {:name=>"fix_id", :value=>"F-83395r1_fix"},
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
     "Interview the System Administrator about the role of the IIS 8.5 web server.\n" +
     "\n" +
     "If the IIS 8.5 web server is hosting an application, have the SA provide supporting documentation on how the application's user management is accomplished outside of the IIS 8.5 web server.\n" +
     "\n" +
     "If the IIS 8.5 web server is not hosting an application, this is Not Applicable.\n" +
     "\n" +
     "If the IIS web server is performing user management for hosted applications, this is a finding.\n" +
     "\n" +
     "If the IIS 8.5 web server is hosting an application and the SA cannot provide supporting documentation on how the application's user management is accomplished outside of the IIS 8.5 web server, this is a finding."},
   {:name=>"fix",
    :value=>
     "Reconfigure any hosted applications on the IIS 8.5 web server to perform user management outside the IIS 8.5 web server.\n" +
     "\n" +
     "Document how the hosted application user management is accomplished."}]}
