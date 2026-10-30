# `tp_game_partition_read` offline exact revalidation

This package records the revalidation of stock `tp_game_partition_read` at
entry `0x0010c504` for the ZTE NX809J / RedMagic 11 Pro+ target.

The Docker canonical build passed twice. The candidate matches the stock
AArch64 body at 54 instructions and 216 bytes, with KCFI type ID
`0xf4e9d97c`. The direct source harness passed five procfs-read contract cases
under ASan/UBSan in two reproducible cycles. Strict Joern passed with the
expected userspace egress review finding from `simple_read_from_buffer`.

This is an offline static attestation; Android runtime, real procfs behavior
and NX809J hardware validation remain deferred.
