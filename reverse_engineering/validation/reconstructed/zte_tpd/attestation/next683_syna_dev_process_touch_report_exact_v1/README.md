# `syna_dev_process_touch_report` offline exact attestation

This package records the function-level reconstruction of
`syna_dev_process_touch_report` at stock entry `0x00113c74` for the ZTE NX809J
/ RedMagic 11 Pro+ target.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level. The candidate matches the stock
function at 335 AArch64 instructions and 1340 bytes, including relocation
sites and stock string references. KCFI type ID `0x9f93c40a` and symbol size
match exactly.

The exact linked source is `candidate_exact.S`. Canonical Docker build, KCFI,
AArch64 comparison, strict Joern and the two-cycle ASan/UBSan host contract
harness all pass. Hardware behavior remains deferred.

This is an offline function-level claim, not a claim of complete driver or
NX809J hardware equivalence.
