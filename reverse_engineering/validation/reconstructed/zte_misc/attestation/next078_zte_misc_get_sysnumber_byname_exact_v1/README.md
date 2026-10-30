# zte_misc — get_sysnumber_byname

This attestation promotes `get_sysnumber_byname` at stock entry `0x00100a54` as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed.
- Stock and candidate bodies match exactly: 27 AArch64 instructions / 108 bytes.
- Stock and candidate KCFI type ID: `0x7bff871d`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The source ABI was corrected to `int get_sysnumber_byname(char *)`, matching the stock function type.
- The Docker-backed host harness is reproducible and covers GPIO label hit and miss paths.

This is an offline/static equivalence claim. Live GPIO hardware behavior remains unverified.
