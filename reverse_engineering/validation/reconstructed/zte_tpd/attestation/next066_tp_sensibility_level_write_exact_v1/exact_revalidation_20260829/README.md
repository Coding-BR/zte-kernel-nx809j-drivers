# `tp_sensibility_level_write` offline exact revalidation

This package records the revalidation of stock `tp_sensibility_level_write` at
entry `0x0010c3f8` for the ZTE NX809J / RedMagic 11 Pro+ target.

The Docker canonical build passed twice. The candidate matches the stock
AArch64 body at 66 instructions and 264 bytes, and the KCFI type ID is
`0xc3d43b4d`. The direct source harness passed six contract cases under
ASan/UBSan in two reproducible cycles. Strict Joern passed with the expected
indirect callback review scope.

This is an offline static attestation; Android runtime, real procfs behavior
and NX809J hardware validation remain deferred.
