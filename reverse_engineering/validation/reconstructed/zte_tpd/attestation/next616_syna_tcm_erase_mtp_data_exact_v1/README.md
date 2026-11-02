# Attestation — syna_tcm_erase_mtp_data

- Target: `syna_tcm_erase_mtp_data@001281c8`
- Scope: offline exact function-level parity
- Stock body: 760 bytes
- Candidate: 190 AArch64 instructions
- Status: PROMOTED_OFFLINE_EXACT

Gates:

- canonical Docker build: PASS, 2 cycles
- AArch64 assembly: PASS, instructions, relocations, section and symbol size
- KCFI: PASS, type ID `0x627e4777`
- Joern strict: PASS
- host ASan/UBSan: PASS, 2 cycles, 4 cases

Android runtime and NX809J hardware behavior remain unverified.

