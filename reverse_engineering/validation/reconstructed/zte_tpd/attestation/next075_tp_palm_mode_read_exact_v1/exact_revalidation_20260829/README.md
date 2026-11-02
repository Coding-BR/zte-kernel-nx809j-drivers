# `tp_palm_mode_read` offline exact revalidation

This package records the revalidation of stock `tp_palm_mode_read` at entry
`0x0010cce8` for the ZTE NX809J / RedMagic 11 Pro+ target.

The Docker canonical build passed twice. The candidate matches the stock
AArch64 body at 60 instructions and 240 bytes, with KCFI type ID
`0xf4e9d97c`. The direct source harness passed three read/EOF contract cases
under ASan/UBSan in two reproducible cycles. Strict Joern passed with the
expected procfs userspace-egress review scope.

This is an offline static attestation; Android runtime, real procfs behavior
and NX809J hardware validation remain deferred.
