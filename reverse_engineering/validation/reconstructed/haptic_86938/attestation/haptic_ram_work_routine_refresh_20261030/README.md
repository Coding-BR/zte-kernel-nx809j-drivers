# `ram_work_routine` current-source static attestation

Stock identity: `ram_work_routine@0x0010e190`, body size 76 bytes, from stock module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

The routine recovers the enclosing haptic object from its embedded work item, clears the RAM initialization field, and calls `request_firmware_nowait` for the RAM image with `ram_load` as the callback. The current source revision matches the stock body, relocations, and KCFI type ID `0xa607748c`.

The Docker candidate module SHA-256 is `abf59d499834b0909141b4256c09a4c0ef4cb14fab2b41c5e069b30da4f1a948` (5,820,144 bytes). Its Ghidra export is shared with [the `seq_show` attestation](../haptic_seq_show_20261029/candidate_ghidra_v1/haptic_86938.ko/manifest.json) because the complete module SHA-256 and MD5 are identical. That export contains `ram_work_routine` at `0x0010429c` with a 76-byte body.

## Evidence

- All eight automated core gates pass in [hard_protocol_report.json](core_final_v1/hard_protocol_report.json): input and map identity, scoped Joern checks, two reproducible Docker builds, exact assembly and relocation comparison, KCFI, and Ghidra C/P-Code comparison.
- Stock and candidate match all 19 AArch64 instructions, the 76-byte function body, and relocations.
- The current source is [haptic_86938_fn_082_ram_work_routine.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_082_ram_work_routine.c). The candidate module is archived in `candidate_module/`, with module identity recorded in [ghidra_candidate_export_run.json](ghidra_candidate_export_run.json).

This is a function-scoped static result. The map remains `candidate_under_static_validation`; module promotion, whole-driver equivalence, and hardware behavior are not established by these gates.
