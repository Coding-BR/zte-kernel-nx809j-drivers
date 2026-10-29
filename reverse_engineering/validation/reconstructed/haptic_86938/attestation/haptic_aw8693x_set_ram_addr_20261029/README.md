# aw8693x_set_ram_addr reconstruction

## Stock behavior

Stock entry `00105704` is 100 bytes (25 AArch64 instructions). It loads the 16-bit `memstart_addr` from `haptic + 0x458`, swaps the byte order, and calls `i2c_w_bytes(haptic, 0x40, &wire_address, 2)`. The helper status is ignored; the stack-canary failure path calls `__stack_chk_fail`.

The candidate signature is `void aw8693x_set_ram_addr(struct aw_haptic *)`, with KCFI type ID `0x847a0830`. Strict assembly comparison matches all 25 instructions, both call relocations, section, and symbol size.

## Validation

The report at `core_runnerbound_v2/hard_protocol_report.json` passes all eight automated core gates: input and map identity, scoped Joern and slice, reproducible Docker build, assembly/relocations, KCFI, and fresh candidate Ghidra C/P-Code. Both clean pinned Docker builds produced module SHA-256 `9af25b2c8a50eb5053abda0b0868ee663179d4c4443fdc1b97dfcf3a49ce88ee` (2,557,472 bytes). The candidate module and fresh Ghidra export are preserved here.

The ASan/UBSan host harness checks six 16-bit address values, verifies big-endian payload bytes, register, length, and one helper call, and rejects four seeded mutants for register, length, field offset, and byte order. `core_runnerbound_v1` is retained as the first-pass diagnostic; it lacked the fresh candidate Ghidra export, which was added and hash-bound for v2.

## Limits

This is function-scoped static validation, not whole-driver verification or module promotion. The helper's physical I2C behavior, device runtime, independent review, complete target-kernel identity, and whole-driver semantic equivalence remain unverified; 105 stock functions remain `NOT_STARTED`.
