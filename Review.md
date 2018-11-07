| Check          | Sub-check                                                                         | Who | Completion Date | Issue #'s |
|----------------|-----------------------------------------------------------------------------------|-----|-----------------|-----------|
|Logical checks| Proper profile directory structure							|Alicia Sturtevant|*|*|
||JSON output review (e.g., pass/fail on ,<br>hardened, not hardened, edge cases, etc.)|*|*|*|
||InSpec syntax checker|Alicia Sturtevant|*|*|
||Local commands focused on target not the runner|*|*|*|
|Quality checks|Alignment (including tagging) to original<br> standard (i.e. STIG, CIS Benchmark, NIST Tags)|Alicia Sturtevant|*|*|
||Descriptive output for findings details|Alicia Sturtevant|*|*|
||Documentation quality (i.e. README)<br> novice level instructions including prerequisites|*|*|*|
||Consistency across other profile conventions |*|*|*|
||Spelling grammar|Alicia Sturtevant|*|*|
||Removing debugging documentation and code|*|*|*|
| Error handling |“Profile Error” containment: “null” responses <br>should only happen if InSpec is run with incorrect privileges|*|*|*|
||Slowing the target (e.g. filling up disk, CPU spikes)|*|*|*|
||Check for risky commands (e.g. rm, del, purge, etc.)|*|*|*|
||Check for “stuck” situations (e.g., profile goes on forever)|*|*|*|
