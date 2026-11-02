# `aw8693x_set_wav_loop` current-source static attestation

Stock identity: `aw8693x_set_wav_loop@0x00104c0c`, body size 64 bytes, from stock module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

This refresh binds the current source revision, including its AArch64 assembly include, to the pinned Docker build and static gates. The callback updates the selected loop nibble with `i2c_w_bits`; the stock and candidate routines match all 16 instructions and the relocation set. KCFI ID `0x7b877e65` matches stock.

The Docker candidate module SHA-256 is `abf59d499834b0909141b4256c09a4c0ef4cb14fab2b41c5e069b30da4f1a948` (5,820,144 bytes). Its Ghidra export is shared with [the `seq_show` attestation](../haptic_seq_show_20261029/candidate_ghidra_v1/haptic_86938.ko/manifest.json) because the complete candidate module SHA-256 and MD5 are identical; the export contains `aw8693x_set_wav_loop` at `0x00103268` with a 64-byte body.

## Evidence

- All eight automated core gates pass in [hard_protocol_report.json](core_final_v1/hard_protocol_report.json): input and map identity, scoped Joern checks, two reproducible Docker builds, exact assembly and relocation comparison, KCFI, and fresh Ghidra C/P-Code comparison.
- The current source is [haptic_86938_fn_043_aw8693x_set_wav_loop.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_043_aw8693x_set_wav_loop.c); its included AArch64 body is covered by the source identity manifest.
- The candidate module is archived in `candidate_module/`, with its Ghidra identity recorded in [ghidra_candidate_export_run.json](ghidra_candidate_export_run.json).

This is a function-scoped static result. The map remains `candidate_under_static_validation`; module promotion, whole-driver equivalence, and hardware behavior are not established by these gates.
