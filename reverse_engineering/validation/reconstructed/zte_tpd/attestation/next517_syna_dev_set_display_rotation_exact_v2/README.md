# `syna_dev_set_display_rotation` — exact offline attestation v2

Current revalidation of microtask `149` at stock entry `0x00111a30`.

The implementation is supplied by `syna_dev_set_display_rotation_exact.S`. The readable C reconstruction is retained for Joern and host-contract evidence; the Makefile excludes it from the module.

Validated gates:

- Ghidra decompilation and P-Code preserved;
- Joern strict coverage: one requested function, one internal method, zero parse problems;
- canonical Docker build: two independent cycles, identical module SHA-256 `c4a9fecefcb1cdafb546e1af4487d732b18f57256e97e46276bebf2ae5c38125`;
- AArch64 instructions and relocations: 65/65 and 16/16, with 260-byte symbol parity;
- KCFI type ID matched;
- ASan/UBSan host harness: two passing cycles, seven scenarios, reproducible binary.

Hardware behavior remains deferred. No smartphone test was performed.
