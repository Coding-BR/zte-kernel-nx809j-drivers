# Target 282 — syna_tcm_set_dynamic_config

Promoted as `PROMOTED_OFFLINE_EXACT` from Ghidra entry `001233b4` / ELF
`.text+0x1cb2c`.

- exact AArch64 body: 88 instructions, 352 bytes, 21 relocations;
- KCFI type ID: `0xc1b5ec9e`, matching stock and candidate;
- canonical Docker build: two reproducible cycles;
- strict Joern gate and two ASan/UBSan host cycles: passed;
- hardware transport and NX809J runtime behavior remain deferred.
