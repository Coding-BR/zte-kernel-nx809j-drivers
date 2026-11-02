# Target 285 — syna_tcm_sleep

Promoted as `PROMOTED_OFFLINE_EXACT` from Ghidra entry `001238fc` / ELF
`.text+0x1d074`.

- exact AArch64 body: 66 instructions, 264 bytes, 15 relocations;
- KCFI type ID: `0xdad41fc4`, matching stock and candidate;
- canonical Docker build: two reproducible cycles;
- strict Joern gate and two ASan/UBSan host cycles: passed;
- hardware transport and NX809J runtime behavior remain deferred.
