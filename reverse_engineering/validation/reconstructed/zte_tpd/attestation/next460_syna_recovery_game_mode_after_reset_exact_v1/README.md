# `syna_recovery_game_mode_after_reset` offline exact attestation

This package records the reconstruction of stock `zte_tpd` function
`syna_recovery_game_mode_after_reset` at entry `0x00111bac` for the NX809J.

## Decision

`OFFLINE_EXACT` at function level. The candidate matches the stock module at
the normalized AArch64 opcode and relocation surface: 102 instructions and 408
bytes, with the stock string references and all five downstream calls. The
KCFI type ID is `0xae20471c` and the symbol size matches at 408 bytes.

The stock orchestrator continues through downstream failures and emits the
same error paths; that ordering is preserved. This is not a claim of complete
driver or hardware equivalence. Smartphone execution, firmware transport and
physical behavior remain deferred.

## Evidence

- Ghidra pseudocode: `stock_decompiled.c`
- Ghidra P-Code: `stock_pcode.jsonl`
- Stock and candidate Assembly: `stock_assembly.asm`, `candidate_assembly.asm`
- Exact linked Assembly source: `syna_recovery_game_mode_after_reset_exact.S`
- AArch64 comparison: `assembly_comparison.json`, `aarch64_validation_report.json`
- KCFI comparison: `stock_kcfi.json`, `candidate_kcfi.json`, `kcfi_comparison.json`
- Strict Joern: `joern_gate_report.json`, `joern_gate_summary.json`
- Host harness: `host_harness.c`, `host_harness_report.json`, `host_test`
- Reproducible Docker build: `canonical_build_report.json`, `zte_tpd.ko`
- Source synchronization: `source_sync_report.json`

## Reproduction order

1. Recreate the documented Docker/toolchain environment from the repository.
2. Run the source synchronization gate and the canonical two-cycle build.
3. Extract the candidate and stock function Assembly from their `.ko` files.
4. Run the AArch64 comparison and KCFI comparison gates.
5. Compile and execute `host_harness.c` with ASan and UBSan twice.
6. Run the strict Joern gate and require zero parser problems and unresolved calls.
7. Keep the result `OFFLINE_EXACT` until a separate controlled hardware plan is
   approved. Do not infer a phone boot result from this package.
