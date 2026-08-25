# Attestation — syna_tcm_set_touch_report_config

- Target: `syna_tcm_set_touch_report_config@0012a264`
- Scope: offline exact function-level parity
- Stock body: 532 bytes
- Candidate: 133 AArch64 instructions
- Status: `PROMOTED_OFFLINE_EXACT`

Gates:

- canonical Docker build: PASS, 2 reproducible cycles
- AArch64 assembly: PASS, instructions, relocations, section and symbol size
- KCFI: PASS, type ID `0x135bb445`
- Joern strict: PASS
- host ASan/UBSan: PASS, 2 cycles, 20 assertions

Android runtime and NX809J hardware behavior remain unverified.
