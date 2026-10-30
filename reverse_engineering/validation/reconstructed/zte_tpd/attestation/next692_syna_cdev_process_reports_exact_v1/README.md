# `syna_cdev_process_reports` offline exact attestation

This package records the function-level reconstruction of `syna_cdev_process_reports`
at stock entry `0x00117c90` for the ZTE NX809J / RedMagic 11 Pro+ target.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level. The candidate matches the stock
function at 404 AArch64 instructions and 1616 bytes, including relocation sites,
stock string references, recovered `g_cdev_data` subfields and the two stripped
compiler allocation-tag references.

Both stock and candidate carry KCFI type ID `0x9f93c40a`; the KCFI comparison
passes with matching section and symbol size.

The exact linked source is `candidate_exact.S`. Canonical Docker build,
reproducibility, strict Joern, AArch64 comparison and the two-cycle ASan/UBSan
host contract harness all pass. Hardware behavior remains deferred.

This is an offline function-level claim, not a claim of complete driver or
NX809J hardware equivalence.
