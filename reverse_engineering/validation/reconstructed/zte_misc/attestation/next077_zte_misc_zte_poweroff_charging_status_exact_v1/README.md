# zte_misc — zte_poweroff_charging_status

This attestation promotes `zte_poweroff_charging_status` at stock entry `0x00100ac4` as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed.
- Stock and candidate bodies match exactly: 18 AArch64 instructions / 72 bytes.
- Stock and candidate KCFI type ID: `0x6fbb3035`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The Docker-backed host harness is reproducible and covers the poweroff and parameter state paths.

This is an offline/static equivalence claim. Live platform state and physical hardware behavior remain unverified.
