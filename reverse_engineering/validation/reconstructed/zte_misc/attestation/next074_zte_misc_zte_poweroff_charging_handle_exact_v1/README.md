# zte_misc — zte_poweroff_charging_handle

This attestation promotes `zte_poweroff_charging_handle` at stock entry `0x001018a0` to `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed.
- Stock and candidate bodies match exactly: 22 AArch64 instructions / 88 bytes.
- Stock and candidate KCFI type ID: `0x7bff871d`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The source callback prototype was corrected from `const char *` to `char *`, resolving the initial KCFI mismatch (`0x7d0afc77`).
- The Docker-backed host harness is reproducible and covers charger and non-charger paths, including the state update.
- The earlier failed protocol output remains preserved separately as `hard_protocol_zte_misc_zte_poweroff_charging_handle_core_v1` in the temporary workspace; it was not promoted.

This is an offline/static equivalence claim. Live boot-argument execution, platform-device behavior, and physical hardware behavior remain unverified.
