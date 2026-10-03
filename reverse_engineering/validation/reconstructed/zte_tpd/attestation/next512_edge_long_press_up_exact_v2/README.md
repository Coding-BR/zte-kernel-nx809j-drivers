# `edge_long_press_up` — exact offline attestation v2

Current revalidation of microtask `117` at stock entry `0x001100ac`.

The implementation is supplied by `edge_long_press_up_exact.S`. The readable C reconstruction is retained for Joern and host-contract evidence; the Makefile excludes it from the module.

Validated gates:

- Ghidra decompilation and P-Code preserved;
- Joern strict coverage: one requested function, one internal method, zero parse problems;
- canonical Docker build: two independent cycles, identical module SHA-256 `c4a9fecefcb1cdafb546e1af4487d732b18f57256e97e46276bebf2ae5c38125`;
- AArch64 instructions and relocations: 156/156 and 55/55, with 624-byte symbol parity;
- KCFI surface comparison: both stock and candidate have no valid KCFI preamble, with matching size;
- ASan/UBSan host harness: two passing cycles, three cases, reproducible binary.

Hardware behavior remains deferred. No smartphone test was performed.
