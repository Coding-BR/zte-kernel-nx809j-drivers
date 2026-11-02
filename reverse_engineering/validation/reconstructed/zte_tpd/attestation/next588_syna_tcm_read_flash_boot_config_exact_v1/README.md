# `syna_tcm_read_flash_boot_config` exact offline attestation

This attestation promotes microtask 299 for offline function-level reconstruction.

- Stock entry: `00125290`
- Stock body: 556 bytes
- Candidate: 139 AArch64 instructions / 556-byte ELF symbol
- Assembly comparison: exact instruction count, relocations, `.text` section, and symbol size
- Helper layout: `syna_pal_mem_alloc` at `0x3c14`; `syna_pal_mem_free` at `0x42bc`
- Canonical Docker build: two reproducible cycles passed
- KCFI: both stock and candidate have no valid KCFI preamble; presence, section, and size matched
- Joern strict gate: passed
- Host ASan/UBSan contract: two cycles passed with eight expected cases

This is offline evidence only. Android runtime and NX809J hardware behavior remain unverified until a controlled physical procedure runs.
