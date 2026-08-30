# `tp_game_partition_write` offline exact revalidation

This package records the revalidation of stock `tp_game_partition_write` at
entry `0x0010c5e0` for the ZTE NX809J / RedMagic 11 Pro+ target.

The Docker canonical build passed twice. The candidate matches the stock
AArch64 body at 80 instructions and 320 bytes, with KCFI type ID
`0xc3d43b4d`. The direct source harness passed five write/callback contract
cases under ASan/UBSan in two reproducible cycles. Strict Joern passed with
the expected userspace-ingress review finding from user-copy handling.

This is an offline static attestation; Android runtime, real procfs behavior
and NX809J hardware validation remain deferred.
