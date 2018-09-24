control "V-76703" do
  title "The IIS 8.5 web server must not be both a website server and a proxy
server."
  desc  "A web server should be primarily a web server or a proxy server but
not both, for the same reasons that other multi-use servers are not
recommended. Scanning for web servers that will also proxy requests into an
otherwise protected network is a very common attack making the attack
anonymous."
  impact 0.7
  tag "gtitle": "SRG-APP-000141-WSR-000076"
  tag "gid": "V-76703"
  tag "rid": "SV-91399r1_rule"
  tag "stig_id": "IISW-SV-000119"
  tag "fix_id": "F-83399r1_fix"
  tag "cci": ["CCI-000381"]
  tag "nist": ["CM-7 a", "Rev_4"]
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "Open the IIS 8.5 Manager.

Under the \"Connections\" pane on the left side of the management console,
select the IIS 8.5 web server.

If, under the IIS installed features, \"Application Request Routing Cache\" is
not present, this is not a finding.

If, under the IIS installed features, \"Application Request Routing Cache\" is
present, double-click the icon to open the feature.

From the right \"Actions\" pane, under \"Proxy\", select \"Server Proxy
Settings...\".

In the \"Application Request Routing\" settings window, verify whether \"Enable
proxy\" is selected.

If “Enable proxy\" is selected under the \"Application Request Routing\"
settings, this is a finding."
  tag "fix": "Open the IIS 8.5 Manager.

Under the \"Connections\" pane on the left side of the management console,
select the IIS 8.5 web server.

Under the IIS installed features, \"Application Request Routing Cache\" is
present, double-click the icon to open the feature.

From the right \"Actions\" pane, under \"Proxy\", select \"Server Proxy
Settings...\".

In the \"Application Request Routing\" settings window, remove the check from
the \"Enable proxy\" check box.

Click \"Apply\" in the \"Actions\" pane."

proxy_enabled = 'True'

  is_application_request_routing_proxy_checkbox_enabled = command('Get-WebConfigurationProperty -pspath "MACHINE/WEBROOT/APPHOST" -filter "system.webServer/proxy" -name "enabled" | select -ExpandProperty Value').stdout.strip
  if (is_application_request_routing_proxy_checkbox_enabled == 'False' || is_application_request_routing_proxy_checkbox_enabled == '')
    proxy_enabled = 'False'
  end
 
 if proxy_enabled == 'True'
   describe windows_feature('Web-Server') do
    it{ should be_installed }
   end
   describe windows_feature('Web-WebServer') do
    it{ should be_installed }
   end
   describe windows_feature('Web-Common-Http') do
    it{ should be_installed }
   end
 else
   describe "#{proxy_enabled}" do
    it { should cmp 'False' }
   end
 end




end

