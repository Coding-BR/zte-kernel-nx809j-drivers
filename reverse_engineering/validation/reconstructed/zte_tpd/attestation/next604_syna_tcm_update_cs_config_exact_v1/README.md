# `syna_tcm_update_cs_config` exact offline attestation

This attestation promotes microtask 308 for offline function-level reconstruction.

- Stock entry: `00127414`
- Stock body: 996 bytes
- Candidate: 249 AArch64 instructions / 996-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate both carry type ID `0xdd66a5c9`
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed against the current source tree
- Host ASan/UBSan contract: two cycles passed with 11 expected assertions

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
