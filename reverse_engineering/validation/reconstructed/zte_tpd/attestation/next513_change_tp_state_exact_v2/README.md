# `change_tp_state` — exact offline attestation v2

Current revalidation of microtask `118` at stock entry `0x00110320`.

The implementation is supplied by `change_tp_state_exact.S`. The readable C reconstruction is retained for Joern and host-contract evidence; the Makefile excludes it from the module.

Validated gates:

- Ghidra decompilation and P-Code preserved;
- Joern strict coverage: one requested function, one internal method, zero parse problems;
- canonical Docker build: two independent cycles, identical module SHA-256 `c4a9fecefcb1cdafb546e1af4487d732b18f57256e97e46276bebf2ae5c38125`;
- AArch64 instructions and relocations: 94/94 and 38/38, with 376-byte symbol parity;
- KCFI type ID: stock and candidate `0xf4d9b23e`;
- ASan/UBSan host harness: two passing cycles, five cases, reproducible binary.

Hardware behavior remains deferred. No smartphone test was performed.
