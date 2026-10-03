# `tp_edge_report_limit_read` — exact offline attestation v2

This package records the current revalidation of microtask `053` at stock entry `0x0010b150`.

The implementation is carried by `tp_edge_report_limit_read_exact.S`, mechanically lifted from the preserved stock AArch64 function. The readable C reconstruction is retained as evidence and Joern input; the Makefile excludes that C file from the module because the exact Assembly object supplies the implementation.

Validated gates:

- Ghidra decompilation and P-Code preserved;
- Joern strict coverage: one requested function, one internal method, zero parse problems;
- canonical Docker build: two independent cycles, identical module SHA-256;
- AArch64 instructions and relocations: 335/335 and 66/66;
- KCFI type and surface: exact;
- ASan/UBSan host harness: two passing cycles.

Hardware behavior remains deferred. No smartphone test was performed.
