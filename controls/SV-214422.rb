control 'SV-214422' do
  title 'The production IIS 8.5 web server must utilize SHA2 encryption for the Machine Key.'
  desc 'The Machine Key element of the ASP.NET web.config specifies the algorithm and keys that ASP.NET will use for encryption. The Machine Key feature can be managed to specify hashing and encryption settings for application services such as view state, forms authentication, membership and roles, and anonymous identification. Ensuring a strong encryption method can mitigate the risk of data tampering in crucial functional areas such as forms authentication cookies, or view state.'
  desc 'check', 'If .NET is not installed, this is Not Applicable.

Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the "Machine Key" icon in the website Home Pane.

Verify "HMACSHA256" or stronger encryption is selected for the Validation method and "Auto" is selected for the Encryption method.

If "HMACSHA256" or stronger encryption is not selected for the Validation method and/or "Auto" is not selected for the Encryption method, this is a finding.'
  desc 'fix', 'If .NET is not installed, this is Not Applicable.

Open the IIS 8.5 Manager.

Click the IIS 8.5 web server name.

Double-click the "Machine Key" icon in the web server Home Pane.

Set the Validation method to "HMACSHA256" or stronger.
Set the Encryption method to "Auto".

Click "Apply" in the "Actions" pane.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000231-WSR-000144'
  tag gid: 'V-214422'
  tag rid: 'SV-214422r879642_rule'
  tag stig_id: 'IISW-SV-000137'
  tag fix_id: 'F-15630r505361_fix'
  tag cci: ['CCI-001199']
  tag nist: ['SC-28']
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

  encryption_method = command('Get-WebConfigurationProperty -Filter system.web/machineKey -name * | select -expand decryption').stdout.strip

  validation_method = command('Get-WebConfigurationProperty -Filter system.web/machineKey -name * | select -expand validation').stdout.strip

  describe 'The IIS web server encryption method' do
    subject { encryption_method }
    it { should cmp 'Auto' }
  end

  describe.one do
    describe 'The IIS web server machine key validation method' do
      subject { validation_method }
      it { should cmp 'HMACSHA256' }
    end

    describe 'The IIS web server machine key validation method' do
      subject { validation_method }
      it { should cmp 'HMACSHA384' }
    end

    describe 'The IIS web server machine key validation method' do
      subject { validation_method }
      it { should cmp 'HMACSHA512' }
    end
  end
end
