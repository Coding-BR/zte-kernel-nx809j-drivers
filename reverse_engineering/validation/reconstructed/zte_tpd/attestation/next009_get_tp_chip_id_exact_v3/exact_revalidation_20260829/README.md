# Exact revalidation: `009_get_tp_chip_id`

This package records the reproducible promotion of `get_tp_chip_id` at stock entry `0x00107aec`.

- Docker canonical build: two cycles, identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 124/124 instructions and 496/496 bytes, including resolved relocations.
- KCFI: stock and candidate type ID `0x6fbb3035`.
- Joern: strict PASS, zero parser problems, one-to-one Ghidra/source identity.
- Dedicated host ASan/UBSan: two cycles, 2/2 cases each, covering all eleven vendor indices, order and the no-match sentinel.

The combined ABI harness currently has unrelated `change_tp_state.c` stub drift; that limitation is preserved in the dedicated report rather than hidden.
