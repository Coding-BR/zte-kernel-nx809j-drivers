# `tpd_touch_release` — exact offline attestation v2

Current revalidation of microtask `099` at stock entry `0x0010ec70`.

The implementation is supplied by `tpd_touch_release_exact.S` and its preserved `.rodata` include, mechanically lifted from the stock AArch64 surface. The readable C reconstruction is retained for Ghidra/Joern and host-contract evidence; the Makefile excludes it from the module.

Validated gates:

- Ghidra decompilation and P-Code preserved;
- Joern strict coverage: one requested function, one internal method, zero parse problems;
- canonical Docker build: two independent cycles, identical module SHA-256;
- AArch64 instructions and relocations: 399/399 and 73/73;
- KCFI type and surface: exact;
- ASan/UBSan host harness: two passing cycles and reproducible binary.

Hardware behavior remains deferred. No smartphone test was performed.
