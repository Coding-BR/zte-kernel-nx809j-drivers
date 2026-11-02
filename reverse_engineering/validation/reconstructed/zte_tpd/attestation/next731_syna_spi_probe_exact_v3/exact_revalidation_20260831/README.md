# `syna_spi_probe` — offline exact revalidation

This package records the 2026-08-31 revalidation of microtask `201_syna_spi_probe` against stock entry `00118544` and stock body size `4392` bytes.

## Result

- Core protocol: `CORE_GATES_PASS`.
- AArch64 relocation-aware assembly: PASS; candidate and stock both contain 1,098 instructions and the candidate symbol body is 4,392 bytes.
- Docker canonical build: PASS for two clean cycles using `nubia-sm8850-kernel-builder:latest`, `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- KCFI: PASS; stock and candidate type ID is `0xba1082a1` and symbol size is 4,392 bytes.
- Joern scoped graph and slice: PASS.
- Ghidra P-Code operation shape and body size: PASS after repairing the stock Ghidra function boundary from 4,344 to the exact 4,392-byte ELF symbol body.
- Direct normalized Ghidra C equality: FAIL, retained as a raw diagnostic only. The exact `.inst` candidate export collapses the C CFG to the entry log call; the explicit fallback records this only because P-Code shape and CALL operation count (118 vs. 118) match and the independent assembly gate passes.
- Existing direct source harness: PASS for five cases in two repetitions under ASan/UBSan. It remains a host contract test with stubbed platform resources, not proof of Device Tree, SPI, regulator, GPIO or physical-hardware behavior.

`promotion_decision.json` is authoritative for scope: this runner reports `NOT_AUTHORIZED` because physical hardware and independent review are outside the offline protocol. `PROMOTED_OFFLINE_EXACT` in the reconstruction manifest means function-level offline evidence, not hardware certification.

## Evidence map

- `compile.json` / `canonical_build_report.json`: clean Docker build and binary identity.
- `assembly.json` / `aarch64_comparison.json`: relocation-aware candidate-versus-stock assembly comparison.
- `kcfi.json` / `kcfi_comparison.json`: KCFI type, section and size comparison.
- `test.json` / `host_harness_report.json`: direct source harness with sanitizers.
- `joern.json`, `joern_gate_summary.json`, `joern_slices.json`: scoped graph and slice evidence.
- `ghidra_semantic_comparison.json`: repaired stock and candidate exports, P-Code shape, and explicit fallback rationale.
- `ghidra_repair_manifest.json`: exact boundary repair commands and hashes.
- `hard_protocol_report.json`, `hard_protocol_plan.json`, and `promotion_decision.json`: reproducible protocol record and promotion boundary.
