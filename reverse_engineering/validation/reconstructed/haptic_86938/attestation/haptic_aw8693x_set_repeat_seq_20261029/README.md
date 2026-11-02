# aw8693x_set_repeat_seq attestation

## Result

The function passes all eight automated core gates in `core_runnerbound_v5/hard_protocol_report.json`. Stock and candidate match at 30 AArch64 instructions (120 bytes), including relocations to `i2c_w_bytes`, `i2c_w_bits`, and `__stack_chk_fail`. The KCFI type ID matches at `0x1d0adf6e`. Fresh Ghidra normalized-C and P-Code comparisons pass.

The first C candidate generated one extra `str wzr` because the kernel build automatically initialized the four-byte local array, producing a 124-byte function. The stock code initializes only byte zero. Applying the kernel `__uninitialized` attribute to the local array removed the extra store and restored the exact stock body. Only byte zero is initialized before `i2c_w_bytes` is called with length 1.

## Behavior recovered

1. Write the supplied sequence byte to register `0x0a` with a one-byte `i2c_w_bytes` transfer.
2. Update register `0x12` through `i2c_w_bits`, using mask `0xffffff0f` and value `0xf0`.
3. Ignore both helper return values and continue through the stack-canary check.

The ASan/UBSan host harness runs six sequence values, exercises negative helper returns, and rejects six seeded mutants. It validates the wrapper's call contract only; it does not execute kernel code or physical I2C.

## Hash-bound artifacts

- Candidate source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_057_aw8693x_set_repeat_seq.c`
- Candidate module: `candidate_module/haptic_86938_fn057.ko`
- Candidate module SHA-256: `44d765dc8c9dc51788c462df1b74fab1fd8bfaa7a2606ebc411c9503c2b080e0`
- Candidate module size: 2,563,328 bytes
- Candidate Ghidra export: `../f057/ghidra_export_v2/haptic_86938_fn057.ko/`
- Candidate export manifest SHA-256: `2e39b79613600bc7a2d39248150309da3cc9dd6e674a8f174fcc06fd8383ecaa`
- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`
- Final core report: `core_runnerbound_v5/hard_protocol_report.json`
- Host harness report: `host_harness/harness_result.json`
- Initial compiler-mismatch report: `core_runnerbound_v1/hard_protocol_report.json`
- Job definition: `../../../../../../workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_aw8693x_set_repeat_seq_20261029.json`

Two clean builds used `nubia-sm8850-kernel-builder:latest`, toolchain volume `nubia_sm8850_kernel_toolchains`, and Clang revision `clang-r536225`; both produced identical module bytes.

## Scope limits

The map remains `candidate_under_static_validation`; this function was not promoted. Whole-driver semantic equivalence, complete kernel/KMI compatibility, independent review, and hardware behavior remain unestablished.
