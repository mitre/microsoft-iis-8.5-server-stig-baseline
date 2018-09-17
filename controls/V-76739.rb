control "V-76739" do
  title "Remote access to the IIS 8.5 web server must follow access policy or
work in conjunction with enterprise tools designed to enforce policy
requirements."
  desc  "Logging into a web server remotely using an unencrypted protocol or
service when performing updates and maintenance is a major risk. Data, such as
user account, is transmitted in plaintext and can easily be compromised. When
performing remote administrative tasks, a protocol or service that encrypts the
communication channel must be used."
  impact 0.7
  tag "gtitle": "SRG-APP-000315-WSR-000003"
  tag "gid": "V-76739"
  tag "rid": "SV-91435r1_rule"
  tag "stig_id": "IISW-SV-000141"
  tag "fix_id": "F-83435r1_fix"
  tag "cci": ["CCI-002314"]
  tag "nist": ["AC-17 (1)", "Rev_4"]
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
  tag "check": "If web administration is performed at the console, this check
is Not Applicable.

If web administration is performed remotely the following checks will apply.

If administration of the server is performed remotely, it will only be
performed securely by system administrators.

If website administration or web application administration has been delegated,
those users will be documented and approved by the ISSO.

Remote administration must be in compliance with any requirements contained
within the Windows Server STIGs, and any applicable network STIGs.

Remote administration of any kind will be restricted to documented and
authorized personnel.

All users performing remote administration must be authenticated.

All remote sessions will be encrypted and they will utilize FIPS 140-2-approved
protocols.

FIPS 140-2-approved TLS versions include TLS V1.1 or greater.

Review with site management how remote administration, if applicable, is
configured on the website.

If remote management meets the criteria listed above, this is not a finding.

If remote management is utilized and does not meet the criteria listed above,
this is a finding."
  tag "fix": "Ensure the web server administration is only performed over a
secure path."
end

