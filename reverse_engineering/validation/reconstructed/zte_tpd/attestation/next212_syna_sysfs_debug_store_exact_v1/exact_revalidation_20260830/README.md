# `syna_sysfs_debug_store` — offline exact revalidation

This package records the independent offline revalidation of stock function
`syna_sysfs_debug_store` at `0011a9a0` (312 bytes) for `zte_tpd`.

The versioned reconstruction and Docker-curated Kbuild snapshot were verified
byte-identical. The module was built in the pinned
`nubia-sm8850-kernel-builder:latest` environment in two independent
container filesystems with different module paths; both cycles produced the
same module bytes and passed the no-warning/error rule.

Gates: Docker-backed ASan/UBSan host harness (9 cases, reproducible, PASS),
AArch64 assembly/relocation comparison (78 instructions, 312 bytes, PASS),
KCFI comparison (type ID `0x9ce291cd`, PASS), and Joern strict analysis
(PASS).

The host harness stubs kernel interfaces and does not claim hardware, Android
sysfs, or module-loading validation. Hardware validation remains deferred.
