# aw8693x_rtp_get_fifo_aes reconstruction

## Stock behavior

Stock entry `00106334` is 96 bytes (24 AArch64 instructions). It initializes a local byte to zero, calls `i2c_r_bytes(haptic, 0x01, &data, 1)`, ignores the helper status, and returns bit 4 of the byte on the normal path. The stack-canary failure path calls `__stack_chk_fail`.

The candidate signature `u8 (struct aw_haptic *)` emits the stock KCFI type ID `0x784b3854`. Strict assembly comparison matches all 24 instructions, both call relocations, section, and symbol size.

## Validation

`core_runnerbound_v2/hard_protocol_report.json` passes all eight automated core gates: input and map identity, scoped Joern and slice, reproducible Docker build, assembly/relocations, KCFI, and fresh candidate Ghidra C/P-Code. Both clean pinned Docker builds produced the same candidate module SHA-256: `2817761e4806c0a8981ce2b571c77ade86d296a53801c2d01d82978c8de337ce` (2,550,760 bytes). The candidate module and fresh Ghidra export are preserved here.

The Docker ASan/UBSan host harness checks five data/error cases and rejects four seeded mutations covering register, transfer length, initial value, and returned bit. `core_runnerbound_v1` is retained as diagnostic evidence; its only missing core gate was the candidate Ghidra export, which was added and hash-bound for v2.

## Limits

This is a function-scoped static core validation, not whole-driver verification or module promotion. DT context, hardware runtime, review of host harness evidence, independent review, LLVM IR diagnosis, register/bus ledger, and semantic counterexamples remain required. Hardware behavior and whole-driver equivalence remain unverified; 109 stock functions remain `NOT_STARTED`.
