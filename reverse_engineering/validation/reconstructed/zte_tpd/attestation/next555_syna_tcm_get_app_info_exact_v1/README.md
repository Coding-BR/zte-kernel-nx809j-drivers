# Target 278 — syna_tcm_get_app_info

Promoted as `PROMOTED_OFFLINE_EXACT` from Ghidra entry `00122c08` / ELF
`.text+0x1c380`.

- exact AArch64 body: 168 instructions, 672 bytes, 42 relocations;
- KCFI type ID: `0xb5d122f8`, matching stock and candidate;
- canonical Docker build: two reproducible cycles;
- strict Joern gate and two ASan/UBSan host cycles: passed;
- hardware transport, scheduler behavior and NX809J runtime remain deferred.
