# Exact revalidation: 026_zte_touch_remove

This package records the Docker-based revalidation of `zte_touch_remove` at stock entry `00109668`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 13/13 instructions, 52/52 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0x24a11bb9`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage for the target.
- Dedicated ASAN/UBSAN contract: 3 cases in each of 2 reproducible cycles.

The contract stubs printk and `zte_touch_deinit`; it does not replace physical platform-bus, Android or touch-controller validation.
