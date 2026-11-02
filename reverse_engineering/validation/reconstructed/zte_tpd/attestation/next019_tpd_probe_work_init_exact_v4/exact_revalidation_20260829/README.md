# Exact revalidation: 019_tpd_probe_work_init

This package records the current Docker-based revalidation of `tpd_probe_work_init` at stock entry `00108418`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 30/30 instructions, 120/120 bytes, relocations resolved identically.
- KCFI: stock and candidate type ID `0xe5c47d60`.
- Joern strict: PASS, zero parse problems, one-to-one source/Ghidra mapping.
- Dedicated ASAN/UBSAN contract: 2/2 tests in each of 2 reproducible cycles.

The contract stubs timer initialization and delayed-work scheduling. It does not replace physical NX809J, scheduler, IRQ or Android validation.
