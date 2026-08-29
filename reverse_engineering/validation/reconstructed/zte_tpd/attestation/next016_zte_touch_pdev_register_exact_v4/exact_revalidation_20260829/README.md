# Exact revalidation: 016_zte_touch_pdev_register

This package records the current Docker-based revalidation of `zte_touch_pdev_register` at stock entry `001081c8`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 56/56 instructions, 224/224 bytes, relocations resolved identically.
- KCFI: stock and candidate type ID `0x6fbb3035`.
- Joern strict: PASS, zero parse problems, one-to-one source/Ghidra mapping.
- Dedicated ASAN/UBSAN contract: 4/4 tests in each of 2 cycles.

The contract stubs the platform bus and validates the observable allocation, failure cleanup, release and callback behavior. It does not replace physical NX809J or Android platform-bus validation.
