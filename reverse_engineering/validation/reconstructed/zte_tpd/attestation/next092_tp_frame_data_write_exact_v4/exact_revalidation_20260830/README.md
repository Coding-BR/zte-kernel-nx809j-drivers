# `tp_frame_data_write` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010de08`
- Stock body: 208 bytes
- Source: `tp_frame_data_write.c` (SHA-256 `c4a445090951046e175dcafe681f59949d79df54921e8cbc149f31aa3e3331ee`)
- Curated Docker snapshot: SHA-identical to the authoritative source
- Canonical build: Android 16 GKI 6.12.23/vendor_dlkm, Docker image `nubia-sm8850-kernel-builder:latest`, 2 reproducible cycles
- AArch64 gate: 52 instructions and 208 ELF bytes on stock and candidate, with equivalent normalized relocations
- KCFI: stock and candidate type ID `0xc3d43b4d`, section `.text`, size 208
- Strict Joern: one resolved source method, 32 calls, 3 control structures, 0 unresolved calls, no call deltas
- Direct host harness: 2 ASan/UBSan cycles, 4 cases per cycle, reproducible binary

This package promotes only the function-level offline claim `OFFLINE_EXACT`. Hardware behavior, MMIO meaning, runtime ABI interaction, and independent review remain deferred.
