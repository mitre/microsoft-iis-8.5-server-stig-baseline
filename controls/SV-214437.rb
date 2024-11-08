control 'SV-214437' do
  title 'A web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version.'
  desc 'Transport Layer Security (TLS) is a required transmission protocol for a web server hosting controlled information. The use of TLS provides confidentiality of data in transit between the web server and client. FIPS 140-2-approved TLS versions must be enabled and non-FIPS-approved SSL versions must be disabled.

NIST SP 800-52 defines the approved TLS versions for government applications.'
  desc 'check', 'Review the web server documentation and deployed configuration to determine which version of TLS is being used.

If the TLS version is not TLS 1.2 or higher, according to NIST SP 800-52, or if non-FIPS-approved algorithms are enabled, this is a finding.'
  desc 'fix', 'Configure the web server to use an approved TLS version according to NIST SP 800-52 and to disable all non-approved versions.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000439-WSR-000156'
  tag gid: 'V-214437'
  tag rid: 'SV-214437r879810_rule'
  tag stig_id: 'IISW-SV-000154'
  tag fix_id: 'F-15645r505376_fix'
  tag cci: ['CCI-002418']
  tag nist: ['SC-8']
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

  tls1_1Enabled = registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client').Enabled
  tls1_2Enabled = registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client').Enabled

  describe.one do
    describe 'The web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version such as TLS 1.1. (currently: ' + (tls1_1Enabled ? 'TLS 1.1 enabled' : 'Other enabled') + " )\n" do
      subject { tls1_1Enabled }
      it 'TLS 1.1 should be enabled' do
        expect(subject).to cmp('1')
      end
    end
    describe 'The web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version such as TLS 1.2. (currently: ' + (tls1_2Enabled ? 'TLS 1.2 enabled' : 'Other enabled') + " )\n" do
      subject { tls1_2Enabled }
      it 'TLS 1.2 should be enabled' do
        expect(subject).to cmp('1')
      end
    end
  end
end
