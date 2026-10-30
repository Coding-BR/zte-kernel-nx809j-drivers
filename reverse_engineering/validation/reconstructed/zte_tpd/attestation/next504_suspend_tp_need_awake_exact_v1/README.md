# `suspend_tp_need_awake` offline exact attestation

This package records the function-level reconstruction of stock `zte_tpd`
function `suspend_tp_need_awake` at entry `0x0011049c` for the ZTE NX809J /
RedMagic 11 Pro+ target.

## Decision

`OFFLINE_EXACT` at function level. The candidate matches the stock function at
20 AArch64 instructions and 80 bytes, including the `tpd_cdev` relocations,
the callback slot at offset `0xe68`, the PAC/stack sequence, the indirect-call
KCFI guard, and the boolean return normalization. The KCFI type ID is
`0x6fbb3035` and the symbol size matches exactly.

The linked object is emitted by `suspend_tp_need_awake_exact.S`. The readable
lift in `candidate_source.c` documents the same null-callback, callback and
return paths; the exact Assembly source is the object promoted by this
attestation.

This is not a claim of complete driver or hardware equivalence. The host
harness covers the null callback branch, callback slot/context forwarding and
boolean normalization. Android runtime, firmware transport and NX809J hardware
behavior remain `DEFERRED`.

## Evidence

- Ghidra pseudocode: `stock_decompiled/0118_0011049c_suspend_tp_need_awake.c`
- Ghidra P-Code: `stock_pcode/0118_0011049c_suspend_tp_need_awake.jsonl`
- Stock/candidate Assembly: `stock_function_assembly.asm`, `candidate_assembly.asm`
- Exact linked source: `suspend_tp_need_awake_exact.S`
- AArch64 comparison: `assembly_comparison.json`
- KCFI comparison: `stock_kcfi.json`, `candidate_kcfi.json`, `kcfi_comparison.json`
- Strict Joern: `joern_final/joern_gate_report.json`, `joern_final/joern_gate_summary.json`
- Host ASan/UBSan harness: `host_harness.c`, `host_harness_report.json`
- Reproducible Docker build: `canonical_build_report.json`, `candidate_zte_tpd.ko`
- Source synchronization: `source_sync_report.json`
- Microtask decision: `microtask_attestation.json`

## Reproduction order

1. Recreate the documented Docker image, toolchain volume and curated source snapshot.
2. Run the source synchronization and canonical two-cycle Docker build.
3. Extract the stock and candidate function Assembly from their `.ko` files.
4. Require the AArch64 opcode/relocation comparison and KCFI comparison to pass.
5. Compile and execute the host harness with ASan and UBSan twice.
6. Run the strict Joern gate and require zero parser problems and unresolved calls.
7. Keep the result `OFFLINE_EXACT` until a separate controlled hardware plan is approved.

No smartphone test is part of this attestation.
