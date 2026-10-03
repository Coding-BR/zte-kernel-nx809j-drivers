# `syna_tcm_write_flash` exact offline attestation

This attestation promotes microtask 307 for offline function-level reconstruction.

- Stock entry: `0012704c`
- Stock body: 964 bytes
- Candidate: 241 AArch64 instructions / 964-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate both have no valid preamble
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed
- Host ASan/UBSan contract: two cycles passed with 20 expected assertions

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
