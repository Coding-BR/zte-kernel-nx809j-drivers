# zte_misc — zte_misc_common_callback_set

This attestation promotes `zte_misc_common_callback_set` at stock entry `0x00101280` as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed, including parameter-name parsing, callback lookup, and callback error propagation.
- Stock and candidate bodies match exactly: 98 AArch64 instructions / 392 bytes.
- Stock and candidate KCFI type ID: `0xdcf05a8a`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The Docker-backed host harness is reproducible and covers malformed parameters, missing callbacks, successful set, and callback-error paths.

This is an offline/static equivalence claim. Live peer-driver callback state and physical hardware behavior remain unverified.
