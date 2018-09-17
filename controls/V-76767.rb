control "V-76767" do
  title "The File System Object component must be disabled on the IIS 8.5 web
server."
  desc  "Some Component Object Model (COM) components are not required for most
applications and should be removed if possible. Most notably, consider
disabling the File System Object component; however, this will also remove the
Dictionary object. Be aware some programs may require this component (e.g.,
Commerce Server), so it is highly recommended this be tested completely before
implementing on the production web server."
  impact 0.7
  tag "gtitle": "SRG-APP-000516-WSR-000174"
  tag "gid": "V-76767"
  tag "rid": "SV-91463r1_rule"
  tag "stig_id": "IISW-SV-000157"
  tag "fix_id": "F-83463r1_fix"
  tag "cci": ["CCI-000366"]
  tag "nist": ["CM-6 b", "Rev_4"]
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
  tag "check": "Locate the
HKEY_CLASSES_ROOT\\CLSID\\{0D43FE01-F093-11CF-8940-00A0C9054228} registry key.

If the key exist, the File System Object component is enabled.

If the File System Object component is enabled and is not required for
operations, this is a finding.

Note: If the File System Object component is required for operations and has
supporting documentation signed by the ISSO, this is not a finding."
  tag "fix": "Run the following command, with administrator privileges, to
unregister the File System Object: regsvr32 scrrun.dll /u."
end

