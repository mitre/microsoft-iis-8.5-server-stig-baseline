{:id=>"V-76681",
 :title=>
  "The enhanced logging for the IIS 8.5 web server must be enabled and capture all user and web server events.",
 :desc=>
  "Log files are a critical component to the successful management of an IS used within the DoD. By generating log files with useful information web administrators can leverage them in the event of a disaster, malicious attack, or other site specific needs.\n" +
  "\n" +
  "Ascertaining the correct order of the events that occurred is important during forensic analysis. Events that appear harmless by themselves might be flagged as a potential threat when properly viewed in sequence. By also establishing the event date and time, an event can be properly viewed with an enterprise tool to fully see a possible threat in its entirety.\n" +
  "\n" +
  "Without sufficient information establishing when the log event occurred, investigation into the cause of event is severely hindered. Log record content that may be necessary to satisfy the requirement of this control includes, but is not limited to, time stamps, source and destination IP addresses, user/process identifiers, event descriptions, application-specific events, success/fail indications, file names involved, access control, or flow control rules invoked.\n" +
  "\n",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000092-WSR-000055"},
   {:name=>"satisfies",
    :value=>
     ["SRG-APP-000092-WSR-000055",
      "SRG-APP-000093-WSR-000053",
      "SRG-APP-000095-WSR-000056",
      "SRG-APP-000096-WSR-000057",
      "SRG-APP-000097-WSR-000058",
      "SRG-APP-000097-WSR-000059"]},
   {:name=>"gid", :value=>"V-76681"},
   {:name=>"rid", :value=>"SV-91377r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000102"},
   {:name=>"fix_id", :value=>"F-83377r1_fix"},
   {:name=>"cci",
    :value=>
     ["CCI-000130",
      "CCI-000131",
      "CCI-000132",
      "CCI-000133",
      "CCI-001462",
      "CCI-001464"]},
   {:name=>"nist",
    :value=>
     ["AU-3", "AU-3", "AU-3", "AU-3", "AU-14 (2)", "AU-14 (1)", "Rev_4"]},
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
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Click the \"Logging\" icon.\n" +
     "\n" +
     "Under Format select \"W3C\".\n" +
     "\n" +
     "Click \"Select Fields\", verify at a minimum the following fields are checked: Date, Time, Client IP Address, User Name, Method, URI Query, Protocol Status, and Referrer.\n" +
     "\n" +
     "If not, this is a finding."},
   {:name=>"fix",
    :value=>
     "Open the IIS 8.5 Manager.\n" +
     "\n" +
     "Click the IIS 8.5 web server name.\n" +
     "\n" +
     "Click the \"Logging\" icon.\n" +
     "\n" +
     "Under Format select \"W3C\".\n" +
     "\n" +
     "Select the following fields: Date, Time, Client IP Address, User Name, Method, URI Query, Protocol Status, and Referrer.\n" +
     "\n" +
     "Under the \"Actions\" pane, click \"Apply\"."}]}
