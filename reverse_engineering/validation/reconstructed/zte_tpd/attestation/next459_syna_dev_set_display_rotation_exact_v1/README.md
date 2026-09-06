# `syna_dev_set_display_rotation` offline exact attestation

This package records the reconstruction of stock `zte_tpd` function
`syna_dev_set_display_rotation` at entry `0x00111a30` for the NX809J.

## Decision

`OFFLINE_EXACT` at function level. The candidate matches the stock module at
the normalized AArch64 opcode and relocation surface: 65 instructions and 260
bytes, with the stock string references and three calls to
`syna_tcm_set_dynamic_config` interleaved with the corresponding printk calls.
The KCFI type ID is `0x1eb3b73d` and the symbol size matches at 260 bytes.

The stock sequence reads `tcm + 0x60c` before its null branch. That ordering is
preserved exactly and is documented as a precondition in the host harness.
This is not a claim of complete driver or hardware equivalence. Smartphone
execution, firmware transport and physical behavior remain deferred.

## Evidence

- Ghidra pseudocode: `stock_decompiled.c`
- Ghidra P-Code: `stock_pcode.jsonl`
- Stock and candidate Assembly: `stock_assembly.asm`, `candidate_assembly.asm`
- Exact linked Assembly source: `syna_dev_set_display_rotation_exact.S`
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
