# zte_misc — zte_misc_get_design_capacity

This attestation promotes `zte_misc_get_design_capacity` at stock entry `0x0010118c` as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed, including power-supply lookup, property error handling, and the µAh-to-mAh conversion.
- Stock and candidate bodies match exactly: 60 AArch64 instructions / 240 bytes.
- Stock and candidate KCFI type ID: `0x38f99aad`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The Docker-backed host harness is reproducible and covers present-battery, conversion, missing-battery, and property-error paths.

This is an offline/static equivalence claim. Live power-supply state, peer-driver integration, and physical hardware behavior remain unverified.
