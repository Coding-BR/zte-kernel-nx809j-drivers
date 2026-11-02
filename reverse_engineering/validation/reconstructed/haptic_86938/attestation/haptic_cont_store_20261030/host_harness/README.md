# `cont_store` host harness

The harness builds the candidate with AddressSanitizer and UndefinedBehaviorSanitizer inside the pinned NX809J builder image. It checks the negative parse path, the zero-value path, callback order and mode, and the stock reload of the operations-table pointer between callbacks.

The host stubs model the observed `device` field offset and callback table only. They do not establish hardware behavior, kernel KMI compatibility, concurrency behavior outside the target, or KUnit/lockdep/KCSAN results.
