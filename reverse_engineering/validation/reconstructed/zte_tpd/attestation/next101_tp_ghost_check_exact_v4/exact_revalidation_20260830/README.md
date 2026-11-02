# `tp_ghost_check` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010f400`
- Stock body: 1312 bytes
- C source: `tp_ghost_check.c` (SHA-256 `be1c716aeabd399f110210e641c316ad2e88fd905104b2f2992e657bf821a647`)
- Exact source: `tp_ghost_check_exact.S` (SHA-256 `20440e660a3c37dbd0f6608f2706ef2b8b5405fb42bfc2b6730dbdeba47e5910`)
- Curated Docker snapshot: SHA-identical for the C source
- Canonical build: Android 16 GKI 6.12.23/vendor_dlkm, Docker image `nubia-sm8850-kernel-builder:latest`, 2 reproducible cycles
- AArch64 gate: 328 instructions and 1312 ELF bytes on stock and candidate, with equivalent normalized relocations
- KCFI: stock and candidate type ID `0x2fad8a96`, section `.text`, size 1312
- Strict Joern: one resolved source method, 252 calls, 85 control structures, 0 unresolved calls, no call deltas
- Direct host harness: 2 ASan/UBSan cycles, 4 cases per cycle, reproducible binary

This package promotes only the function-level offline claim `OFFLINE_EXACT`. Hardware behavior, runtime integration, and independent review remain deferred.
