# Attestation — syna_tcm_get_touch_data

- Target: `syna_tcm_get_touch_data@00128514`
- Scope: offline exact function-level parity
- Stock body: 244 bytes
- Candidate: 61 AArch64 instructions
- Status: `PROMOTED_OFFLINE_EXACT`

Gates:

- canonical Docker build: PASS, 2 cycles
- AArch64 assembly: PASS, instructions, relocations, section and symbol size
- KCFI: PASS, type ID `0xfd344c7d`
- Joern strict: PASS
- host ASan/UBSan: PASS, 2 cycles, 4 test groups

Android runtime and NX809J hardware behavior remain unverified.
