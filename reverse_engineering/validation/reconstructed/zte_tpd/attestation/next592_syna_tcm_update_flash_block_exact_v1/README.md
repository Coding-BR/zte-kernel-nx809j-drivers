# `syna_tcm_update_flash_block` exact offline attestation

This attestation promotes microtask 303 for offline function-level reconstruction.

- Stock entry: `00125f38`
- Stock body: 2164 bytes
- Candidate: 541 AArch64 instructions / 2164-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate both have no valid preamble
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed
- Host ASan/UBSan contract: two cycles passed with eight expected cases

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
