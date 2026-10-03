# `syna_dev_reflash_startup_work` offline exact attestation

This package records the function-level reconstruction of
`syna_dev_reflash_startup_work` at stock entry `0x00113b40` for the ZTE NX809J /
RedMagic 11 Pro+ target.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level. The candidate matches the stock
function at 76 AArch64 instructions and 304 bytes, including the two helper
call relocations that must be rebound when the candidate module layout moves.

Both stock and candidate carry KCFI type ID `0xa607748c`; the KCFI comparison
passes with matching section and symbol size. Strict Joern, reproducible
two-cycle Docker build and the two-cycle ASan/UBSan host harness with 11 cases
also pass.

The exact linked source is `candidate_exact.S`. Hardware behavior remains
deferred. This is an offline function-level claim, not a claim of complete
driver or NX809J hardware equivalence.

The semantic reconstruction and direct host contract source used by Joern and
the harness are preserved as `semantic_source.c` and `host_contract_source.c`.
The refreshed source/harness validation is recorded in
`host_harness_report_v2_20260829.json` and `joern_refresh_20260829/`; it covers
the disabled, reflash-failure, app-firmware-failure, input-device-failure and
full-success paths. The exact linked source remains `candidate_exact.S`.
