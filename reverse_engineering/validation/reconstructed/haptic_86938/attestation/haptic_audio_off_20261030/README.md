# `audio_off` reconstruction checkpoint

Stock identity: `audio_off@0010d148`, module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

Candidate source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_129_audio_off.c`, SHA-256 `f1ed2f5c628fa494a3f81098ad86502201f854916aeb1e65eaf943fd02596b41`.

## Verified

- `core_v3_execution` passed all seven automated core gates. Stock and candidate assembly match exactly: 71 AArch64 instructions, 284 bytes, identical relocations and section. Both indirect callback KCFI callsites pass.
- `core_v5_execution` passed the same gates against the final map, including the checkpoint README and prior validation reports.
- The pinned Docker build is reproducible. Joern scoped analysis and usage slice pass.
- [Host harness result](host_harness/harness_result.json) passes AddressSanitizer and UndefinedBehaviorSanitizer checks for an empty list, reverse tail-to-head freeing, callback order, mutex release, and the stock invalid-link report-then-free path.

## Remaining

This function remains `candidate_under_static_validation`; the protocol runner does not authorize promotion. Whole-driver lock ordering with concurrent `audio_work_routine`, callback-table object reconstruction, KMI type evidence, bounded modeling, independent review, and kernel KUnit/lockdep/KCSAN evidence are still open. Hardware behavior was not tested.
