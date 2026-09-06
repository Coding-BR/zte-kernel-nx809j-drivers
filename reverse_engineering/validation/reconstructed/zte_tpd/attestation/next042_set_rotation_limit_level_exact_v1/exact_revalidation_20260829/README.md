# Exact revalidation: 042_set_rotation_limit_level

This package records the Docker-based revalidation of `set_rotation_limit_level` at stock entry `0010a7b4`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 49/49 instructions, 196/196 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xc3d43b4d`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage; no review findings were emitted.
- Dedicated ASAN/UBSAN contract: 3 cases in each of 2 reproducible cycles.

The host harness validates valid callback dispatch at `+0xe80`, invalid input returning `-EINVAL` without side effects, and valid input without a callback; no physical NX809J or procfs runtime path is exercised.
