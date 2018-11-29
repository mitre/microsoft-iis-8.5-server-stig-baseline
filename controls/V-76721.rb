control 'V-76721' do
  title "The IIS 8.5 web server must separate the hosted applications from
  hosted web server management functionality."
  desc "The separation of user functionality from web server management can be
  accomplished by moving management functions to a separate IP address or port.
  To further separate the management functions, separate authentication methods
  and certificates should be used.

      By moving the management functionality, the possibility of accidental
  discovery of the management functions by non-privileged users during hosted
  application use is minimized.
  "
  impact 0.7
  tag "gtitle": 'SRG-APP-000211-WSR-000129'
  tag "gid": 'V-76721'
  tag "rid": 'SV-91417r1_rule'
  tag "stig_id": 'IISW-SV-000132'
  tag "fix_id": 'F-83417r1_fix'
  tag "cci": ['CCI-001082']
  tag "nist": ['SC-2', 'Rev_4']
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
  tag "check": "Review the IIS 8.5 web server configuration with the System
  Administrator.

  Determine if the IIS 8.5 web server hosts any applications.

  If the IIS 8.5 web server does not host any applications, this is Not
  Applicable.

  If the IIS 8.5 web server hosts applications, review the application's
  management functionality and authentication methods with the System
  Administrator to determine if the management of the application is accomplished
  with the same functions and authentication methods as the web server management.

  If the IIS 8.5 web server management and the application's management
  functionality is not separated, this is a finding."
  tag "fix": "Develop a method to manage the hosted applications, either by
  moving its management functions off of the IIS 8.5 web server or by accessing
  the application's management via a uniquely assigned IP address."
  describe 'Manual review of hosted applications and management procedure is required' do
    skip 'Manual review of hosted applications and management procedure is required'
  end
end
