{:id=>"V-76717",
 :title=>
  "Java software installed on a production IIS 8.5 web server must be limited to .class files and the Java Virtual Machine.",
 :desc=>
  "Mobile code in hosted applications allows the developer to add functionality and displays to hosted applications that are fluid, as opposed to a static web page. The data presentation becomes more appealing to the user, is easier to analyze, and navigation through the hosted application and data is much less complicated.\n" +
  "\n" +
  "Some mobile code technologies in use in today's applications are: Java, JavaScript, ActiveX, PDF, Postscript, Shockwave movies, Flash animations, and VBScript. The DoD has created policies that define the usage of mobile code on DoD systems. The usage restrictions and implementation guidance apply to both the selection and use of mobile code installed on organizational servers and mobile code downloaded and executed on individual workstations.\n" +
  "\n" +
  "Source code for a Java program is, many times, stored in files with either .java or .jpp file extensions. From the .java and .jpp files the Java compiler produces a binary file with an extension of .class. The .java or .jpp file could therefore reveal sensitive information regarding an application's logic and permissions to resources on the server.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000206-WSR-000128"},
   {:name=>"gid", :value=>"V-76717"},
   {:name=>"rid", :value=>"SV-91413r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000130"},
   {:name=>"fix_id", :value=>"F-83413r1_fix"},
   {:name=>"cci", :value=>["CCI-001166"]},
   {:name=>"nist", :value=>["SC-18 (1)", "Rev_4"]},
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
     "Search the system for files with either .java or .jpp extensions.\n" +
     "\n" +
     "If files with .java or .jpp extensions are found, this is a finding."},
   {:name=>"fix",
    :value=>
     "Remove all files from the web server with both .java and .jpp extensions."}]}
