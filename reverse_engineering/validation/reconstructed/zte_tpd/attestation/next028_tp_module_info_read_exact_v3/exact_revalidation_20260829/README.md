# Exact revalidation: 028_tp_module_info_read

This package records the Docker-based revalidation of `tp_module_info_read` at stock entry `00109784`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 168/168 instructions, 672/672 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xf4e9d97c`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage; one high-severity userspace-egress review finding is retained.
- Dedicated ASAN/UBSAN contract: 2 cases in each of 2 reproducible cycles.

The Joern CPG uses the required compatibility defines `__user`, `__init` and `__exit`, and excludes `validation` and `build` from the source view. The host harness does not execute the fatal overflow `BRK`; static AArch64 evidence confirms it. No physical NX809J, Android or hardware validation is implied.
