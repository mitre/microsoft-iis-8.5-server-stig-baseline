control 'SV-214408' do
  title 'The IIS 8.5 web server must only contain functions necessary for operation.'
  desc 'A web server can provide many features, services, and processes. Some of these may be deemed unnecessary or too unsecure to run on a production DoD system.

The web server must provide the capability to disable, uninstall, or deactivate functionality and services that are deemed to be non-essential to the web server mission or can adversely impact server performance.'
  desc 'check', 'Click on “Start”.

Open Control Panel.

Click on “Programs”.

Click on “Programs and Features”.

Review the installed programs, if any programs are installed other than those required for the IIS 8.5 web services, this is a finding.

Note: If additional software is needed supporting documentation must be signed by the ISSO.'
  desc 'fix', 'Remove all unapproved programs and roles from the production IIS 8.5 web server.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000141-WSR-000075'
  tag gid: 'V-214408'
  tag rid: 'SV-214408r879587_rule'
  tag stig_id: 'IISW-SV-000118'
  tag fix_id: 'F-15616r310273_fix'
  tag cci: ['CCI-000381']
  tag nist: ['CM-7 a']
  tag 'false_negatives'
  tag 'false_positives'
  tag 'documentable'
  tag 'mitigations'
  tag 'severity_override_guidance'
  tag 'potential_impacts'
  tag 'third_party_tools'
  tag 'mitigation_controls'
  tag 'responsibility'
  tag 'ia_controls'
  tag 'check'
  tag 'fix'

  describe "The IIS 8.5 web server must only contain functions necessary for
  operation." do
    skip 'Manual review required for this control'
  end
end
