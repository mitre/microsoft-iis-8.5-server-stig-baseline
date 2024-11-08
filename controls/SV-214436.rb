control 'SV-214436' do
  title 'An IIS 8.5 web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version.'
  desc 'Transport Layer Security (TLS) encryption is a required security setting for a private web server. Encryption of private information is essential to ensuring data confidentiality. If private information is not encrypted, it can be intercepted and easily read by an unauthorized party. A private web server must use a FIPS 140-2-approved TLS version, and all non-FIPS-approved SSL versions must be disabled.

NIST SP 800-52 specifies the preferred configurations for government systems.'
  desc 'check', 'Access the IIS 8.5 Web Server.

Navigate to:
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.2\\Server

Verify a REG_DWORD value of "0" for "DisabledByDefault".
Verify a REG_DWORD value of "1" for "Enabled".

Navigate to:
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.0\\Server
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.1\\Server
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\SSL 2.0\\Server
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\SSL 3.0\\Server

Verify a REG_DWORD value of "1" for "DisabledByDefault".
Verify a REG_DWORD value of "0" for "Enabled".

If any of the respective registry paths do not exist or are configured with the wrong value, this is a finding.'
  desc 'fix', 'Access the IIS 8.5 Web Server.

Navigate to:
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.2\\Server 

Create a REG_DWORD named "DisabledByDefault" with a value of "0".
Create a REG_DWORD named "Enabled" with a  value of "1".

Navigate to:
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.0\\Server
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\TLS 1.1\\Server
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\SSL 2.0\\Server
HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL\\Protocols\\SSL 3.0\\Server

For each protocol:
Create a REG_DWORD named "DisabledByDefault" with a value of "1".
Create a REG_DWORD named "Enabled" with a  value of "0".'
  impact 0.7
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000439-WSR-000156'
  tag gid: 'V-214436'
  tag rid: 'SV-214436r903078_rule'
  tag stig_id: 'IISW-SV-000153'
  tag fix_id: 'F-15644r903077_fix'
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

  tls1_1Disabled = registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client').DisabledByDefault == 0
  tls1_2Disabled = registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client').DisabledByDefault == 0
  tls1_0Disabled = registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client').DisabledByDefault == 1
  ssl2_0Disabled = registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client').DisabledByDefault == 1
  ssl3_0Disabled = registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client').DisabledByDefault == 1

  if registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client').exists?
    describe 'An IIS 8.5 web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version, TLS 1.1 should not be DisabledByDefault. (currently: TLS 1.1 ' + (tls1_1Disabled ? 'not DisabledByDefault' : 'DisabledByDefault') + " )\n" do
      subject { registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client').DisabledByDefault }
      it 'TLS 1.1 DisabledByDefault should eq 0' do
        expect(subject).to cmp('0')
      end
    end
  end

  if registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client').exists?
    describe 'An IIS 8.5 web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version, TLS 1.2 should not be DisabledByDefault. (currently: TLS 1.2 ' + (tls1_2Disabled ? 'not DisabledByDefault' : 'DisabledByDefault') + " )\n" do
      subject { registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client').DisabledByDefault }
      it 'TLS 1.2 DisabledByDefault should eq 0' do
        expect(subject).to cmp('0')
      end
    end
  end

  if registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client').exists?
    describe 'An IIS 8.5 web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version, TLS 1.0 should be DisabledByDefault. (currently: TLS 1.0 ' + (tls1_0Disabled ? 'DisabledByDefault' : 'not DisabledByDefault') + " )\n" do
      subject { registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client').DisabledByDefault }
      it 'TLS 1.0 DisabledByDefault should eq 1' do
        expect(subject).to cmp('1')
      end
    end
  end

  if registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client').exists?
    describe 'An IIS 8.5 web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version, SSL 2.0 should be DisabledByDefault. (currently: SSL 2.0 ' + (ssl2_0Disabled ? 'DisabledByDefault' : 'not DisabledByDefault') + " )\n" do
      subject { registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client').DisabledByDefault }
      it 'SSL 2.0 DisabledByDefault should eq 1' do
        expect(subject).to cmp('1')
      end
    end
  end
  
  if registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client').exists?
    describe 'An IIS 8.5 web server must maintain the confidentiality of controlled information during transmission through the use of an approved TLS version, SSL 3.0 should be DisabledByDefault. (currently: SSL 3.0 ' + (ssl3_0Disabled ? 'DisabledByDefault' : 'not DisabledByDefault') + " )\n" do
      subject { registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client').DisabledByDefault }
      it 'SSL 3.0 DisabledByDefault should eq 1' do
        expect(subject).to cmp('1')
      end
    end
  end  
end
