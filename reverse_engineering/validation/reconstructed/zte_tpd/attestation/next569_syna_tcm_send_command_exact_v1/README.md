# Target 288 — syna_tcm_send_command

Promoted as `PROMOTED_OFFLINE_EXACT` from Ghidra entry `00123dc0` / ELF
`.text+0x1d538`.

- exact AArch64 body: 119 instructions, 476 bytes, 23 relocations;
- KCFI type ID: `0x2e79609a`, matching stock and candidate;
- canonical Docker build: two reproducible cycles;
- strict Joern gate and two ASan/UBSan host cycles: passed;
- hardware transport and NX809J runtime behavior remain deferred.
