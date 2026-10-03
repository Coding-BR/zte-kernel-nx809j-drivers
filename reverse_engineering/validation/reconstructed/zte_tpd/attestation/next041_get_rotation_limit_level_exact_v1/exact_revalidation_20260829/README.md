# Exact revalidation: 041_get_rotation_limit_level

This package records the Docker-based revalidation of `get_rotation_limit_level` at stock entry `0010a6c0`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 60/60 instructions, 240/240 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xf4e9d97c`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage; one high-severity userspace-egress finding is retained for review.
- Dedicated ASAN/UBSAN contract: 2 cases in each of 2 reproducible cycles.

The host harness validates the callback offset `+0xe88`, value offset `+0xc`, formatted output, partial reads and EOF using fake memory; no physical NX809J or procfs runtime path is exercised.
