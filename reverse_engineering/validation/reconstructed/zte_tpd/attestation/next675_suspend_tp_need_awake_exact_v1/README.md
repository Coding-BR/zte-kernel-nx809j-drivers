# `suspend_tp_need_awake` offline exact attestation

This package records the function-level reconstruction of
`suspend_tp_need_awake` at stock entry `0x0011049c` for the ZTE NX809J /
RedMagic 11 Pro+ target.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level. The candidate matches the stock
function at 20 AArch64 instructions and 80 bytes, including the `tpd_cdev`
relocations, callback slot `0xe68`, PAC/stack sequence, indirect-call KCFI
guard and boolean return normalization. KCFI type ID `0x6fbb3035` and symbol
size match exactly.

The exact linked source is `candidate_exact.S`. The current snapshot passes
the reproducible two-cycle Docker build, AArch64 comparison, KCFI, strict
Joern and two-cycle ASan/UBSan host harness. Hardware behavior remains
deferred.

This is an offline function-level claim, not a claim of complete driver or
NX809J hardware equivalence.
