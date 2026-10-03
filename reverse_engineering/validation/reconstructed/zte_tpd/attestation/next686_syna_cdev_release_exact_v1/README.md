# `syna_cdev_release` offline exact attestation

This package records the function-level reconstruction of `syna_cdev_release`
at stock entry `0x001173e0` for the ZTE NX809J / RedMagic 11 Pro+ target.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level. The candidate matches the stock
function at 94 AArch64 instructions and 376 bytes, including relocation sites,
stock string references and the recovered `g_cdev_data` subfields. KCFI type ID
`0x9829071d` and symbol size match exactly.

The exact linked source is `candidate_exact.S`. Canonical Docker build, KCFI,
AArch64 comparison, strict Joern and the two-cycle ASan/UBSan host contract
harness all pass. Hardware behavior remains deferred.

This is an offline function-level claim, not a claim of complete driver or
NX809J hardware equivalence.
