# Exact revalidation: 039_headset_state_store

This package records the Docker-based revalidation of `headset_state_store` at stock entry `0010a4bc`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 67/67 instructions, 268/268 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xc3d43b4d`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage; one high-severity userspace-ingress finding is retained for review.
- Dedicated ASAN/UBSAN contract: 4 cases in each of 2 reproducible cycles.

The Joern CPG uses compatibility defines `__user`, `__init` and `__exit`, and excludes `validation` and `build`. The host harness validates the 9-byte input cap, callback offset `+0xe70`, boolean normalization, invalid input and no-callback behavior with fake memory; no physical NX809J or procfs runtime path is exercised.
