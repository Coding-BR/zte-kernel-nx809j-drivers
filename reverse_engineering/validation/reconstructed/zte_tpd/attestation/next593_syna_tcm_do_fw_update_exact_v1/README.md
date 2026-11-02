# `syna_tcm_do_fw_update` exact offline attestation

This attestation promotes microtask 304 for offline function-level reconstruction.

- Stock entry: `001267b0`
- Stock body: 824 bytes
- Candidate: 206 AArch64 instructions / 824-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate type ID `0xb9434444` matched
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed
- Host ASan/UBSan contract: two cycles passed with eight expected cases

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
