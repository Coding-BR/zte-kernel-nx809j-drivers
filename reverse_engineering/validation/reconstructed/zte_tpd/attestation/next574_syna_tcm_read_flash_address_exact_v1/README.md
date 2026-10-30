# syna_tcm_read_flash_address exact attestation

This attestation promotes microtask 295 for offline function-level parity.

- Stock entry: `00124208`
- Stock body: 732 bytes / 183 AArch64 instructions
- Canonical Docker build: two independent cycles passed
- AArch64 comparison: instructions, relocations, section, and symbol size passed
- KCFI: stock type ID comparison passed
- Joern strict: passed
- Host contract: eight cases, two ASan/UBSan cycles passed with reproducible binary

The exact assembly is integrated in the reconstructed module through the layout
objects required to preserve the two direct helper branch targets. Runtime
behavior on Android and NX809J hardware is not claimed by this offline evidence.
