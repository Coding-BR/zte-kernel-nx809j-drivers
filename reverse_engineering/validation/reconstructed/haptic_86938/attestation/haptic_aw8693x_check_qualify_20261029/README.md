# aw8693x_check_qualify attestation

## Result

The function passes all eight automated core gates in `core_runnerbound_v3/hard_protocol_report.json`. Stock and candidate match at 43 AArch64 instructions (172 bytes), including both log paths, the `i2c_r_bytes` call, both `_printk` calls, and the stack-canary relocation. KCFI matches at `0x512cf1f0`. Fresh Ghidra normalized-C and P-Code comparisons pass.

Ghidra left the stock return type undefined. The `aw_i2c_probe` callsite checks the result for a negative value, and the stock function returns `0` or `-34`; the candidate therefore uses `int(struct aw_haptic *)`. The candidate module confirms that ABI through its matching KCFI type ID.

The function reads one byte from register `0x64` and ignores the helper status. It classifies the byte as signed: `0x80..0xff` logs `qualified chip` and returns `0`; `0x00..0x7f` logs `unqualified chip` and returns `-ERANGE`. The host harness covers five inputs and rejects seven seeded mutants under ASan/UBSan. It checks only the wrapper contract, not kernel execution or physical I2C.

## Hash-bound artifacts

- Candidate source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_059_aw8693x_check_qualify.c`
- Candidate module: `candidate_module/haptic_86938_fn059.ko`
- Candidate module SHA-256: `03cd2410b622949b4a6a97b4069381bfd30705ca56d2eb9e4b27586544defb04`
- Candidate module size: 2,567,992 bytes
- Fresh candidate Ghidra export: `../f059/ghidra_export_v1/haptic_86938_fn059.ko/`
- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`
- Final plan: `plan_v4/hard_protocol_plan.json` (`READY`)
- Final core report: `core_runnerbound_v4/hard_protocol_report.json` (`CORE_GATES_PASS`)
- Host harness report: `host_harness/harness_result.json`
- Job definition: `../../../../../../workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_aw8693x_check_qualify_20261029.json`

Two clean builds used `nubia-sm8850-kernel-builder:latest`, toolchain volume `nubia_sm8850_kernel_toolchains`, and Clang revision `clang-r536225`; both produced identical module bytes. The full-driver audit remains `incomplete_or_failed` because the combined reconstruction is partial and full-module metadata/KMI parity is not established. The function candidate remains unpromoted.

## Scope limits

The map remains `candidate_under_static_validation`; semantic equivalence is `NOT_ESTABLISHED`, and promotion is not authorized. Independent review, whole-driver equivalence, complete target-kernel/KMI compatibility, and hardware behavior remain unestablished.
