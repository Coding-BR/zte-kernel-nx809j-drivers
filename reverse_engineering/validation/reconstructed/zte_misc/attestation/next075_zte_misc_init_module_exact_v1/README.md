# zte_misc — init_module / zte_misc_init

This attestation promotes the stock ELF `init_module` entry at `0x001018fc`, mapped to the source function `zte_misc_init`, as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed.
- Stock and candidate bodies match exactly: 16 AArch64 instructions / 64 bytes.
- Stock and candidate KCFI type ID: `0x6fbb3035`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The `module_init` ELF alias was resolved correctly to the real Joern/source method `zte_misc_init`.
- The Docker-backed host harness is reproducible and covers module lifecycle paths.

This is an offline/static equivalence claim. Live module loading, platform registration, and physical hardware behavior remain unverified.
