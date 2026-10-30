# Exact revalidation: 023_tp_ghost_check_work

This package records the Docker-based revalidation of `tp_ghost_check_work` at stock entry `00108690`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 44/44 instructions, 176/176 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xa607748c`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage for the target.
- Dedicated ASAN/UBSAN contract: 5 cases in each of 2 reproducible cycles.

The contract stubs ghost detection, reset, printk and the valid callback; the invalid callback path is statically checked and not invoked. It does not replace physical NX809J, scheduler, Android or hardware validation.
