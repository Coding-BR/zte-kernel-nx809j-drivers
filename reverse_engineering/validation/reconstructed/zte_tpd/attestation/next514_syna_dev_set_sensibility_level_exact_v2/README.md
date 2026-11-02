# `syna_dev_set_sensibility_level` — exact offline attestation v2

Current revalidation of microtask `146` at stock entry `0x00111578`.

The implementation is supplied by `syna_dev_set_sensibility_level_exact.S`. The readable C reconstruction is retained for Joern and host-contract evidence; the Makefile excludes it from the module.

Validated gates:

- Ghidra decompilation and P-Code preserved;
- Joern strict coverage: one requested function, one internal method, zero parse problems;
- canonical Docker build: two independent cycles, identical module SHA-256 `c4a9fecefcb1cdafb546e1af4487d732b18f57256e97e46276bebf2ae5c38125`;
- AArch64 instructions and relocations: 103/103 and 25/25, with 412-byte symbol parity;
- KCFI type ID: stock and candidate `0x1eb3b73d`;
- ASan/UBSan host harness: two passing cycles, eleven cases, reproducible binary.

Hardware behavior remains deferred. No smartphone test was performed.
