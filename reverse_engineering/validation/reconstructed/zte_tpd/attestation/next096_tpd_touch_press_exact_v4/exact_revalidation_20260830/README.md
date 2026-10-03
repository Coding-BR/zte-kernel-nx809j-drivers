# `tpd_touch_press` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010e254`
- Stock body: 2116 bytes
- Source: `tpd_touch_press.c` (SHA-256 `7f16fc744b2c1b7c321f47d31f12adda6b7b5ed5d020abc1ac637bd792381ea6`)
- Curated Docker snapshot: SHA-identical to the authoritative source
- Canonical build: Android 16 GKI 6.12.23/vendor_dlkm, Docker image `nubia-sm8850-kernel-builder:latest`, 2 reproducible cycles
- AArch64 gate: 529 instructions and 2116 ELF bytes on stock and candidate, with equivalent normalized relocations
- KCFI: stock and candidate type ID `0x73b3656d`, section `.text`, size 2116
- Strict Joern: one resolved source method, 444 calls, 112 control structures, 0 unresolved calls, no call deltas
- Direct host harness: 2 ASan/UBSan cycles, 4 cases per cycle, reproducible binary

This package promotes only the function-level offline claim `OFFLINE_EXACT`. Hardware behavior, MMIO meaning, runtime ABI interaction, and independent review remain deferred.
