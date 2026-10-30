# audio_off host harness

The harness compiles the reconstructed `audio_off` function with AddressSanitizer and UndefinedBehaviorSanitizer inside the pinned NX809J builder image. It checks the empty-list path, reverse tail-to-head cleanup, callback order, mutex release, and the stock invalid-link report-then-free path.

The fake callbacks and list objects cover this function's host-visible contract only. They do not establish hardware behavior, KMI compatibility, lock ordering against concurrent audio work, or KUnit/lockdep/KCSAN results.
