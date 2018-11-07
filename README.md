# iis_server_baseline

InSpec profile testing secure configuration of Internet Information Server version 8.5.

## Description

This InSpec compliance profile is a collection of automated tests for secure configuration of IIS 8.5 .

InSpec is an open-source run-time framework and rule language used to specify compliance, security, and policy requirements for testing any node in your infrastructure.

see: https://iasecontent.disa.mil/stigs/zip/U_MS_IIS_8-5_Server_V1R5_STIG.zip

## Versioning and State of Development
This project uses the [Semantic Versioning Policy](https://semver.org/). 

### Branches
The master branch contains the latest version of the software leading up to a new release. 

Other branches contain feature-specific updates. 

### Tags
Tags indicate official releases of the project.

Please note 0.x releases are works in progress (WIP) and may change at any time.   

## Requirements

- [ruby](https://www.ruby-lang.org/en/) version 2.4  or greater
- [InSpec](http://inspec.io/) version 2.1  or greater
    - Install via ruby gem: `gem install inspec`

## Usage
InSpec makes it easy to run tests wherever you need. More options listed here: [InSpec cli](http://inspec.io/docs/reference/cli/)

### Run with remote profile:
You may choose to run the profile via a remote url, this has the advantage of always being up to date.
The disadvantage is you may wish to modify controls, which is only possible when downloaded.
Also, the remote profile is unintuitive for passing in attributes, which modify the default values of the profile.
``` bash
inspec exec https://github.com/aaronlippold/iis-server-baseline/archive/master.tar.gz
```

Another option is to download the profile then run it, this allows you to edit specific instructions and view the profile code.
``` bash
# Clone Inspec Profile
$ git clone https://github.com/aaronlippold/iis-server-baseline.git

# Run profile locally (assuming you have not changed directories since cloning)
# This will display compliance level at the prompt, and generate a JSON file 
# for export called output.json
$ inspec exec iis-server-baseline --reporter cli json:output.json

# Run profile with custom settings defined in attributes.yml against the target 
# server example.com. 
$ inspec exec iis-server-baseline -t ssh://user@password:example.com --attrs attributes.yml --reporter cli json:output.json

# Run profile with: custom attributes, ssh keyed into a custom target, and sudo.
$ inspec exec iis-server-baseline -t ssh://user@hostname -i /path/to/key --sudo --attrs attributes.yml --reporter cli json:output.json
```


## Contributors + Kudos

- Aaron Lippold
- The MITRE InSpec Team

## License and Author

### Authors

- Author:: Aaron Lippold

### License 

* This project is licensed under the terms of the Apache license 2.0 (apache-2.0)

### Progress report
|Control|Auto/Manual|Describe|in-progress|Review-RDY|Reviewed|Tested|Automated Unit Tests|
|--------|----------|----------|----------|----------|----------|----------|------------|
|V-76701|   auto   |yes|   |yes| | | |
|V-76735|   auto   |yes|   |yes| | | |
|V-76725|   auto   |yes|   |yes| | | |
|V-76711|   auto   |yes|   |yes| | | |
|V-76731|   auto   |yes|   |yes| | | |
|V-76705|  manual  |yes|   |yes| | | |
|V-76715|  manual  |yes|   |yes| | | |
|V-76721|  manual  |yes|   |yes| | | |
|V-76683|   auto   |yes|   |yes| | | |
|V-76761|   auto   |yes|   |yes| | | |
|V-76755|   auto   |yes|   |yes| | | |
|V-76745|   auto   |yes|   |yes| | | |
|V-76771|   auto   |yes|   |yes| | | |
|V-76751|  manual  |yes|   |yes| | | |
|V-76687|   auto   |yes|   |yes| | | |
|V-76765|  manual  |yes|   |yes| | | |
|V-76697|   auto   |yes|   |yes| | | |
|V-76741|  manual  |yes|   |yes| | | |
|V-76689|   auto   |yes|   |yes| | | |
|V-76699|  manual  |yes|   |yes| | | |
|V-76679|  manual  |yes|   |yes| | | |
|V-76739|  manual  |yes|   |yes| | | |
|V-76729|  manual  |yes|   |yes| | | |
|V-76709|  manual  |yes|   |yes| | | |
|V-76719|  manual  |yes|   |yes| | | |
|V-76759|   auto   |yes|   |yes| | | |
|V-76749|   auto   |yes|   |yes| | | |
|V-76769|   auto   |yes|   |yes| | | |
|V-76733|   auto   |yes|   |yes| | | |
|V-76707|   auto   |yes|   |yes| | | |
|V-76717|   auto   |yes|   |yes| | | |
|V-76703|   auto   |yes|   |yes| | | |
|V-76737|   auto   |yes|   |yes| | | |
|V-76727|   auto   |yes|   |yes| | | |
|V-76713|   auto   |yes|   |yes| | | |
|V-76753|   auto   |yes|   |yes| | | |
|V-76767|   auto   |yes|   |yes| | | |
|V-76685|  manual  |yes|   |yes| | | |
|V-76695|   auto   |yes|   |yes| | | |
|V-76743|   auto   |yes|   |yes| | | |
|V-76763|  manual  |yes|   |yes| | | |
|V-76681|   auto   |yes|   |yes| | | |
|V-76757|   auto   |yes|   |yes| | | |
|V-76747|   auto   |yes|   |yes| | | |

Legend
- Describe: Control has been evaluated and categorized as candidate for automated tests. Describe block has been written.
- Auto/Manual: Control has been evaluated and categorized as candidate for type that needs a manual review. Describe block has been written.
- Awaiting Review: Control is ready for peer review.
- in-progress: Initial evaluation has been completed, describe statements are being worked on.
- Reviewed: Control has been peer reviewed.
- Tested: Control has been peer reviewed and improved ( if needed ) and the improvements have been peer-tested.
- Automated Unit Tested: Automation of unit testing has been developed to the final point where creation, destruction and configuration of the resources has been automated fully.

### NOTICE  

© 2018 The MITRE Corporation.  

Approved for Public Release; Distribution Unlimited. Case Number 18-3678.  

### NOTICE  

This software was produced for the U. S. Government under Contract Number HHSM-500-2012-00008I, and is subject to Federal Acquisition Regulation Clause 52.227-14, Rights in Data-General.  

No other use other than that granted to the U. S. Government, or to those acting on behalf of the U. S. Government under that Clause is authorized without the express written permission of The MITRE Corporation. 

For further information, please contact The MITRE Corporation, Contracts Management Office, 7515 Colshire Drive, McLean, VA  22102-7539, (703) 983-6000.  

### NOTICE  

DISA STIGs are published by DISA IASE, see: https://iase.disa.mil/Pages/privacy_policy.aspx  

