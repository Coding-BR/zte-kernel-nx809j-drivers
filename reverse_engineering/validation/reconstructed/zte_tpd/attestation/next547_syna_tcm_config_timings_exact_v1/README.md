# `syna_tcm_config_timings` exact offline attestation

- Stock entry: `00121034` (`.text` offset `0x1a7ac`)
- Exact body: 236 bytes / 59 AArch64 instructions
- KCFI: `0x4b2750f2`, present and equal to stock
- Relocations, section and ELF symbol size: equal to stock
- Gates: source sync, two-cycle canonical build, strict Joern, AArch64 comparison, KCFI, and two-cycle ASan/UBSan host harness all passed
- Decision: `PROMOTED_OFFLINE_EXACT`
- Hardware validation remains deferred.
