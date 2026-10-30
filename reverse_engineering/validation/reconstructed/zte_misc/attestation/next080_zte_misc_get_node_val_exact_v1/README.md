# zte_misc — zte_misc_get_node_val

This attestation promotes `zte_misc_get_node_val` at stock entry `0x00100c5c` as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed.
- Stock and candidate bodies match exactly: 84 AArch64 instructions / 336 bytes.
- Stock and candidate KCFI type ID: `0x7d0afc77`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The Docker-backed host harness is reproducible and covers callback value lookup paths.

This is an offline/static equivalence claim. Live peer-driver state and physical hardware behavior remain unverified.
