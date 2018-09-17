{:id=>"V-76755",
 :title=>
  "The IIS 8.5 web server must be tuned to handle the operational requirements of the hosted application.",
 :desc=>
  "A Denial of Service (DoS) can occur when the web server is so overwhelmed that it can no longer respond to additional requests. A web server not properly tuned may become overwhelmed and cause a DoS condition even with expected traffic from users. To avoid a DoS, the web server must be tuned to handle the expected traffic for the hosted applications.",
 :impact=>0.7,
 :tests=>[],
 :tags=>
  [{:name=>"gtitle", :value=>"SRG-APP-000435-WSR-000148"},
   {:name=>"gid", :value=>"V-76755"},
   {:name=>"rid", :value=>"SV-91451r1_rule"},
   {:name=>"stig_id", :value=>"IISW-SV-000151"},
   {:name=>"fix_id", :value=>"F-83451r1_fix"},
   {:name=>"cci", :value=>["CCI-002385"]},
   {:name=>"nist", :value=>["SC-5", "Rev_4"]},
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
     "If the IIS 8.5 web server is not hosting any applications, this is Not Applicable.\n" +
     "\n" +
     "If the IIS 8.5 web server is hosting applications, consult with the System Administrator to determine risk analysis performed when application was written and deployed to the IIS 8.5 web server.\n" +
     "\n" +
     "Obtain documentation on the configuration.\n" +
     "\n" +
     "Verify, at a minimum, the following tuning settings in the registry.\n" +
     "\n" +
     "Access the IIS 8.5 web server registry.\n" +
     "\n" +
     "Verify the following keys are present and configured. The required setting depends upon the requirements of the application. \n" +
     "\n" +
     "Recommended settings are not provided as these settings have to be explicitly configured to show a conscientious tuning has been made.\n" +
     "\n" +
     "Navigate to HKLM\\SYSTEM\\CurrentControlSet\\Services\\HTTP\\Parameters\\\n" +
     "\"URIEnableCache\"\n" +
     "\"UriMaxUriBytes\"\n" +
     "\"UriScavengerPeriod\"\n" +
     "\n" +
     "If explicit settings are not configured for \"URIEnableCache\", \"UriMaxUriBytes\" and \"UriScavengerPeriod\", this is a finding."},
   {:name=>"fix",
    :value=>
     "Access the IIS 8.5 web server registry.\n" +
     "\n" +
     "Verify the following keys are present and configured. The required setting depends upon the requirements of the application. These settings have to be explicitly configured to show a conscientious tuning has been made.\n" +
     "\n" +
     "Navigate to HKLM\\SYSTEM\\CurrentControlSet\\Services\\HTTP\\Parameters\\\n" +
     "\n" +
     "Configure the following registry keys to levels to accommodate the hosted applications.\n" +
     "\n" +
     "\"URIEnableCache\"\n" +
     "\"UriMaxUriBytes\"\n" +
     "\"UriScavengerPeriod\""}]}
