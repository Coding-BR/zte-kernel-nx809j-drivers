# `tp_self_test_write` offline exact revalidation

This package records the revalidation of stock `tp_self_test_write` at entry
`0x0010cc50` for the ZTE NX809J / RedMagic 11 Pro+ target.

The Docker canonical build passed twice. The candidate matches the stock
AArch64 body at 37 instructions and 148 bytes, with KCFI type ID
`0xc3d43b4d`. The direct source harness passed three write/error contract cases
under ASan/UBSan in two reproducible cycles. Strict Joern passed, retaining
the observed user-copy and self-test state transition review scope.

This is an offline static attestation; Android runtime, real procfs behavior
and NX809J hardware validation remain deferred.
