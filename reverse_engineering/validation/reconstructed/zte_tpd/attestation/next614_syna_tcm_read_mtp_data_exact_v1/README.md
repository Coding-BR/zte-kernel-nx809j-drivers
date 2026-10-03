# Attestation — syna_tcm_read_mtp_data

- Target: `syna_tcm_read_mtp_data@00127e84`
- Scope: offline exact function-level parity
- Stock body: 832 bytes
- Candidate: 208 AArch64 instructions
- Status: PROMOTED_OFFLINE_EXACT

Gates:

- canonical Docker build: PASS, 2 cycles
- AArch64 assembly: PASS, instructions, relocations, section and symbol size
- KCFI: PASS, type ID `0xdd66a5c9`
- Joern strict: PASS
- host ASan/UBSan: PASS, 2 cycles, 5 cases

The attestation preserves the reconstructed C source, the exact lifted assembly, Ghidra decompilation/P-Code, stock and candidate assembly manifests, KCFI reports, candidate module, canonical build report, host report and Joern evidence. Android runtime and NX809J hardware behavior remain unverified.

