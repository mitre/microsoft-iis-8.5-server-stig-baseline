control "V-76717" do
  title "Java software installed on a production IIS 8.5 web server must be
limited to .class files and the Java Virtual Machine."
  desc  "Mobile code in hosted applications allows the developer to add
functionality and displays to hosted applications that are fluid, as opposed to
a static web page. The data presentation becomes more appealing to the user, is
easier to analyze, and navigation through the hosted application and data is
much less complicated.

    Some mobile code technologies in use in today's applications are: Java,
JavaScript, ActiveX, PDF, Postscript, Shockwave movies, Flash animations, and
VBScript. The DoD has created policies that define the usage of mobile code on
DoD systems. The usage restrictions and implementation guidance apply to both
the selection and use of mobile code installed on organizational servers and
mobile code downloaded and executed on individual workstations.

    Source code for a Java program is, many times, stored in files with either
.java or .jpp file extensions. From the .java and .jpp files the Java compiler
produces a binary file with an extension of .class. The .java or .jpp file
could therefore reveal sensitive information regarding an application's logic
and permissions to resources on the server.
  "
  impact 0.7
  tag "gtitle": "SRG-APP-000206-WSR-000128"
  tag "gid": "V-76717"
  tag "rid": "SV-91413r1_rule"
  tag "stig_id": "IISW-SV-000130"
  tag "fix_id": "F-83413r1_fix"
  tag "cci": ["CCI-001166"]
  tag "nist": ["SC-18 (1)", "Rev_4"]
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
  tag "check": "Search the system for files with either .java or .jpp
extensions.

If files with .java or .jpp extensions are found, this is a finding."
  tag "fix": "Remove all files from the web server with both .java and .jpp
extensions."
end

