# Exact revalidation: 037_suspend_store

This package records the Docker-based revalidation of `suspend_store` at stock entry `0010a2ac`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 69/69 instructions, 276/276 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xc3d43b4d`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage; two high-severity synchronization findings are retained for review.
- Dedicated ASAN/UBSAN contract: 4 cases in each of 2 reproducible cycles.

The Joern CPG uses compatibility defines `__user`, `__init`, `__exit` and `__nocfi`, and excludes `validation` and `build`. The source preserves the AArch64 inline KCFI callback check; the host contract models parse failure, same-state suppression, state transition, mutex pairing and callback/no-callback behavior with fake memory. No physical NX809J, procfs runtime or concurrent production path is exercised.
