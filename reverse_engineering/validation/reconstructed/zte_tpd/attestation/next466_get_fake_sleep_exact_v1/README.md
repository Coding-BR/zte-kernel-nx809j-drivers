# `get_fake_sleep` offline exact attestation

This package records the reconstruction of stock `zte_tpd` function
`get_fake_sleep` at entry `0x0010d078` for the ZTE NX809J / RedMagic 11
Pro+.

## Decision

`OFFLINE_EXACT` at function level. The linked candidate matches the stock
function at 60 AArch64 instructions, 240 bytes, and the normalized opcode and
relocation surface. The KCFI type ID is `0xf4e9d97c` and the symbol size
matches exactly.

The candidate object is linked from `get_fake_sleep_exact.S`. It preserves the
stock PAC/stack-protector sequence, callback offset `0xfc8` from `tpd_cdev`,
callback guard `0x73fc0d79`, the `%u` formatting path and the
`simple_read_from_buffer` call. `candidate_source.c` is the readable lift and
is not the object promoted by this exact target.

This is not a claim of complete driver or hardware equivalence. System-register
access, callback behavior, and user-buffer operations are represented by
deterministic host contracts; smartphone execution, firmware transport, and
physical behavior remain `DEFERRED`.

## Evidence

- Ghidra pseudocode: `stock_decompiled.c`
- Ghidra P-Code: `stock_pcode.jsonl`
- Stock static Assembly: `stock_assembly.asm`
- Extracted stock/candidate Assembly: `stock_function_assembly.asm`, `candidate_assembly.asm`
- Exact linked Assembly source: `get_fake_sleep_exact.S`
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
of this attestation.
