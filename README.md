# iis_server_baseline

InSpec profile testing secure configuration of Internet Information Server version 8.5.

## Description

This InSpec compliance profile is a collection of automated tests for secure configuration of IIS 8.5 .

InSpec is an open-source run-time framework and rule language used to specify compliance, security, and policy requirements for testing any node in your infrastructure.

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

|Control| 2. Describe  |  1. Auto/Manual (a/m)  |  4. Review-RDY  |  3. in-progress  |  5. Reviewed  |  6. Tested   |  7. Automated Unit Tests |
|-------|-----------|-----------|-----------|-----------|-----------|-----------|------------|
|V-76679|           |    yes    |    yes    |           |           |           |            |
|V-76681|    yes    |           |    yes    |           |           |           |            |
|V-76683|    yes    |           |    yes    |           |           |           |            |
|V-76685|           |           |    yes    |           |           |           |            |
|V-76687|    yes    |           |    yes    |           |           |           |            |
|V-76689|    yes    |           |    yes    |           |           |           |            |
|V-76695|    yes    |           |    yes    |           |           |           |            |
|V-76697|    yes    |           |    yes    |           |           |           |            |
|V-76699|           |    yes    |    yes    |           |           |           |            |
|V-76701|    yes    |           |    yes    |           |           |           |            |
|V-76703|    yes    |           |    yes    |           |           |           |            |
|V-76705|    yes    |           |    yes    |           |           |           |            |
|V-76707|           |           |    yes    |           |           |           |            |
|V-76709|           |     yes   |    yes    |           |           |           |            |
|V-76711|    yes    |           |    yes    |           |           |           |            |
|V-76713|    yes    |           |    yes    |           |           |           |            |
|V-76715|           |           |           |    yes    |           |           |            |
|V-76717|           |           |           |    yes    |           |           |            |
|V-76719|           |           |           |    yes    |           |           |            |
|V-76721|           |    yes    |    yes    |           |           |           |            |
|V-76725|    yes    |           |    yes    |           |           |           |            |
|V-76727|    yes    |           |    yes    |           |           |           |            |
|V-76729|           |    yes    |    yes    |           |           |           |            |
|V-76731|    yes    |           |    yes    |           |           |           |            |
|V-76733|    yes    |           |    yes    |           |           |           |            |
|V-76735|           |           |           |    yes    |           |           |            |
|V-76737|           |    yes    |    yes    |           |           |           |            |
|V-76739|           |           |           |    yes    |           |           |            |
|V-76741|           |           |           |    yes    |           |           |            |
|V-76743|    yes    |           |    yes    |           |           |           |            |
|V-76745|    yes    |           |    yes    |           |           |           |            |
|V-76747|    yes    |           |    yes    |           |           |           |            |
|V-76749|    yes    |           |    yes    |           |           |           |            |
|V-76751|           |           |           |    yes    |           |           |            |
|V-76753|    yes    |           |    yes    |           |           |           |            |
|V-76755|    yes    |           |    yes    |           |           |           |            |
|V-76757|    yes    |           |    yes    |           |           |           |            |
|V-76759|    yes    |           |    yes    |           |           |           |            |
|V-76761|    yes    |           |    yes    |           |           |           |            |
|V-76763|           |           |           |    yes    |           |           |            |
|V-76765|           |           |           |    yes    |           |           |            |
|V-76767|    yes    |           |    yes    |           |           |           |            |
|V-76769|    yes    |           |    yes    |           |           |           |            |
|V-76771|    yes    |           |    yes    |           |           |           |            ||

Legend
- Describe: Control has been evaluated and categorized as candidate for automated tests. Describe block has been written.
- Auto/Manual: Control has been evaluated and categorized as candidate for type that needs a manual review. Describe block has been written.
- Awaiting Review: Control is ready for peer review.
- in-progress: Initial evaluation has been completed, describe statements are being worked on.
- Reviewed: Control has been peer reviewed.
- Tested: Control has been peer reviewed and improved ( if needed ) and the improvements have been peer-tested.
- Automated Unit Tested: Automation of unit testing has been developed to the final point where creation, destruction and configuration of the resources has been automated fully.

