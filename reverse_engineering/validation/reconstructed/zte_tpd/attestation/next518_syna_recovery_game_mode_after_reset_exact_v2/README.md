# `syna_recovery_game_mode_after_reset` — exact offline attestation v2

Current revalidation of microtask `151` at stock entry `0x00111bac`.

The implementation is supplied by `syna_recovery_game_mode_after_reset_exact.S`. The readable C reconstruction is retained for Joern and host-contract evidence; the Makefile excludes it from the module.

Validated gates:

- Ghidra decompilation and P-Code preserved;
- Joern strict coverage: one requested function, one internal method, zero parse problems;
- canonical Docker build: two independent cycles, identical module SHA-256 `c4a9fecefcb1cdafb546e1af4487d732b18f57256e97e46276bebf2ae5c38125`;
- AArch64 instructions and relocations: 102/102 and 32/32, with 408-byte symbol parity;
- KCFI type ID matched;
- ASan/UBSan host harness: two passing cycles, five scenarios, reproducible binary.

Hardware behavior remains deferred. No smartphone test was performed.
