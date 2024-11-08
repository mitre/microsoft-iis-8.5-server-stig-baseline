control 'SV-214431' do
  title 'Access to web administration tools must be restricted to the web manager and the web managers designees.'
  desc 'A web server can be modified through parameter modification, patch installation, upgrades to the web server or modules, and security parameter changes. With each of these changes, there is the potential for an adverse effect such as a DoS, web server instability, or hosted application instability.

To limit changes to the web server and limit exposure to any adverse effects from the changes, files such as the web server application files, libraries, and configuration files must have permissions and ownership set properly to only allow privileged users access.

The key web service administrative and configuration tools must only be accessible by the web server staff. All users granted this authority will be documented and approved by the ISSO. Access to the IIS Manager will be limited to authorized users and administrators.'
  desc 'check', 'Right-click InetMgr.exe, then click “Properties” from the “Context” menu.

Select the "Security" tab.

Review the groups and user names.

The following account may have Full control privileges:

TrustedInstaller
Web Managers
Web Manager designees

The following accounts may have read and execute, or read permissions:

Non Web Manager Administrators
ALL APPLICATION PACKAGES (built-in security group)
SYSTEM
Users

Specific users may be granted read and execute and read permissions.

Compare the local documentation authorizing specific users, against the users observed when reviewing the groups and users.

If any other access is observed, this is a finding.'
  desc 'fix', 'Restrict access to the web administration tool to only the web manager and the web manager’s designees.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag gtitle: 'SRG-APP-000380-WSR-000072'
  tag satisfies: ['SRG-APP-000380-WSR-000072', 'SRG-APP-000435-WSR-000147', 'SRG-APP-000033-WSR-000169']
  tag gid: 'V-214431'
  tag rid: 'SV-214431r879753_rule'
  tag stig_id: 'IISW-SV-000147'
  tag fix_id: 'F-15639r310342_fix'
  tag cci: ['CCI-000213', 'CCI-001813', 'CCI-002385']
  tag nist: ['AC-3', 'CM-5 (1)', 'SC-5', 'CM-5 (1) (a)', 'SC-5 a']
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

  authorized_users = attribute('authorized_users')

  describe file('C:\windows\system32\inetsrv\InetMgr.exe') do
    # Full control for administrators
    it { should be_allowed('full-control', by_user: 'BUILTIN\Administrators') }

    # read & execute for ALL APPLICATION PACKAGES, SYSTEM, Users

    it { should be_allowed('read', by_user: 'APPLICATION PACKAGE AUTHORITY\\ALL APPLICATION PACKAGES') }
    it { should be_allowed('read', by_user: 'NT AUTHORITY\\SYSTEM') }
    it { should be_allowed('read', by_user: 'BUILTIN\\Users') }

    # users with read & execute permissions
    authorized_users.each do |user|
      it { should be_allowed('read', by_user: user.to_s) }
    end
  end
end
