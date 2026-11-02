# `tp_pen_only_write` offline exact revalidation

This package records the revalidation of stock `tp_pen_only_write` at entry
`0x0010c818` for the ZTE NX809J / RedMagic 11 Pro+ target.

The Docker canonical build passed twice. The candidate matches the stock
AArch64 body at 68 instructions and 272 bytes, with KCFI type ID
`0xc3d43b4d`. The direct source harness passed five write/callback contract
cases under ASan/UBSan in two reproducible cycles. Strict Joern passed with
the expected userspace-ingress review finding from bounded user-copy and
parsing.

The AArch64 implementation is retained in the reconstructed C source as
inline assembly, so no separate `.S` file is required for this target.
Android runtime, real procfs behavior and NX809J hardware validation remain
deferred.
