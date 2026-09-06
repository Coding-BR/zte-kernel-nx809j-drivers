# `syna_tcm_read_flash_boot_cs_config` exact offline attestation

This attestation promotes microtask 300 for offline function-level reconstruction.

- Stock entry: `001254bc`
- Stock body: 1372 bytes
- Candidate: 343 AArch64 instructions / 1372-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- Canonical Docker build: two reproducible cycles passed
- KCFI comparison: passed
- Joern strict gate: passed
- Host ASan/UBSan contract: two cycles passed with eight expected cases

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
