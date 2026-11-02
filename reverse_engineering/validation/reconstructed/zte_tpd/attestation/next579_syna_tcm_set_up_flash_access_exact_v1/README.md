# syna_tcm_set_up_flash_access exact attestation

This attestation promotes microtask 296 for offline function-level parity.

- Stock entry: `001244e4`
- Stock body: 740 bytes / 185 AArch64 instructions
- Canonical Docker build: two independent cycles passed
- AArch64 comparison: instructions, relocations, section, and symbol size passed
- KCFI: both stock and candidate explicitly have no valid KCFI preamble; section and size matched
- Joern strict: passed
- Host contract: eight cases, two ASan/UBSan cycles passed with reproducible binary

The exact assembly is integrated as the stock helper used by the previously
promoted `syna_tcm_read_flash_address` caller. Runtime behavior on Android and
NX809J hardware is not claimed by this offline evidence.
