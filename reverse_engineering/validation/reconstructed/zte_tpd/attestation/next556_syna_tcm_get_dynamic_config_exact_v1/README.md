# Target 281 — syna_tcm_get_dynamic_config

Promoted as `PROMOTED_OFFLINE_EXACT` from Ghidra entry `00123228` / ELF
`.text+0x1c9a0`.

- exact AArch64 body: 98 instructions, 392 bytes, 20 relocations;
- KCFI type ID: `0x56ccd541`, matching stock and candidate;
- canonical Docker build: two reproducible cycles;
- strict Joern gate and two ASan/UBSan host cycles: passed;
- hardware transport and NX809J runtime behavior remain deferred.
