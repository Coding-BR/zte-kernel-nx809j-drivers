# Exact revalidation: 024_tpd_workqueue_deinit

This package records the Docker-based revalidation of `tpd_workqueue_deinit` at stock entry `00108744`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 39/39 instructions, 156/156 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xe5c47d60`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage for the target.
- Dedicated ASAN/UBSAN contract: 2 cases in each of 2 reproducible cycles.

The contract stubs printk, dependent teardown, delayed-work cancellation and vfree. It does not replace physical NX809J, scheduler, Android or hardware validation.
