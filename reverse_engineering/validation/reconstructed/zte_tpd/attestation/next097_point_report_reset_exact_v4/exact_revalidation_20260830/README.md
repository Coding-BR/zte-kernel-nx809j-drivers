# `point_report_reset` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010ea98`
- Stock body: 216 bytes
- Source: `point_report_reset.c` (SHA-256 `cdda215f9a40aa79a3ceecacdf086b15286b533711a4524ca2e988031859e2e1`)
- Curated Docker snapshot: SHA-identical to the authoritative source
- Canonical build: Android 16 GKI 6.12.23/vendor_dlkm, Docker image `nubia-sm8850-kernel-builder:latest`, 2 reproducible cycles
- AArch64 gate: 54 instructions and 216 ELF bytes on stock and candidate, with equivalent normalized relocations
- KCFI: both stock and candidate report `NO_VALID_KCFI_PREAMBLE` because the detected preamble overlaps the neighboring function body; section and symbol size match
- Strict Joern: one resolved source method, 36 calls, 2 control structures, 0 unresolved calls, no call deltas
- Direct host harness: 2 Docker ASan/UBSan repetitions, 11 direct assertions per execution, with active/inactive paths covered

This package promotes only the function-level offline claim `OFFLINE_EXACT`. The matching KCFI exclusion is recorded as evidence, not as a fabricated type ID. Hardware behavior, MMIO meaning, runtime ABI interaction, and independent review remain deferred.
