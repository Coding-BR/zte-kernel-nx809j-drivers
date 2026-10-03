# `syna_pal_mem_alloc` exact offline attestation

This attestation promotes microtask 311 for offline function-level reconstruction.

- Stock entry: `00127e18`
- Stock body: 104 bytes
- Candidate: 26 AArch64 instructions / 104-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- KCFI: stock and candidate both have no valid KCFI preamble
- Canonical Docker build: two reproducible cycles passed
- Joern strict gate: passed against the current source tree
- Host ASan/UBSan contract: two cycles passed with four expected cases

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
