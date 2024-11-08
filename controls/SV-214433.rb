control 'SV-214433' do
  title 'The Internet Printing Protocol (IPP) must be disabled on the IIS 8.5 web server.'
  desc 'The use of Internet Printing Protocol (IPP) on an IIS web server allows client’s access to shared printers. This privileged access could allow remote code execution by increasing the web servers attack surface. Additionally, since IPP does not support SSL, it is considered a risk and will not be deployed.'
  desc 'check', 'If the Print Services role and the Internet Printing role are not installed, this check is Not Applicable.

Navigate to the following directory:

%windir%\\web\\printers

If this folder exists, this is a finding.

Determine whether Internet Printing is enabled:

Click “Start”, then click “Administrative Tools”, and then click “Server Manager”.

Expand the roles node, then right-click “Print Services”, and then select “Remove Roles Services”.

If the Internet Printing option is enabled, this is a finding.'
  desc 'fix', 'Click “Start”, then click “Administrative Tools”, and then click “Server Manager”.

Expand the roles node, then right-click “Print Services”, and then select “Remove Roles Services”.

If the Internet Printing option is checked, clear the check box, click “Next”, and then click “Remove” to complete the wizard.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000383-WSR-000175'
  tag gid: 'V-214433'
  tag rid: 'SV-214433r879756_rule'
  tag stig_id: 'IISW-SV-000149'
  tag fix_id: 'F-15641r310348_fix'
  tag cci: ['CCI-001762']
  tag nist: ['CM-7 (1) (b)']
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

  describe directory('%windir%\web\printers') do
    it { should_not exist }
  end

  describe windows_feature('Print-Services') do
    it { should_not be_installed }
  end
end
