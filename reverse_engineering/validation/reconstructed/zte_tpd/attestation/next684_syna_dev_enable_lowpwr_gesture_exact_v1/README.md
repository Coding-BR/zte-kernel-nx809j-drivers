# `syna_dev_enable_lowpwr_gesture` offline exact attestation

This package records the function-level reconstruction of
`syna_dev_enable_lowpwr_gesture` at stock entry `0x00114348` for the ZTE NX809J
/ RedMagic 11 Pro+ target.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level. The candidate matches the stock
function at 113 AArch64 instructions and 452 bytes, including relocation sites
and stock string references. Both stock and candidate have no valid KCFI
preamble; the KCFI comparison records matching absence and matching symbol
size/section.

The exact linked source is `candidate_exact.S`. Canonical Docker build, KCFI
parity, AArch64 comparison, strict Joern and the two-cycle ASan/UBSan host
contract harness all pass. Hardware behavior remains deferred.

This is an offline function-level claim, not a claim of complete driver or
NX809J hardware equivalence.
