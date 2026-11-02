# `syna_cdev_ioctl_raw_read` offline exact attestation

This package records the function-level reconstruction of `syna_cdev_ioctl_raw_read`
at stock entry `0x00117558` for the ZTE NX809J / RedMagic 11 Pro+ target.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level. The candidate matches the stock
function at 224 AArch64 instructions and 896 bytes, including relocation sites,
stock string references and the recovered `g_cdev_data` subfields at `+0x8`,
`+0x10`, `+0x18` and `+0x48`.

Both stock and candidate have no valid KCFI preamble for this symbol; the KCFI
comparison records `BOTH_NO_VALID_KCFI_PREAMBLE` with matching section and size.

The exact linked source is `candidate_exact.S`. Canonical Docker build,
reproducibility, strict Joern, AArch64 comparison and the two-cycle ASan/UBSan
host contract harness all pass. Hardware behavior remains deferred.

This is an offline function-level claim, not a claim of complete driver or
NX809J hardware equivalence.
