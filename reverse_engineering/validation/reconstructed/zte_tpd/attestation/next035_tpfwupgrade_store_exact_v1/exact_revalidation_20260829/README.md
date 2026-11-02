# Exact revalidation: 035_tpfwupgrade_store

This package records the Docker-based revalidation of `tpfwupgrade_store` at stock entry `00109f80`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 140/140 instructions, 560/560 bytes, and relocations equivalent.
- KCFI: stock and candidate type ID `0xc3d43b4d`.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage. It retains 3 high-severity lifetime and 2 high-severity synchronization findings for review.
- Dedicated ASAN/UBSAN contract: 5 cases in each of 2 reproducible cycles.

The historical Ghidra inventory reports 468 bytes, while the canonical ELF symbol and both normalized AArch64 bodies are 560 bytes; the manifests use 560 as the authoritative gate size and retain the discrepancy in the reconstruction map note. The Joern CPG uses compatibility defines `__user`, `__init` and `__exit`, and excludes `validation` and `build`. The host contract uses fake memory and stubs for allocation, mutex, cleanup, callback and ENOMEM paths; no physical NX809J, procfs runtime, firmware hardware or concurrent production path is exercised.
