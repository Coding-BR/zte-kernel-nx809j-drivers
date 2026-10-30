# `syna_tcm_read_flash_mtp_config` exact offline attestation

This attestation promotes microtask 301 for offline function-level reconstruction.

- Stock entry: `00125a18`
- Stock body: 508 bytes
- Candidate: 127 AArch64 instructions / 508-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- Canonical Docker build: two reproducible cycles passed
- KCFI comparison: passed
- Joern strict gate: passed
- Host ASan/UBSan contract: two cycles passed with eight expected cases

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
