# zte_misc — zte_misc_register_callback

This attestation promotes `zte_misc_register_callback` at stock entry `0x00100b10` as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed.
- Stock and candidate bodies match exactly: 82 AArch64 instructions / 328 bytes.
- Stock and candidate KCFI type ID: `0x1946ceb2`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The Docker-backed host harness is reproducible and covers callback registration and duplicate-registration paths.

This is an offline/static equivalence claim. Live peer-driver callback behavior and physical hardware behavior remain unverified.
