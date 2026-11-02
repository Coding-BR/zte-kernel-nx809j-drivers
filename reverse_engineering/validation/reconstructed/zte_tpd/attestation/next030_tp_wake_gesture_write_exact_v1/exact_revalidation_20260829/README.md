# Exact revalidation: 030_tp_wake_gesture_write

This package records the Docker-based revalidation of `tp_wake_gesture_write` at stock entry `00109b1c`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 52/52 instructions, 208/208 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xc3d43b4d`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage.
- Dedicated ASAN/UBSAN contract: 3 cases in each of 2 reproducible cycles.

The Joern CPG uses compatibility defines `__user`, `__init` and `__exit`, and excludes `validation` and `build`. The host harness validates the `+0xe30` callback offset, boolean normalization, invalid input and count return using fake memory; no physical NX809J or procfs runtime path is exercised.
