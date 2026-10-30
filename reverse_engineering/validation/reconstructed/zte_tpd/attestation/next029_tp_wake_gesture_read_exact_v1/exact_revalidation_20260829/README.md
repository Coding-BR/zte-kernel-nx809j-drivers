# Exact revalidation: 029_tp_wake_gesture_read

This package records the Docker-based revalidation of `tp_wake_gesture_read` at stock entry `00109a28`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 60/60 instructions, 240/240 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xf4e9d97c`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage; one high-severity userspace-egress review finding is retained.
- Dedicated ASAN/UBSAN contract: 2 cases in each of 2 reproducible cycles.

The Joern CPG uses compatibility defines `__user`, `__init` and `__exit`, and excludes `validation` and `build`. The harness uses fake memory and validates callback offset `+0xe28`, partial reads and EOF; no physical NX809J or procfs runtime path is exercised.
