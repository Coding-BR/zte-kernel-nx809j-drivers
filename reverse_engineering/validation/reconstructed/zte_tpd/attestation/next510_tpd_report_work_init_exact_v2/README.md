# `tpd_report_work_init` — exact offline attestation v2

Current revalidation of microtask `104` at stock entry `0x0010fa04`.

The implementation is supplied by `tpd_report_work_init_exact.S` and its preserved `.rodata` include, mechanically lifted from the stock AArch64 surface. The readable C reconstruction is retained for Ghidra/Joern and host-contract evidence; the Makefile excludes it from the module.

Validated gates:

- Ghidra decompilation and P-Code preserved;
- Joern strict coverage: one requested function, one internal method, zero parse problems;
- canonical Docker build: two independent cycles, identical module SHA-256 `c4a9fecefcb1cdafb546e1af4487d732b18f57256e97e46276bebf2ae5c38125`;
- AArch64 instructions and relocations: 168/168 and 49/49, with 672-byte symbol parity;
- KCFI type ID: stock and candidate `0x6fbb3035`;
- ASan/UBSan host harness: two passing cycles, two cases, reproducible binary.

Hardware behavior remains deferred. No smartphone test was performed.
