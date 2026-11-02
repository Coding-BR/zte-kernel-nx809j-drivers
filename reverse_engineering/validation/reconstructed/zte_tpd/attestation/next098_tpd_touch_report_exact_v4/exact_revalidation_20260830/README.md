# `tpd_touch_report` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010eb70`
- Stock body: 252 bytes
- Source: `tpd_touch_report.c` (SHA-256 `b5bc500eca7ef8e154280cb070b9b646446541c541c37117ce35e2c639d98107`)
- Curated Docker snapshot: SHA-identical to the authoritative source
- Canonical build: Android 16 GKI 6.12.23/vendor_dlkm, Docker image `nubia-sm8850-kernel-builder:latest`, 2 reproducible cycles
- AArch64 gate: 63 instructions and 252 ELF bytes on stock and candidate, with equivalent normalized relocations
- KCFI: both stock and candidate report `NO_VALID_KCFI_PREAMBLE`; section and symbol size match
- Strict Joern: one resolved source method, 15 calls, 2 control structures, 0 unresolved calls, no call deltas
- Direct host harness: 2 Docker ASan/UBSan repetitions, 16 direct tests

The Joern CPG uses the preserved analysis-only compatibility view in `joern/source_view/tpd_touch_report.c`, which defines the decompiler ABI tokens (`__fastcall`, `__int64`, `__int16`, `__int8`) solely for parser recovery. It is not a build input and does not replace the authoritative source.

This package promotes only the function-level offline claim `OFFLINE_EXACT`. Hardware behavior, input subsystem integration, runtime ABI interaction, and independent review remain deferred.
