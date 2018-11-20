| Check          | Sub-check                                                                         | Who | Completion Date | Issue #'s |
|----------------|-----------------------------------------------------------------------------------|-----|-----------------|-----------|
|Logical checks| Proper profile directory structure							|Alicia Sturtevant|*|*|
||JSON output review (e.g., pass/fail on ,<br>hardened, not hardened, edge cases, etc.)|*|*|*|
||InSpec syntax checker|Alicia Sturtevant|*|Issue #16|
||Local commands focused on target not the runner|Alicia Sturtevant|11/19/2018|*|
|Quality checks|Alignment (including tagging) to original<br> standard (i.e. STIG, CIS Benchmark, NIST Tags)|Alicia Sturtevant|*|*|
||Descriptive output for findings details|Alicia Sturtevant|*|Issue #15|
||Documentation quality (i.e. README)<br> novice level instructions including prerequisites|*|*|*|
||Consistency across other profile conventions |*|*|*|
||Spelling grammar|Alicia Sturtevant|11/19/2018|*|
||Removing debugging documentation and code|Alicia Sturtevant|11/19/2018|Issue #8|
| Error handling |“Profile Error” containment: “null” responses <br>should only happen if InSpec is run with incorrect privileges|Alicia Sturtevant, Eugene Aronne|*|Issue #20|
||Slowing the target (e.g. filling up disk, CPU spikes)|Alicia Sturtevant|*|*|
||Check for risky commands (e.g. rm, del, purge, etc.)|Alicia Sturtevant|*|Issue #10|
||Check for “stuck” situations (e.g., profile goes on forever)|*|*|*|
