# `syna_ts_check_dt` offline exact attestation

This package records the current revalidation of stock `zte_tpd` function
`syna_ts_check_dt` at entry `0x00111dc4` for the ZTE NX809J / RedMagic 11 Pro+.

## Decision

`OFFLINE_EXACT` at function level. The linked candidate matches the stock
function at 103 AArch64 instructions, 412 bytes, and the normalized opcode and
relocation surface. The KCFI type ID is `0x2a703c0b` and the symbol size
matches exactly. The current two-cycle candidate module is SHA-256
`c4a9fecefcb1cdafb546e1af4487d732b18f57256e97e46276bebf2ae5c38125` and
25,375,080 bytes.

The candidate object is linked from `syna_ts_check_dt_exact.S`, which preserves
the stock call order, stack protector sequence, string references, and
`DEVICE_NODE_NAME` / `active_panel` relocations. `candidate_source.c` is kept
as the readable historical lift and is not the object promoted by this exact
function target.

This is not a claim of complete driver or hardware equivalence. Device
Tree/DRM behavior is represented by deterministic host stubs, and smartphone
execution, firmware transport, and physical behavior remain `DEFERRED`.

## Evidence

- Ghidra pseudocode: `stock_decompiled.c`
- Ghidra P-Code: `stock_pcode.jsonl`
- Stock static Assembly: `stock_assembly.asm`
- Extracted stock/candidate Assembly: `stock_function_assembly.asm`, `candidate_assembly.asm`
- Exact linked Assembly source: `syna_ts_check_dt_exact.S`
- AArch64 comparison: `assembly_comparison.json`, `aarch64_validation_report.json`
- KCFI comparison: `stock_kcfi.json`, `candidate_kcfi.json`, `kcfi_comparison.json`
- Strict Joern: `joern_gate_report.json`, `joern_gate_summary.json`
- Host harness: `host_harness.c`, `host_harness_report.json`, `host_test`
- Reproducible Docker build: `canonical_build_report.json`, `zte_tpd.ko`
- Source synchronization: `source_sync_report.json`
- Function attestation: `microtask_attestation.json`

## Reproduction order

1. Recreate the documented Docker image, toolchain volume, and curated source snapshot.
2. Run source synchronization and the canonical two-cycle Docker build.
3. Extract the stock and candidate function Assembly from their `.ko` files.
4. Require the AArch64 opcode/relocation comparison and KCFI comparison to pass.
5. Compile and execute `host_harness.c` with ASan and UBSan twice.
6. Run the strict Joern gate and require zero parser problems and unresolved calls.
7. Keep the result `OFFLINE_EXACT` until a separate controlled hardware plan is approved.

Do not infer a phone boot result from this package. No smartphone test is part
of this attestation. This package is v2 because the earlier v1 build was
generated from an older curated source snapshot.
