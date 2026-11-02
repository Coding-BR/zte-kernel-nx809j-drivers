# Exact revalidation: `006_zlog_register_work_deinit`

This package records the reproducible promotion of `zlog_register_work_deinit` at stock entry `0x00107874`.

- Docker canonical build: two cycles, identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 20/20 instructions and 80/80 bytes, including resolved relocations.
- KCFI: stock and candidate type ID `0xe5c47d60`.
- Joern: strict PASS, zero parser problems, one-to-one Ghidra/source identity.
- Host ASan/UBSan: two cycles, 10/10 cases each; the shared `test_work_lifecycle` case directly covers this function's teardown path.

The host harness stubs kernel services and does not replace device or Android-hardware validation.
