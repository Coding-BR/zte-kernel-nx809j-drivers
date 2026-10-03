# `syna_tcm_do_fw_update_ex` exact offline attestation

This attestation promotes microtask 302 for offline function-level reconstruction.

- Stock entry: `00125c18`
- Stock body: 800 bytes
- Candidate: 200 AArch64 instructions / 800-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate type ID `0xf4d5d168` matched
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed
- Host ASan/UBSan contract: two cycles passed with eight expected cases

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
