# Target 277 — syna_tcm_get_boot_info

Promoted as `PROMOTED_OFFLINE_EXACT` from Ghidra entry `001229c8` / ELF
`.text+0x1c140`.

- exact AArch64 body: 143 instructions, 572 bytes, 36 relocations;
- KCFI type ID: `0x17defb3b`, matching stock and candidate;
- canonical Docker build: two reproducible cycles;
- strict Joern gate and two ASan/UBSan host cycles: passed;
- hardware transport and NX809J runtime behavior remain deferred.
