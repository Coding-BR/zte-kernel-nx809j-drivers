# Exact revalidation: `011_tp_free_tp_firmware_data`

This package records the reproducible promotion of `tp_free_tp_firmware_data` at stock entry `0x00107cf0`.

- Docker canonical build: two cycles, identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 24/24 instructions and 96/96 bytes, including resolved relocations.
- KCFI: stock and candidate type ID `0xe5c47d60`.
- Joern: strict PASS, zero parser problems, one-to-one Ghidra/source identity.
- Dedicated host ASan/UBSan: two cycles, 3/3 cases each, covering all cleanup branches and reset behavior.

The broader work/void harness has unrelated stub drift; that limitation is preserved in the dedicated report rather than hidden.
