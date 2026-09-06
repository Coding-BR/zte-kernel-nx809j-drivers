# Exact revalidation: 014_tpd_reset_fw_data_pos_and_size

This package records the current Docker-based revalidation of `tpd_reset_fw_data_pos_and_size` at stock entry `00107f84`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 7/7 instructions, 28/28 bytes, relocations resolved identically.
- KCFI: stock and candidate type ID `0xe5c47d60`.
- Joern strict: PASS, zero parse problems, one-to-one source/Ghidra mapping.
- Dedicated ASAN/UBSAN harness: 4/4 tests in each of 2 cycles.

The dedicated harness is intentionally isolated from the shared proc callback suite, whose unrelated pending source changes currently prevent it from compiling cleanly. It models the stock cdev offsets directly and does not replace physical NX809J validation.
