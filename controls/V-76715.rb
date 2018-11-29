control 'V-76715' do
  title "The IIS 8.5 web server must perform RFC 5280-compliant certification
  path validation."
  desc "This check verifies the server certificate is actually a DoD-issued
  certificate used by the organization being reviewed. This is used to verify the
  authenticity of the website to the user. If the certificate is not issued by
  the DoD or if the certificate has expired, then there is no assurance the use
  of the certificate is valid. The entire purpose of using a certificate is,
  therefore, compromised."
  impact 0.7
  tag "gtitle": 'SRG-APP-000175-WSR-000095'
  tag "gid": 'V-76715'
  tag "rid": 'SV-91411r1_rule'
  tag "stig_id": 'IISW-SV-000129'
  tag "fix_id": 'F-83411r1_fix'
  tag "cci": ['CCI-000185']
  tag "nist": ['IA-5 (2) (a)', 'Rev_4']
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

  Double-click the \"Server Certificate\" icon.

  Double-click each certificate and verify the certificate path is to a DoD root
  CA.

  If not, this is a finding."
  tag "fix": "Open the IIS 8.5 Manager.

  Click the IIS 8.5 web server name.

  Double-click the \"Server Certificate\" icon.

  Import a valid DoD certificate and remove any non-DoD certificates."

  CertList_Expired = command('Import-Module -Name WebAdministration;
  Get-ChildItem IIS:SSLBindings `
  | select -expand store `
  | ForEach-Object -Process `
  {
  	$DaysToExpiration = 0
  	$expirationDate = (Get-Date).AddDays($DaysToExpiration)
  	$cert = Get-ChildItem CERT:LocalMachine/$_
  	if (($cert.EnhancedKeyUsageList | select -expand FriendlyName) -eq "Server Authentication") {
  		if ($cert.Subject -match "=") {$subject = $cert.Subject.split("=")[1]} else {$subject = $cert.Subject}
  		if ($cert.NotAfter -lt $expirationDate) { Write-Output  "$subject  EXPIRED"}
  	}
  }').stdout.strip.split("\r\n")

  CertList_Issuer = command('Import-Module -Name WebAdministration;
  Get-ChildItem IIS:SSLBindings `
  | select -expand store `
  | ForEach-Object -Process `
  {
  	$DaysToExpiration = 0
  	$expirationDate = (Get-Date).AddDays($DaysToExpiration)
  	$cert = Get-ChildItem CERT:LocalMachine/$_
  	if (($cert.EnhancedKeyUsageList | select -expand FriendlyName) -eq "Server Authentication") {
      $expirationDate = $cert.NotAfter
  		if ($cert.Subject -match "=") {$subject = $cert.Subject.split("=")[1]} else {$subject = $cert.Subject}
      if ($cert.Issuer -match "C=") {$issuer = $cert.Issuer -match  ".*\s+C=(\S+)"; $issuer = $matches[1]} else {$issuer = "unknown"}
  		 Write-Output  "$subject issued by $issuer will expire on  $expirationDate "
  	}
  }').stdout.strip.split("\r\n")

  CertList_NotExpired_Issuer = command('Import-Module -Name WebAdministration;
Get-ChildItem IIS:SSLBindings `
| select -expand store `
| ForEach-Object -Process `
{
	$DaysToExpiration = 0
	$expirationDate = (Get-Date).AddDays($DaysToExpiration)
	$cert = Get-ChildItem CERT:LocalMachine/$_
	if (($cert.EnhancedKeyUsageList | select -expand FriendlyName) -eq "Server Authentication") {
    $expirationDate = $cert.NotAfter
		if ($cert.Subject -match "=") {$subject = $cert.Subject.split("=")[1]} else {$subject = $cert.Subject}
    if ($cert.Issuer -match "C=") {$issuer = $cert.Issuer -match  ".*\s+C=(\S+)"; $issuer = $matches[1]} else {$issuer = "unknown"}
		 Write-Output  "$subject issued by $issuer will expire on  $expirationDate "
	}
}').stdout.strip.split("\r\n")

  CertList_Expired.each do |cert|
    describe cert do
      it { should_not match /\S+\s+EXPIRED/ }
    end
  end

  CertList_NotExpired_Issuer.each do |cert|
    describe cert do
      it { should match /US/ }
    end
  end

  unless CertList_NotExpired_Issuer.empty?
    describe 'Number of Certificates used by IIS   ' do
      skip 'Could not find any SSL Certificates used by IIS on this system '
    end
  end
end
