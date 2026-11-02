# aw8693x_get_osc_status reconstruction

## Stock behavior

Stock entry `0010626c` is 96 bytes (24 AArch64 instructions). It initializes a local byte to zero, calls `i2c_r_bytes(haptic, 0x04, &data, 1)`, ignores the helper status, and returns `data & 1` on the normal path. The stack-canary failure path calls `__stack_chk_fail`. Stock Ghidra identifies the same byte return and mask.

The source signature `u8 (struct aw_haptic *)` emits the stock KCFI type ID `0x784b3854`. Strict assembly comparison matches all 24 instructions, both call relocations, section, and symbol size.

## Validation

`core_runnerbound_v2/hard_protocol_report.json` passes all eight automated core gates: input and map identity, scoped Joern and slice, reproducible Docker build, assembly/relocations, KCFI, and fresh candidate Ghidra C/P-Code. Both clean pinned Docker builds produced the same candidate module SHA-256: `49308a3932c67f689404f598487f537e00ea573a6e8b882a336a2fada1f4ce9a` (2,547,952 bytes). The candidate module and fresh Ghidra export are preserved in this attestation.

The Docker ASan/UBSan host harness checks five data/error cases and rejects four seeded mutations covering register, transfer length, initial value, and return mask. `core_runnerbound_v1` is retained as diagnostic evidence; its only missing core gate was the candidate Ghidra export, which was added and hash-bound for v2.

## Limits

This is a function-scoped static core validation, not whole-driver verification or module promotion. The remaining evidence gates include DT context, hardware runtime, review of host harness evidence, independent review, LLVM IR diagnosis, register/bus ledger, and semantic counterexamples. Hardware behavior and whole-driver equivalence remain unverified; 111 stock functions remain `NOT_STARTED`.
