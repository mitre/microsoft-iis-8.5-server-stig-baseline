control "V-76725" do
  title "The IIS 8.5 web server must use cookies to track session state."
  desc  "Cookies are used to exchange data between the web server and the
  client. Cookies, such as a session cookie, may contain session information and
  user credentials used to maintain a persistent connection between the user and
  the hosted application since HTTP/HTTPS is a stateless protocol.

    Cookies associate session information with client information for the
  duration of a user’s connection to a website. Using cookies is a more efficient
  way to track session state than any of the methods that do not use cookies
  because cookies do not require any redirection.
  "
  impact 0.7
  tag "gtitle": "SRG-APP-000223-WSR-000011"
  tag "gid": "V-76725"
  tag "rid": "SV-91421r3_rule"
  tag "stig_id": "IISW-SV-000134"
  tag "fix_id": "F-83421r3_fix"
  tag "cci": ["CCI-001185", "CCI-001664"]
  tag "nist": ["SC-23 (1)", "SC-23 (3)", "Rev_4"]
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

  Click the IIS 8.5 web server name.

  Under \"ASP.Net\", double-click on the \"Session State\" icon.

  Under \"Cookie Settings\", verify the \"Mode\" has \"Use Cookies\" selected
  from the drop-down list.

  If the \"Cookie Settings\" \"Mode\" is not set to \"Use Cookies\", this is a
  finding.
  "
  tag "fix": "Open the IIS 8.5 Manager.

  Click the IIS 8.5 web server name.

  Under \"ASP.Net\", double-click on the \"Session State\" icon.

  Under \"Cookie Settings\", select \"Use Cookies” from the \"Mode\" drop-down
  list.

  Click \"Apply\" in the \"Actions\" pane.
  "
  describe command('Get-WebConfigurationProperty -Filter system.web/sessionState -name * | select -expand cookieless').stdout.strip do
    it {should cmp "UseCookies"}
  end
end
