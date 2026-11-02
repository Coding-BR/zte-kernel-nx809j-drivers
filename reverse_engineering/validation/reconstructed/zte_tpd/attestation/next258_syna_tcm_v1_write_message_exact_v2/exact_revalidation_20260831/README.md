# `syna_tcm_v1_write_message` — offline exact revalidation

This package records the 2026-08-31 revalidation of microtask `258_syna_tcm_v1_write_message` against stock entry `0011eeac` and stock body size `2084` bytes.

## Result

- Core protocol: `CORE_GATES_PASS`.
- AArch64 relocation-aware assembly: PASS; candidate and stock both contain 521 instructions and the candidate symbol body is 2,084 bytes.
- Docker canonical build: PASS for two clean cycles using `nubia-sm8850-kernel-builder:latest`, `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- KCFI: PASS; stock and candidate type ID is recorded in `kcfi.json` with matching section and symbol size.
- Joern scoped graph and slice: PASS.
- Ghidra P-Code operation shape and body size: PASS.
- Direct normalized Ghidra C equality: FAIL, retained as a raw diagnostic only. The candidate has one unresolved internal call rendered as `FUN_0014565c` where stock resolves `syna_tcm_v1_read_message`; the explicit one-for-one fallback records equal C call-set cardinality and equal P-Code CALL count (38 vs. 38). Exact body bytes and independent assembly remain mandatory.
- Existing direct source harness: PASS for eight cases in two repetitions under ASan/UBSan. It remains a host contract test with stubbed platform resources, not proof of Android runtime or physical hardware behavior.

`promotion_decision.json` is authoritative for scope: this runner reports `NOT_AUTHORIZED` because physical hardware and independent review are outside the offline protocol. `PROMOTED_OFFLINE_EXACT` in the reconstruction manifest means function-level offline evidence, not hardware certification.

## Evidence map

- `compile.json` / `canonical_build_report.json`: clean Docker build and binary identity.
- `assembly.json` / `aarch64_comparison.json`: relocation-aware candidate-versus-stock assembly comparison.
- `kcfi.json` / `kcfi_comparison.json`: KCFI type, section and size comparison.
- `test.json` / `host_harness_report.json`: direct source harness with sanitizers.
- `joern.json`, `joern_gate_summary.json`, `joern_slices.json`: scoped graph and slice evidence.
- `ghidra_semantic_comparison.json`: candidate/stock decompilation, P-Code shape and explicit unresolved-call-name fallback.
- `hard_protocol_report.json`, `hard_protocol_plan.json`, and `promotion_decision.json`: reproducible protocol record and promotion boundary.
