# aw8693x_irq_clear attestation

## Result

The function passes all eight automated core gates in `core_runnerbound_v3/hard_protocol_report.json`. Stock and candidate match at 31 AArch64 instructions (124 bytes), including the I2C read, diagnostic string, `_printk`, and stack-canary relocations. The KCFI type ID matches at `0x847a0830`. Fresh Ghidra normalized-C and P-Code comparisons pass.

The candidate initializes byte zero of a four-byte local buffer, reads one byte from register `0x02`, ignores the helper return value, and emits the stock `SYSINT` diagnostic with line 1099, function name, and value.

The ASan/UBSan host harness passes its baseline and rejects six seeded mutants. It checks the I2C register/length, initial value, ignored helper status, and exact logging arguments. It exercises a host wrapper only; it does not execute kernel code or physical I2C.

## Hash-bound artifacts

- Candidate source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_058_aw8693x_irq_clear.c`
- Candidate module: `candidate_module/haptic_86938_fn058.ko`
- Candidate module SHA-256: `d67c51d89fc29338e308010849225bde90fbbd2480f1bd4a3cebdb138bb07c0d`
- Candidate module size: 2,565,408 bytes
- Fresh candidate Ghidra export: `../f058/ghidra_export_v1/haptic_86938_fn058.ko/`
- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`
- Final plan: `plan_v3/hard_protocol_plan.json` (`READY`)
- Final core report: `core_runnerbound_v3/hard_protocol_report.json` (`CORE_GATES_PASS`)
- Host harness report: `host_harness/harness_result.json`
- Job definition: `../../../../../../workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_aw8693x_irq_clear_20261029.json`

Two clean Docker builds used `nubia-sm8850-kernel-builder:latest`, toolchain volume `nubia_sm8850_kernel_toolchains`, and Clang revision `clang-r536225`; both produced identical module bytes. The full-driver audit remains `incomplete_or_failed`: it reports a missing promoted `.ko`, module metadata/KMI parity failures, and unmapped functions. That aggregate result is retained as a limitation; this function-scoped Docker gate asserts only successful reproducible builds. The runner now makes complete-driver auditing opt-in for partial-function jobs and requires a zero command exit code for every Docker gate.

## Scope limits

The map remains `candidate_under_static_validation`; semantic equivalence is `NOT_ESTABLISHED`, and promotion is not authorized. Whole-driver equivalence, independent review, complete target-kernel/KMI compatibility, and hardware behavior remain unestablished.
