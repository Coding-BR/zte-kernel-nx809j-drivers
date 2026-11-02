# MP0-MP6 — tpd_set_screen_off_awake

These seven records freeze the stock/source identities and current static contract before the C-build correction. The files are extracted evidence for review, not an independent review or semantic promotion.

Target: `tpd_set_screen_off_awake@0012ca1c`, stock module SHA-256 `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.

Key discrepancy: the Makefile currently excludes the C translation unit and links a full 88-byte `.inst` assembly function. The stock body shows that the error path calls `_printk` and then returns zero regardless of the logger result. The existing host harness returns zero from its logger stub, so it cannot catch a bad return-propagation mutant. The callback registration/consumer also exposes a prototype mismatch in reconstructed declarations.

`CALLBACK_ABI` and `CONCURRENCY_LIFETIME` are required risk profiles. The callback and shared-global observations are documented; KCFI callsite, KMI type, lifetime, lock, and kernel-lab gates remain open. The target body has no direct hardware bus operation.

No promotion, map status change, hardware claim, or independent-review claim is made. All evidence paths and hashes are embedded in the JSON records.
