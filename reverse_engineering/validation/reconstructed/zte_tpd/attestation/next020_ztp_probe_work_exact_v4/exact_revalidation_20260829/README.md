# Exact revalidation: 020_ztp_probe_work

This package records the current Docker-based revalidation of `ztp_probe_work` at stock entry `00108494`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 10/10 instructions, 40/40 bytes, relocations resolved identically.
- KCFI: stock and candidate type ID `0xa607748c`.
- Joern strict: PASS, zero parse problems, one-to-one source/Ghidra mapping.
- Dedicated ASAN/UBSAN contract: 3/3 tests in each of 2 reproducible cycles.

The contract stubs `syna_dev_module_init` and `printk`. It does not replace physical NX809J or scheduler validation.
