# Exact revalidation: `007_tpd_zlog_init`

This package records the reproducible promotion of `tpd_zlog_init` at stock entry `0x001078c8`.

- Docker canonical build: two cycles, identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 46/46 instructions and 184/184 bytes, including resolved relocations.
- KCFI: stock and candidate type ID `0xe5c47d60`.
- Joern: strict PASS, zero parser problems, one-to-one Ghidra/source identity.
- Host ASan/UBSan: two cycles, 10/10 cases each; `test_layout_and_init` directly covers initialization.

The host harness stubs kernel globals and does not replace device or Android-hardware validation.
