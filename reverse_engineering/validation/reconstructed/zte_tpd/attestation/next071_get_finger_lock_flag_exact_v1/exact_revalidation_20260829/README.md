# `get_finger_lock_flag` offline exact revalidation

This package records the revalidation of stock `get_finger_lock_flag` at
entry `0x0010c92c` for the ZTE NX809J / RedMagic 11 Pro+ target.

The Docker canonical build passed twice. The candidate matches the stock
AArch64 body at 52 instructions and 208 bytes, with KCFI type ID
`0xf4e9d97c`. The direct source harness passed four read/EOF contract cases
under ASan/UBSan in two reproducible cycles. Strict Joern passed with the
expected userspace-egress review scope for the procfs read helper.

This is an offline static attestation; Android runtime, real procfs behavior
and NX809J hardware validation remain deferred.
