# Target 276 — syna_tcm_switch_fw_mode

Promoted as `PROMOTED_OFFLINE_EXACT` from the stock symbol at Ghidra entry
`001226ec` / ELF `.text+0x1be64`.

- exact AArch64 body: 182 instructions, 728 bytes, 48 relocations;
- KCFI type ID: `0xdad41fc4`, matching stock and candidate;
- canonical Docker build: two reproducible cycles;
- strict Joern gate and two ASan/UBSan host cycles: passed;
- hardware transport and NX809J runtime validation remain deferred.

The C source is retained for review, Joern and direct host-contract evidence;
the exact object is `candidate_exact.S` and is integrated through the driver's
Makefile.
