# Exact revalidation: 022_tpd_workqueue_init

This package records the Docker-based revalidation of `tpd_workqueue_init` at stock entry `00108508`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 97/97 instructions, 388/388 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0x6fbb3035`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage for the target.
- Dedicated ASAN/UBSAN contract: 4 cases in each of 2 reproducible cycles.

The contract stubs workqueue allocation/destruction, printk, timers and dependent initializers. It does not replace physical NX809J, scheduler, Android or hardware validation.
