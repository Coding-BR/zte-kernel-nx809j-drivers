# `syna_dev_probe` offline exact attestation

This package records the function-level reconstruction of `syna_dev_probe` at
stock entry `0x00112038` for the ZTE NX809J / RedMagic 11 Pro+ target.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level. The candidate matches the stock
function at 352 AArch64 instructions and 1408 bytes, including relocation
sites and stock string references. KCFI type ID `0xc7f8c87c` and symbol size
match exactly.

The exact assembly is emitted by `candidate_exact.S`; the preserved sparse
stock string bytes are kept in `candidate_exact.inc`. Canonical Docker build,
KCFI, AArch64 comparison, strict Joern and the ASan/UBSan host contract
harness all pass. Hardware behavior remains deferred.

This is an offline function-level claim, not a claim of complete driver or
NX809J hardware equivalence.
