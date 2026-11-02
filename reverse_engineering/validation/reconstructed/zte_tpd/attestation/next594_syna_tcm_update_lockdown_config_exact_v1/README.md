# `syna_tcm_update_lockdown_config` exact offline attestation

This attestation promotes microtask 305 for offline function-level reconstruction.

- Stock entry: `00126aec`
- Stock body: 900 bytes
- Candidate: 225 AArch64 instructions / 900-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate type ID `0xb72a3c1c` matched
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed
- Host ASan/UBSan contract: two cycles passed with 23 expected assertions

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
