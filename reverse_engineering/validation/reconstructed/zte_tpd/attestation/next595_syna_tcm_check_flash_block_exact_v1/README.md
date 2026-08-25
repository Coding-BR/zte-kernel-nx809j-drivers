# `syna_tcm_check_flash_block` exact offline attestation

This attestation promotes microtask 306 for offline function-level reconstruction.

- Stock entry: `00126e70`
- Stock body: 476 bytes
- Candidate: 119 AArch64 instructions / 476-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate both have no valid preamble
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed
- Host ASan/UBSan contract: two cycles passed with 18 expected assertions

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
