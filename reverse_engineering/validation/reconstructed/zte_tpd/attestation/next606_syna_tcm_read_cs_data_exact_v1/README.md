# `syna_tcm_read_cs_data` exact offline attestation

This attestation promotes microtask 309 for offline function-level reconstruction.

- Stock entry: `001277fc`
- Stock body: 788 bytes
- Candidate: 197 AArch64 instructions / 788-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate both carry type ID `0xdd66a5c9`
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed against the current source tree
- Host ASan/UBSan contract: two cycles passed with 10 expected assertions

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
