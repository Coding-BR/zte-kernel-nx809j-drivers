# aw8693x_rtp_get_fifo_afi reconstruction

## Stock behavior and state effects

Stock entry `00106398` is 156 bytes (39 AArch64 instructions). If the byte at `haptic + 0x11` equals 1, the function writes the 16-bit value `0x005b` to the field at `*(u64 *)(haptic + 0x328) + 2`. It then calls `i2c_r_bytes(haptic, 0x02, &data, 1)`, ignores the helper status, re-reads the mode byte, and clears the same 16-bit field to zero if the mode still equals 1. It returns bit 3 of the read byte. The stack-canary failure path calls `__stack_chk_fail`.

The candidate expresses the observed structure offsets and 16-bit writes directly. Its KCFI type ID matches stock at `0x784b3854`; strict assembly comparison matches all 39 instructions, both call relocations, section, and symbol size.

## Validation

`core_runnerbound_v2/hard_protocol_report.json` passes all eight automated core gates: input and map identity, scoped Joern and slice, reproducible Docker build, assembly/relocations, KCFI, and fresh candidate Ghidra C/P-Code. Both clean pinned Docker builds produced the same candidate module SHA-256: `619a98b8a5afeda8b8ea4bd8ce2450e040186d9730081167b9f83a1d92264993` (2,552,920 bytes). The candidate module and Ghidra export are preserved in this attestation.

The Docker ASan/UBSan harness checks five cases across mode 0, mode 1, other mode values, and a helper error with no output write. It rejects five seeded mutants covering the mode predicate, register, transfer length, threshold value, and returned bit. `core_runnerbound_v1` is retained as diagnostic evidence; its only missing core gate was the fresh candidate Ghidra export, which was added and hash-bound for v2.

## Limits

This is function-scoped static core validation, not whole-driver verification or module promotion. DT context, hardware runtime, review of host harness evidence, independent review, LLVM IR diagnosis, register/bus ledger, and semantic counterexamples remain required. Hardware behavior and whole-driver equivalence remain unverified; 108 stock functions remain `NOT_STARTED`.
