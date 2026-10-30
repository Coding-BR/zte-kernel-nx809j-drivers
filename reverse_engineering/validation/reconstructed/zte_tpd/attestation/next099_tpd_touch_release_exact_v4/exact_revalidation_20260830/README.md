# `tpd_touch_release` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010ec70`
- Stock body: 1596 bytes
- Source: `tpd_touch_release.c` (SHA-256 `b7d94231ede3f16c94c3b2368a10ca3485694f441432dc75b18f4cf24f2aa8ba`)
- Curated Docker snapshot: SHA-identical to the authoritative source
- Canonical build: Android 16 GKI 6.12.23/vendor_dlkm, Docker image `nubia-sm8850-kernel-builder:latest`, 2 reproducible cycles
- AArch64 gate: 399 instructions and 1596 ELF bytes on stock and candidate, with equivalent normalized relocations
- KCFI: stock and candidate type ID `0xdb725fb0`, section `.text`, size 1596
- Strict Joern: one resolved source method, 412 calls, 66 control structures, 0 unresolved calls, no call deltas
- Direct host harness: 2 ASan/UBSan cycles, 4 cases per cycle, reproducible binary

This package promotes only the function-level offline claim `OFFLINE_EXACT`. Hardware behavior, input subsystem integration, runtime ABI interaction, and independent review remain deferred.
