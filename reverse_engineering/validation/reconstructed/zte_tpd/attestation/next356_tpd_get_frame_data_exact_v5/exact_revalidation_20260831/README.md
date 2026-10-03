# tpd_get_frame_data — exact offline revalidation v5

This package records the 2026-08-31 offline revalidation of `tpd_get_frame_data` from stock entry `0012c7fc`.

The candidate was built with the canonical Docker toolchain (`nubia-sm8850-kernel-builder:latest`, `clang-r536225`). Its function is 24 bytes / 6 AArch64 instructions, matching stock. Ghidra normalized decompiled-C and P-Code-operation shape equality pass without fallback. KCFI, relocation-aware assembly, reproducible Docker build, scoped Joern, and the two-cycle ASan/UBSan host contract pass.

The source preserves the observed context load at `cdev + 0xdb8`, the 32-bit read at context offset `0x5e0`, the 32-bit store at `cdev + 0x460`, and the zero return. Android runtime and NX809J hardware behavior remain out of scope.
