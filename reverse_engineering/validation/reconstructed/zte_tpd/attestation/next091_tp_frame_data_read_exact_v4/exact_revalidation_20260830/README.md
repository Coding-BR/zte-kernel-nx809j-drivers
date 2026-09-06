# `tp_frame_data_read` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010dd14`
- Stock body: 240 bytes
- Source: `tp_frame_data_read.c` (SHA-256 `665444858bec1736787a4ead7eb3ffd7a53f1295daa158845491202d059a361d`)
- Curated Docker snapshot: SHA-identical to the authoritative source
- Canonical build: Android 16 GKI 6.12.23/vendor_dlkm, Docker image `nubia-sm8850-kernel-builder:latest`, 2 reproducible cycles
- AArch64 gate: 60 instructions and 240 ELF bytes on stock and candidate, with equivalent normalized relocations
- KCFI: stock and candidate type ID `0xf4e9d97c`, section `.text`, size 240
- Strict Joern: one resolved source method, 42 calls, 2 control structures, 0 unresolved calls, no call deltas
- Direct host harness: 2 ASan/UBSan cycles, 4 cases per cycle, reproducible binary

This package promotes only the function-level offline claim `OFFLINE_EXACT`. Hardware behavior, MMIO meaning, runtime ABI interaction, and independent review remain deferred.
