# `set_finger_lock_flag` offline exact revalidation

This package records the revalidation of stock `set_finger_lock_flag` at entry
`0x0010ca00` for the ZTE NX809J / RedMagic 11 Pro+ target.

The Docker canonical build passed twice. The candidate matches the stock
AArch64 body at 57 instructions and 228 bytes, with KCFI type ID
`0xc3d43b4d`. The direct source harness passed four setter/side-effect contract
cases under ASan/UBSan in two reproducible cycles. Strict Joern passed with
the expected userspace-ingress review scope for decimal user parsing.

This is an offline static attestation; Android runtime, real procfs behavior
and NX809J hardware validation remain deferred.
