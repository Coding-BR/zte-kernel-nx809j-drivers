# aw8693x_get_first_wave_addr attestation

## Result

The function reconstruction passes all eight automated core gates in `core_runnerbound_v5/hard_protocol_report.json`. The stock and candidate bodies match exactly at 28 AArch64 instructions (112 bytes), including the `i2c_r_bytes` and `__stack_chk_fail` relocations. The KCFI ID is `0x13c2d68c`. Fresh Ghidra normalized-C and P-Code comparisons also pass.

The initial `u16 *` prototype was the defect: its candidate module emitted KCFI ID `0x99534276`, unlike stock. A preserved signature probe showed the stock ID for `void(struct aw_haptic *, char *)` and `void(struct aw_haptic *, u8 *)`; the corrected candidate uses `char *` and keeps the exact two-byte output copy. The KCFI ID alone does not distinguish those byte-pointer aliases.

## Behavior recovered

- Zero-initialize a three-byte stack buffer.
- Call `i2c_r_bytes(haptic, 0x42, buffer, 3)` and ignore its return value.
- Copy buffer bytes 1 and 2 to the caller's output buffer.
- Preserve the stock stack-canary check and failure call.

The host harness, built with ASan and UBSan in the pinned Docker image, passes five behavior cases and rejects five seeded mutants. It covers the wrapper contract only; it does not execute kernel code or physical I2C.

## Hash-bound artifacts

- Candidate module: `candidate_module/haptic_86938_fn056.ko`
- Candidate module SHA-256: `e3434212adf12f7d4ec0a031f71727ba4c2c081a692d1fbdfba3e677cf63a701`
- Candidate module size: 2,561,592 bytes
- Candidate Ghidra export: `../f056/ghidra_export/haptic_86938_fn056.ko/`
- Candidate export manifest SHA-256: `edaf617067ae1f2f3da453c4c8c1b7c7ab10122b9935c83a1e6f705f2363f8a1`
- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`
- Final core report: `core_runnerbound_v5/hard_protocol_report.json`
- Host harness report: `host_harness/harness_result.json`
- Job definition: `../../../../../../workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_aw8693x_get_first_wave_addr_20261029.json`

The pinned build used `nubia-sm8850-kernel-builder:latest`, toolchain volume `nubia_sm8850_kernel_toolchains`, and Clang revision `clang-r536225`. Two clean Docker builds produced identical module bytes.

## Scope limits

The map remains `candidate_under_static_validation`; this function was not promoted. Whole-driver semantic equivalence, complete kernel/KMI compatibility, independent review, and hardware behavior remain unestablished.
