# `tp_self_test_read` offline exact revalidation

This package records the revalidation of stock `tp_self_test_read` at entry
`0x0010cae8` for the ZTE NX809J / RedMagic 11 Pro+ target.

The authoritative stock size is 356 bytes (89 instructions); the older
manifest value of 304 bytes was corrected during this revalidation. Docker
canonical build, AArch64 comparison and KCFI passed twice/at function level,
with KCFI type ID `0xf4e9d97c`. The direct source harness passed four
allocation/read/EOF/error contract cases under ASan/UBSan in two reproducible
cycles. Strict Joern passed, retaining the observed allocation, cleanup and
userspace-egress review findings.

This is an offline static attestation; Android runtime, real procfs behavior
and NX809J hardware validation remain deferred.
