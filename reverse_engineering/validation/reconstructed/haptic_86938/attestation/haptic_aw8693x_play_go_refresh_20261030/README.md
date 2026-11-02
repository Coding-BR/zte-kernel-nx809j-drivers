# `aw8693x_play_go` current-source static attestation

Stock identity: `aw8693x_play_go@0x00104404`, body size 152 bytes, from stock module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

The function logs the low bit of `flag`, writes play code 1 when the bit is set and 2 otherwise, then sends one byte to register 9 through `i2c_w_bytes`. The current candidate matches stock's stack-protector access, register and buffer arguments, and callback behavior. KCFI ID `0x1d0adf6e` matches stock.

The Docker candidate module SHA-256 is `abf59d499834b0909141b4256c09a4c0ef4cb14fab2b41c5e069b30da4f1a948` (5,820,144 bytes). Its Ghidra export is shared with [the `seq_show` attestation](../haptic_seq_show_20261029/candidate_ghidra_v1/haptic_86938.ko/manifest.json) because the complete module SHA-256 and MD5 match. That export contains `aw8693x_play_go` at `0x0010584c` with a 152-byte body.

## Evidence

- All eight automated core gates pass in [hard_protocol_report.json](core_final_v1/hard_protocol_report.json): input and map identity, scoped Joern checks, two reproducible Docker builds, exact assembly and relocation comparison, KCFI, and Ghidra C/P-Code comparison.
- Stock and candidate match all 38 AArch64 instructions, the 152-byte body, and relocations.
- The current source is [haptic_86938_fn_099_aw8693x_play_go.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_099_aw8693x_play_go.c). The candidate module is archived in `candidate_module/`, with identity recorded in [ghidra_candidate_export_run.json](ghidra_candidate_export_run.json).

This is a function-scoped static result. The map remains `candidate_under_static_validation`; module promotion, whole-driver equivalence, and hardware behavior are not established by these gates.
