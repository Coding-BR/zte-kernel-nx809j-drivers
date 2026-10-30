# `seq_show` static reconstruction

Stock identity: `seq_show@0x0010aa2c`, body size 336 bytes, from stock module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

The routine calls the `get_wav_seq` operations-table callback at offset `0x120` with count 8, then formats the eight cached sequence bytes as `seqN = value` lines into the supplied buffer. It uses the stock 4096-byte bound and accumulates each `snprintf` return value.

The candidate is [haptic_86938_fn_125_seq_show.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_125_seq_show.c). The callback type is `void (struct aw_haptic *, unsigned int)` with KCFI ID `0xd37b6e95`; the sysfs show function uses KCFI ID `0xae84bcd4`.

## Evidence

- All eight automated core gates pass in [hard_protocol_report.json](core_final_v1/hard_protocol_report.json): input and map identity, scoped Joern checks, two reproducible Docker builds, exact assembly and relocation comparison, KCFI, and fresh Ghidra C/P-Code comparison.
- Stock and candidate match all 84 AArch64 instructions, the 336-byte function body, and relocations. The candidate KCFI type ID is `0xae84bcd4`, matching stock.
- The Docker candidate module SHA-256 is recorded in [ghidra_candidate_export_run.json](ghidra_candidate_export_run.json); the module is archived in `candidate_module/`.
- Fresh Ghidra 12.1.2 analysis exports the candidate module and confirms `seq_show` at `0x00107d00` with a 336-byte body. The final semantic report records normalized C and P-Code operation-shape comparison against stock.

This is a function-scoped static result. The reconstruction map remains `candidate_under_static_validation`; the protocol runner does not authorize module promotion. Whole-driver equivalence and hardware behavior remain unverified.
