# `syna_tcm_v1_read_message` — offline exact revalidation

This package records the 2026-08-31 revalidation of microtask `261_syna_tcm_v1_read_message` against stock entry `0011f838` and stock body size `5484` bytes.

## Result

- Core protocol: `CORE_GATES_PASS`.
- AArch64 relocation-aware assembly: PASS; candidate and stock both contain 1,371 instructions and the candidate symbol body is 5,484 bytes.
- Docker canonical build: PASS for two clean cycles using `nubia-sm8850-kernel-builder:latest`, `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- KCFI: PASS; stock and candidate type ID is `0xe10dda21` and symbol size is 5,484 bytes.
- Joern scoped graph and slice: PASS.
- Ghidra P-Code operation shape and body size: PASS.
- Direct normalized Ghidra C equality: FAIL, retained as a raw diagnostic only. The explicit P-Code-authoritative fallback records an external-label control-flow decompiler artifact with equal CALL operation counts (155 vs. 155) and requires the independent assembly gate.
- Existing direct source harness: PASS for five cases in two repetitions under ASan/UBSan. Its documented limitations remain: it stubs transport, memory, locks and callbacks, and does not prove continued-read, response dispatch, exact AArch64 identity, KCFI or hardware behavior.

`promotion_decision.json` is authoritative for scope: this runner reports `NOT_AUTHORIZED` because physical hardware and independent review are outside the offline protocol. `PROMOTED_OFFLINE_EXACT` in the reconstruction manifest means function-level offline evidence, not hardware certification.

## Evidence map

- `compile.json` / `canonical_build_report.json`: clean Docker build and binary identity.
- `assembly.json` / `aarch64_comparison.json`: relocation-aware candidate-versus-stock assembly comparison.
- `kcfi.json` / `kcfi_comparison.json`: KCFI type, section and size comparison.
- `test.json` / `host_harness_report.json`: direct source harness with sanitizers.
- `joern.json`, `joern_gate_summary.json`, `joern_slices.json`: scoped graph and slice evidence.
- `ghidra_semantic_comparison.json`: repaired candidate export, P-Code shape, and explicit fallback rationale.
- `hard_protocol_report.json`, `hard_protocol_plan.json`, and `promotion_decision.json`: reproducible protocol record and promotion boundary.
