control "V-76699" do
  title "The IIS 8.5 web server must not perform user management for hosted
applications."
  desc  "User management and authentication can be an essential part of any
application hosted by the web server. Along with authenticating users, the user
management function must perform several other tasks like password complexity,
locking users after a configurable number of failed logons, and management of
temporary and emergency accounts; and all of this must be done enterprise-wide.

    The web server contains a minimal user management function, but the web
server user management function does not offer enterprise-wide user management,
and user management is not the primary function of the web server. User
management for the hosted applications should be done through a facility that
is built for enterprise-wide user management, like LDAP and Active Directory.
  "
  impact 0.7
  tag "gtitle": "SRG-APP-000141-WSR-000015"
  tag "gid": "V-76699"
  tag "rid": "SV-91395r1_rule"
  tag "stig_id": "IISW-SV-000117"
  tag "fix_id": "F-83395r1_fix"
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
  tag "check": "Interview the System Administrator about the role of the IIS
8.5 web server.

If the IIS 8.5 web server is hosting an application, have the SA provide
supporting documentation on how the application's user management is
accomplished outside of the IIS 8.5 web server.

If the IIS 8.5 web server is not hosting an application, this is Not Applicable.

If the IIS web server is performing user management for hosted applications,
this is a finding.

If the IIS 8.5 web server is hosting an application and the SA cannot provide
supporting documentation on how the application's user management is
accomplished outside of the IIS 8.5 web server, this is a finding."
  tag "fix": "Reconfigure any hosted applications on the IIS 8.5 web server to
perform user management outside the IIS 8.5 web server.

Document how the hosted application user management is accomplished."
  describe windows_feature('Web-Server') do
    it{ should be_installed }
  end
  describe windows_feature('Web-WebServer') do
    it{ should be_installed }
  end
  describe windows_feature('Web-Common-Http') do
    it{ should be_installed }
  end
end

