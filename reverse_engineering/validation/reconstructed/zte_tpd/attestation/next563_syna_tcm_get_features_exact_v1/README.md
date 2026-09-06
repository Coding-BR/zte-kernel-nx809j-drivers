# Target 286 — syna_tcm_get_features

Promoted as `PROMOTED_OFFLINE_EXACT` from Ghidra entry `00123a08` / ELF
`.text+0x1d180`.

- exact AArch64 body: 138 instructions, 552 bytes, 49 relocations;
- KCFI type ID: `0x39266119`, matching stock and candidate;
- canonical Docker build: two reproducible cycles;
- strict Joern gate and two ASan/UBSan host cycles: passed;
- hardware transport and NX809J runtime behavior remain deferred.
