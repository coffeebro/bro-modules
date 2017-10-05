# run-script
This module is intended to provide the ability to run a script residing on the same server Bro is running on.  Ideally, this module would be used to fire off a local script that will act upon some information Bro has parsed.  In practice, this would likely not be used in conjunction with the bro_init() event, but this provides an adequate example of the functionality.

NOTE: This module is still being developed, use with caution and without expectation. :)
