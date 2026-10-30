# aw8693x_ram_init reconstruction

## Stock behavior

Stock entry `001044a0` is 80 bytes (20 AArch64 instructions). It branches on bit 0 of `ram_mode`. When clear, it calls `i2c_w_bits(aw, 0x45, 0xfffffffb, 0)`. When set, it writes value 4 with the same register and mask, then calls `usleep_range_state(500, 600, 2)`. Both I2C helper statuses are ignored.

The candidate signature is `void aw8693x_ram_init(struct aw_haptic *, u8)`, with KCFI type ID `0x1d0adf6e`. The AArch64 naked implementation preserves the exact stock block layout; the host-only C branch exercises the same contract under ASan/UBSan.

## Validation

`core_runnerbound_v8/hard_protocol_report.json` passes all eight automated core gates: input and map identity, scoped Joern and slice, reproducible Docker build, assembly/relocations, KCFI, and fresh candidate Ghidra C/P-Code. Strict comparison matches all 20 instructions, all three call relocations, and the 80-byte function. Both clean pinned Docker builds produced module SHA-256 `dc2ae2d099222503e87a19bc215f4000cfccb1819813de5750013bce455f4a1c` (2,558,736 bytes); the candidate module and Ghidra export are preserved here.

The ASan/UBSan harness checks five flag values, including nonzero values with bit 0 clear, verifies register/mask/value and conditional delay, and rejects five seeded mutants for register, mask, branch, delay, and write value.

## Limits

This is function-scoped static validation, not whole-driver verification or module promotion. Physical I2C and timing behavior, independent review, complete target-kernel identity, and whole-driver semantic equivalence remain unverified; 104 stock functions remain `NOT_STARTED`.
