# syna_tcm_read_flash_area exact attestation

This attestation promotes microtask 298 for offline function-level parity.

- Stock entry: `00124ab4`
- Stock body: 2012 bytes / 503 AArch64 instructions
- Canonical Docker build: two independent cycles passed
- AArch64 comparison: instructions, relocations, section, and symbol size passed
- KCFI comparison passed for type ID `0xda19bd63`
- Joern strict: passed
- Host contract: eight cases, two ASan/UBSan cycles passed with reproducible binary

The exact target is integrated with exact boot-config, boot-CS-config, and MTP
config helpers so all six direct helper branches preserve stock destinations.
Runtime behavior on Android and NX809J hardware is not claimed by this offline evidence.
