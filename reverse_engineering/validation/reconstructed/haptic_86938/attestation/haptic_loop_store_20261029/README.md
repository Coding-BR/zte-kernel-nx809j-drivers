# `loop_store` static reconstruction

Stock identity: `loop_store@0x0010ad0c`, body size 256 bytes, from stock module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

The stock routine parses two hexadecimal values. If parsing does not return exactly two, it returns the supplied byte count without changing state. On success it logs the values, locks the driver mutex, checks the sequence index, writes one loop byte, calls the operations-table callback at offset `0xc8`, unlocks, and returns the byte count. The callback receives `driver_data - 0xa8`, the sequence index, and the loop value. The out-of-range path traps with `brk #0x5512` while the mutex is held, matching stock.

The candidate is [haptic_86938_fn_123_loop_store.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_123_loop_store.c). A narrow AArch64 `asm goto` preserves the stock unsigned `cmp #7` / `b.hi` check and the exact trap immediate; the remaining behavior is expressed in C.

## Evidence

- All eight automated core gates pass in [hard_protocol_report.json](core_final_v1/hard_protocol_report.json): input and map identity, scoped Joern checks, two reproducible Docker builds, exact assembly and relocation comparison, KCFI, and fresh Ghidra C/P-Code comparison.
- Stock and candidate match all 64 AArch64 instructions, the 256-byte function body, and relocations. The candidate KCFI type ID is `0x95c41a97`, matching stock.
- The Docker candidate module SHA-256 is `ea6b019bc6e10529a80a3b3d4575fe8f57e343698a7c3d31c40851209eb9c7fd` (5,658,472 bytes); the module is archived in `candidate_module/`.
- Fresh Ghidra analysis used that Docker module. The function is at candidate entry `0x00107a24`; normalized decompiled C, P-Code operation shape, and function bytes match stock.

This is a function-scoped static result. The driver map remains `candidate_under_static_validation`; the protocol runner does not authorize module promotion. Hardware behavior and the outstanding whole-driver evidence remain unverified.
