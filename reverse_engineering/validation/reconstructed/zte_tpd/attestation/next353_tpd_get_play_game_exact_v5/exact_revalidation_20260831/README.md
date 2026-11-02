# tpd_get_play_game — exact offline revalidation v5

This package records the 2026-08-31 offline revalidation of `tpd_get_play_game` from stock entry `0012c6cc`.

The candidate module was built from the reconstructed tree by the canonical Docker toolchain (`nubia-sm8850-kernel-builder:latest`, `clang-r536225`). The candidate function is 24 bytes / 6 AArch64 instructions, matching stock. Ghidra normalized decompiled-C equality and P-Code-operation shape equality both pass without a decompiler fallback. KCFI matches stock at type ID `0x73fc0d79`; scoped Joern analysis, two-cycle reproducible Docker build, relocation-aware assembly comparison, and the existing two-cycle ASan/UBSan host contract also pass.

This is an offline function-level attestation. It does not claim Android runtime, module loading, transport, IRQ, MMIO, flash, or NX809J hardware equivalence.

The source function is intentionally small and preserves the observed accesses: it loads the context pointer at `cdev + 0xdb8`, copies the 32-bit play-game value from context offset `1500` to `cdev + 1116`, and returns zero.
