# aw8693x_get_glb_state reconstruction

## Stock behavior and signature finding

Stock entry `0010620c` is 92 bytes (23 AArch64 instructions). It initializes a local byte to zero, calls `i2c_r_bytes(haptic, 0x3f, &data, 1)`, ignores the helper status, and returns the byte in `w0` on the normal path. The stack-canary failure path calls `__stack_chk_fail`.

The stock Ghidra decompiler labels the function `void` and omits the normal return value. The stock instructions load the local byte into `w0` before `ret`; the candidate declared `u8 (struct aw_haptic *)`. The candidate module emits the stock KCFI type ID `0x784b3854`, and strict function assembly comparison matches all 23 instructions, both call relocations, section, and symbol size. This supports the `u8` signature despite the decompiler's lost return annotation. Normalized stock/candidate Ghidra C and P-Code also match; those comparisons preserve the decompiler's shared `void` rendering and do not independently establish the C return type.

The wrapper intentionally discards the result from `i2c_r_bytes`; when that helper leaves the output byte untouched, the wrapper returns the initialized zero. Hardware bus behavior has not been exercised.

## Validation

`core_runnerbound_v2/hard_protocol_report.json` passes all eight automated core gates: input and map identity, scoped Joern and slice, reproducible Docker build, assembly/relocations, KCFI, and candidate Ghidra C/P-Code. Both clean pinned Docker builds produced the same candidate module SHA-256: `029640ac156e760ad5b1b4da0f6cd099bb3474ee9e854d6d6e17173357f5ded8` (2,546,432 bytes). The candidate module and fresh Ghidra export are preserved in this attestation.

The Docker host harness passes the wrapper contract and rejects four seeded mutants covering register, transfer length, initial byte, and returned byte. The initial `core_runnerbound_v1` is retained as diagnostic evidence; its only missing core gate was the candidate Ghidra export, which was added and bound by hash for v2.

## Limits

This is a function-scoped static core validation, not whole-driver verification or authorization to promote the module. The runner still requires review of DT context, hardware runtime, host harness evidence, independent review, LLVM IR diagnosis, register/bus ledger, and semantic counterexamples. Hardware behavior and whole-driver semantic equivalence remain unverified; 112 stock functions remain `NOT_STARTED`.
