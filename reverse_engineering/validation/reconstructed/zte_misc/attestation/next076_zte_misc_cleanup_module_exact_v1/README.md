# zte_misc — cleanup_module / zte_misc_exit

This attestation promotes the stock ELF `cleanup_module` entry at `0x00101940`, mapped to the source function `zte_misc_exit`, as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed.
- Stock and candidate bodies match exactly: 9 AArch64 instructions / 36 bytes.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The `module_exit` ELF alias was resolved to the real Joern/source method `zte_misc_exit`.
- The Docker-backed host harness covers module lifecycle paths and remains reproducible.

This is an offline/static equivalence claim. Live module unloading, platform teardown, and physical hardware behavior remain unverified.
