# Attestation — syna_pal_mem_free

- Target: `syna_pal_mem_free@001284c0`
- Scope: offline exact function-level parity
- Stock body: 80 bytes
- Candidate: 20 AArch64 instructions
- Status: `PROMOTED_OFFLINE_EXACT`

Gates:

- canonical Docker build: PASS, 2 cycles
- AArch64 assembly: PASS, instructions, relocations, section and symbol size
- KCFI: PASS, both stock and candidate have no valid KCFI preamble
- Joern strict: PASS
- host ASan/UBSan: PASS, 2 cycles, 3 cases

The exact assembly includes a one-word symbol guard so the zero word before the function is not misclassified as a KCFI type ID. The function body remains 80 bytes and matches the first duplicate stock symbol.

Android runtime and NX809J hardware behavior remain unverified.
