# Exact revalidation: 015_tpd_proc_deinit

This package records the current Docker-based revalidation of `tpd_proc_deinit` at stock entry `00107fa4`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 136/136 instructions, 544/544 bytes, relocations resolved identically.
- KCFI: stock and candidate type ID `0xe5c47d60`.
- Joern strict: PASS, zero parse problems, one-to-one source/Ghidra mapping.
- Dedicated ASAN/UBSAN harness: 3/3 tests in each of 2 cycles, including all 30 removal calls.

The dedicated harness is isolated from the shared work/void suite, whose unrelated pending ABI and assembly changes prevent it from compiling cleanly. It does not replace physical NX809J validation.
