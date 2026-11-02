# `syna_tcm_update_mtp_data` exact offline attestation

This attestation promotes microtask 310 for offline function-level reconstruction.

- Stock entry: `00127b14`
- Stock body: 772 bytes
- Candidate: 193 AArch64 instructions / 772-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate both carry type ID `0xdd66a5c9`
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed against the current source tree
- Host ASan/UBSan contract: two cycles passed with 10 expected assertions

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
