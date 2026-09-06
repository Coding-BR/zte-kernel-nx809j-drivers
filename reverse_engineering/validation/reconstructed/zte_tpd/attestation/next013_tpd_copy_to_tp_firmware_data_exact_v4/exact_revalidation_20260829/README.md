# Exact revalidation: 013_tpd_copy_to_tp_firmware_data

This package records the current Docker-based revalidation of `tpd_copy_to_tp_firmware_data` at stock entry `00107eb8`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 50/50 instructions, 200/200 bytes, relocations resolved identically.
- KCFI: stock and candidate type ID `0x7bff871d`.
- Joern strict: PASS, zero parse problems, one-to-one source/Ghidra mapping.
- ASAN/UBSAN host harness: 12/12 tests in each of 2 cycles.

The host harness is offline and cannot substitute for physical NX809J, SPI, IRQ, MMIO or Android-service validation.
