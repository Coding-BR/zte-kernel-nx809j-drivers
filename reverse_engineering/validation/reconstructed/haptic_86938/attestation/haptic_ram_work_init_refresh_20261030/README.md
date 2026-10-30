# `ram_work_init` current-source static attestation

Stock identity: `ram_work_init@0x0010887c`, body size 120 bytes, from stock module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

The routine initializes the delayed-work object at `haptic + 0x3c0` and queues it on `system_wq`, CPU 32, after 2000 jiffies. Stock and candidate match all 30 AArch64 instructions, the 120-byte body, and relocations. This helper has no valid KCFI preamble; the protocol correctly records `KCFI=NOT_REQUIRED`.

The Docker candidate module SHA-256 is `abf59d499834b0909141b4256c09a4c0ef4cb14fab2b41c5e069b30da4f1a948` (5,820,144 bytes). Its Ghidra export is shared with [the `seq_show` attestation](../haptic_seq_show_20261029/candidate_ghidra_v1/haptic_86938.ko/manifest.json) because the full module SHA-256 and MD5 match. The export contains `ram_work_init` at `0x00104220` with a 120-byte body.

## Evidence

- The core protocol passes in [hard_protocol_report.json](core_final_v1/hard_protocol_report.json): input and map identity, scoped Joern checks, two reproducible Docker builds, exact assembly and relocation comparison, and Ghidra C/P-Code comparison. KCFI is correctly marked `NOT_REQUIRED` for this function.
- The current source is [haptic_86938_fn_067_ram_work_init.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_067_ram_work_init.c). The candidate module is archived in `candidate_module/`, with identity recorded in [ghidra_candidate_export_run.json](ghidra_candidate_export_run.json).

This is a function-scoped static result. The map remains `candidate_under_static_validation`; module promotion, whole-driver equivalence, and hardware behavior are not established by these gates.
