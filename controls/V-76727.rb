control "V-76727" do
  title "The IIS 8.5 web server must limit the amount of time a cookie
  persists."
  desc  "ASP.NET provides a session state, which is available as the
  HttpSessionState class, as a method of storing session-specific information
  that is visible only within the session. ASP.NET session state identifies
  requests from the same browser during a limited time window as a session, and
  provides the ability to persist variable values for the duration of that
  session.

      Cookies associate session information with client information for the
  duration of a user’s connection to a website. Using cookies is a more efficient
  way to track session state than any of the methods that do not use cookies
  because cookies do not require any redirection.
  "
  impact 0.7
  tag "gtitle": "SRG-APP-000223-WSR-000145"
  tag "gid": "V-76727"
  tag "rid": "SV-91423r2_rule"
  tag "stig_id": "IISW-SV-000135"
  tag "fix_id": "F-83423r3_fix"
  tag "cci": ["CCI-001664"]
  tag "nist": ["SC-23 (3)", "Rev_4"]
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

  Under the \"ASP.NET\" section, select \"Session State\".

  Under \"Cookie Settings\", verify the \"Use Cookies\" mode is selected from the
  \"Mode:\" drop-down list.
  Under Time-out (in minutes), verify “20 minutes or less” is selected.

  If the \"Use Cookies” mode is selected and Time-out (in minutes) is configured
  for “20 minutes or less”, this is not a finding.
  "
  tag "fix": "Open the IIS 8.5 Manager.

  Click the IIS 8.5 web server name.

  Under the \"ASP.NET\" section, select \"Session State\".

  Under \"Cookie Settings\", select the \"Use Cookies\" mode from the \"Mode:\"
  drop-down list.

  Under “Time-out (in minutes), enter a value of “20 or less”.
  "
  cookie_setting = command('Get-WebConfigurationProperty -Filter system.web/sessionState -name * | select -expand cookieless').stdout.strip
  cookie_timeout = command('Get-WebConfigurationProperty -Filter system.web/sessionState -name * | select -expand timeout | select -expand Minutes').stdout.strip

  describe "The website session state cookie settings" do
    subject { cookie_setting }
    it {should cmp "UseCookies"}
  end
  describe "The IIS web server cookie timeout limit" do
    subject { 'cookie_timeout' }
    it {should be <= 20}
  end
end