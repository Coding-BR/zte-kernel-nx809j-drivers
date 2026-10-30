# syna_tcm_read_flash exact attestation

This attestation promotes microtask 297 for offline function-level parity.

- Stock entry: `001247c8`
- Stock body: 744 bytes / 186 AArch64 instructions
- Canonical Docker build: two independent cycles passed
- AArch64 comparison: instructions, relocations, section, and symbol size passed
- KCFI: both stock and candidate explicitly have no valid KCFI preamble; section and size matched
- Joern strict: passed
- Host contract: eight cases, two ASan/UBSan cycles passed with reproducible binary

The exact assembly is integrated immediately after the exact target 296 helper,
and the previously promoted target 295 caller remains exact in the same module.
Runtime behavior on Android and NX809J hardware is not claimed by this offline evidence.
