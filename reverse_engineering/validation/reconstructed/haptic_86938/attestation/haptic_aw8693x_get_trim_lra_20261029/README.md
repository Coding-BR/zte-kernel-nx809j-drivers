# aw8693x_get_trim_lra reconstruction

## Stock behavior

Stock entry `001061a8` is 96 bytes (24 AArch64 instructions). It initializes a local byte to zero, calls `i2c_r_bytes(haptic, 0x5d, &data, 1)`, ignores the helper status, and returns `data & 0x7f` on the normal path. The stack-canary failure path calls `__stack_chk_fail`.

The candidate signature `u8 (struct aw_haptic *)` emits stock KCFI type ID `0x784b3854`. Strict assembly comparison matches all 24 instructions, both call relocations, section, and symbol size.

## Validation

`core_runnerbound_v2/hard_protocol_report.json` passes all eight automated core gates: input and map identity, scoped Joern and slice, reproducible Docker build, assembly/relocations, KCFI, and fresh candidate Ghidra C/P-Code. Both clean pinned Docker builds produced candidate module SHA-256 `acbd848022431a94d39eba95eabda49aad96caa1c6771c24643c9255051e147e` (2,555,776 bytes). The candidate module and fresh Ghidra export are preserved in this attestation.

The Docker ASan/UBSan harness checks five boundary/error cases and rejects four seeded mutants for register, transfer length, initial value, and mask. `core_runnerbound_v1` is retained as diagnostic evidence; its only missing core gate was the fresh candidate Ghidra export, which was added and hash-bound for v2.

## Limits

This is a function-scoped static core validation, not whole-driver verification or module promotion. DT context, hardware runtime, review of host harness evidence, independent review, LLVM IR diagnosis, register/bus ledger, and semantic counterexamples remain required. Hardware behavior and whole-driver equivalence remain unverified; 106 stock functions remain `NOT_STARTED`.
