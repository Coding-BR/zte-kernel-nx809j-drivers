# aw8693x_get_theory_time reconstruction

- Stock entry: `0x00106438`; function body: 216 bytes / 54 AArch64 instructions.
- Root cause: Ghidra inferred a 32-bit `uint` return from the pseudocode, but the stock KCFI type ID identifies a 64-bit return. Declaring the function as `u32` changed KCFI and made Clang schedule a different epilogue. The corrected `u64` signature matches stock KCFI `0x09a385f3`.
- The arithmetic intentionally remains 32-bit: it multiplies the signed frequency field by 1000, then divides by 12, 24, or 48 according to mode bits `0x60`; unsupported modes return zero. The result is zero-extended for the 64-bit return and logged with the stock format, arguments, and line number.
- Strict assembly and relocation comparison passed: 216 bytes / 54 instructions. Normalized Ghidra C and P-code, KCFI, input identity, map identity, Joern scoped and slice checks, and reproducible Docker build all passed (`hard_protocol_report.json`).
- Docker used `nubia-sm8850-kernel-builder:latest`, `clang-r536225`, and the `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains` volumes. Both clean builds produced SHA-256 `9ef88f525c4378e38b28ba8e13b7293e0923bd3747180ce3e95074dc08ef7604`.
- This is a function-level candidate only. Promotion is unauthorized; the map remains `candidate_under_static_validation` and `semantic_equivalence: NOT_ESTABLISHED`. The driver-wide audit still reports 56 unmapped stock functions, alias and undefined-symbol mismatches, and a vermagic mismatch. No full-driver or hardware equivalence is claimed.

The Ghidra import logged that the module's DWARF version 0 is unsupported, but binary analysis and export completed. The candidate export metadata and scoped export are preserved alongside the hard-protocol job and report.
