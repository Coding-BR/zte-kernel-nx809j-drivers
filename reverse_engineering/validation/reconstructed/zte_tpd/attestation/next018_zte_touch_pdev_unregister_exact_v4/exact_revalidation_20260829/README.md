# Exact revalidation: 018_zte_touch_pdev_unregister

This package records the current Docker-based revalidation of `zte_touch_pdev_unregister` at stock entry `001083b4`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 24/24 instructions, 96/96 bytes, relocations resolved identically.
- KCFI: stock and candidate type ID `0xe5c47d60`.
- Joern strict: PASS, zero parse problems, one-to-one source/Ghidra mapping.
- Dedicated ASAN/UBSAN contract: 4/4 tests in each of 2 reproducible cycles.

The contract deliberately models the stock null-slot behavior and stubs the platform bus. It does not replace physical NX809J validation.
