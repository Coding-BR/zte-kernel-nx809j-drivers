# Exact revalidation: `010_get_lcd_panel_name`

This package records the reproducible promotion of `get_lcd_panel_name` at stock entry `0x00107ce0`.

- Docker canonical build: two cycles, identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 3/3 instructions and 12/12 bytes, including resolved relocations.
- KCFI: stock and candidate type ID `0x51b8bc5f`.
- Joern: strict PASS, zero parser problems, one-to-one Ghidra/source identity.
- Dedicated host ASan/UBSan: two cycles, 2/2 cases each, covering the returned literal, pointer identity and repeatability.

The combined ABI harness currently has unrelated `change_tp_state.c` stub drift; that limitation is preserved in the dedicated report rather than hidden.
