# `syna_tpd_register_fw_class` exact revalidation v2

This package records the Docker-backed revalidation of microtask `327_syna_tpd_register_fw_class` after binding the charger-status state to its verified local symbol.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 220 instructions and 880-byte symbol for stock entry `0x0012b55c`, with equivalent relocations.
- KCFI: PASS; type ID `0x3175607e` preserved for the 880-byte symbol.
- Host direct tests: PASS across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The exact assembly binds the charger-status pointer to the verified local `.bss` symbol `syna_get_charger_status.batt_psy`, preserving the stock offsets and relocations while keeping the module relocatable.

## Limitations

This is offline/static evidence. It does not exercise the real power-supply framework, Android hardware, firmware, IRQs, or module insertion.
