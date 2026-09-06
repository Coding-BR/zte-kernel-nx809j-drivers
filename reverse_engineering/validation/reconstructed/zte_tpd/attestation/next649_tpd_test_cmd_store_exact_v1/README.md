# `tpd_test_cmd_store` offline exact attestation

This package records the function-level reconstruction of `tpd_test_cmd_store`
at stock entry `0x0012bf7c` for the ZTE NX809J / RedMagic 11 Pro+ target.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level. The candidate matches the stock
function at 52 AArch64 instructions and 208 bytes, including 18 relocation
sites and the stock `.rodata.str1.1` strings. KCFI type ID `0x73fc0d79` and
symbol size match exactly.

The exact Assembly source is emitted by `tpd_test_cmd_store_exact.S`; its
sparse stock string bytes are kept in `tpd_test_cmd_store_exact.inc`.
Canonical Docker build, KCFI, AArch64 comparison, strict Joern and the
ASan/UBSan host contract harness all pass. Hardware behavior remains deferred.

## Evidence

- `assembly/comparison.json`: stock-probe/candidate AArch64 comparison
- `kcfi/comparison.json`: stock/candidate KCFI comparison
- `canonical_build_report.json`: reproducible two-cycle Docker build
- `host_harness_report.json`: 15 direct contract checks, two cycles
- `joern/joern_gate_summary.json`: strict source gate
- `curated_sync_report.json`: versioned-to-curated source synchronization

This is an offline function-level claim, not a claim of complete driver or
NX809J hardware equivalence.
