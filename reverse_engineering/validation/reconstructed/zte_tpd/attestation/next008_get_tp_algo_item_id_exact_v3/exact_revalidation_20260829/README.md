# Exact revalidation: `008_get_tp_algo_item_id`

This package records the reproducible promotion of `get_tp_algo_item_id` at stock entry `0x00107984`.

- Docker canonical build: two cycles, identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 89/89 instructions and 356/356 bytes, including resolved relocations.
- KCFI: stock and candidate type ID `0x7bff871d`.
- Joern: strict PASS, zero parser problems, one-to-one Ghidra/source identity.
- Dedicated host ASan/UBSan: two cycles, 2/2 cases each, covering all seven items, ordering, substring matching and both error inputs.

The combined ABI harness currently has unrelated `change_tp_state.c` stub drift; that limitation is preserved in the dedicated report rather than hidden.
