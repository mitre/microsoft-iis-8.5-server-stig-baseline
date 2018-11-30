control 'V-76735' do
  title 'The IIS 8.5 web server Indexing must only index web content.'
  desc  "The indexing service can be used to facilitate a search function for
  websites. Enabling indexing may facilitate a directory traversal exploit and
  reveal unwanted information to a malicious user. Indexing must be limited to
  web document directories only."
  impact 0.7
  tag "gtitle": 'SRG-APP-000266-WSR-000142'
  tag "gid": 'V-76735'
  tag "rid": 'SV-91431r1_rule'
  tag "stig_id": 'IISW-SV-000139'
  tag "fix_id": 'F-83431r1_fix'
  tag "cci": ['CCI-001312']
  tag "nist": ['SI-11 a', 'Rev_4']
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
  tag "check": "Access the IIS 8.5 Web Server.

  Access an administrator command prompt and type \"regedit <enter>\" to access
  the server's registry.

  Navigate to
  KEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\ContentIndex\\Catalogs\\.

  If this key exists then indexing is enabled; if the key does not exist then
  this check is Not Applicable.

  Review the Catalogs keys to determine if directories other than web document
  directories are being indexed. If so, this is a finding."
  tag "fix": "Run MMC.

  Add the Indexing Service snap-in.

  Edit the indexed directories to only include web document directories."

  if registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ContentIndex\Catalogs').exists
    describe "This control requires manual review to determine if directories other than web document
    directories are being indexed" do
      skip "This control requires manual review to determine if directories other than web document
      directories are being indexed"
    end
  end
  if !registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ContentIndex\Catalogs').exists
    impact 0.0
    describe "Indexing is not enabled, control Not Applicable" do
      skip "Indexing is not enabled, control Not Applicable"
    end
  end
end
