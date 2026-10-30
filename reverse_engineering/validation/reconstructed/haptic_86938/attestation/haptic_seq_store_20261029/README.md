# `seq_store` static reconstruction

Stock identity: `seq_store@0x0010ab80`, body size 316 bytes, from stock module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

The routine parses a sequence index and waveform value in hexadecimal. After a successful parse it checks the index against 7 and the waveform value against the device limit, logs the accepted value, locks the driver mutex, updates the indexed sequence byte, calls the `set_wav_seq` operations-table callback, and unlocks. The out-of-range index path traps with `brk #0x5512` while the mutex is held, matching the stock control flow.

The candidate is [haptic_86938_fn_124_seq_store.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_124_seq_store.c). Narrow AArch64 `asm goto` blocks preserve the stock unsigned range branches and trap location; the remaining behavior is expressed in C.

## Evidence

- All eight automated core gates pass in [hard_protocol_report.json](core_final_v1/hard_protocol_report.json): input and map identity, scoped Joern checks, two reproducible Docker builds, exact assembly and relocation comparison, KCFI, and fresh Ghidra C/P-Code comparison.
- Stock and candidate match all 79 AArch64 instructions, the 316-byte function body, and relocations. The candidate KCFI type ID is `0x95c41a97`, matching stock.
- The Docker candidate module SHA-256 is `0b0a9ad01af17c6f0ea24d47c04f53af5d09a2a89d742204dce15c5481956c07` (5,738,912 bytes); it is archived in `candidate_module/`.
- Fresh Ghidra 12.1.2 analysis exported 128 functions from that module. The candidate `seq_store` is at `0x00107b70`; normalized decompiled C, P-Code operation shape, and function bytes match stock.

This is a function-scoped static result. The reconstruction map remains `candidate_under_static_validation`; the protocol runner does not authorize module promotion. Whole-driver equivalence and hardware behavior remain unverified.
