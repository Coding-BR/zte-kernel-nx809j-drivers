# `syna_work_charger_detect_work` exact revalidation v2

This package records the Docker-backed revalidation of microtask `328_syna_work_charger_detect_work` after binding the charger-status and work-status state to verified local symbols.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 118 instructions and 472-byte symbol for stock entry `0x0012b8d0`, with equivalent relocations.
- KCFI: PASS; type ID `0xa607748c` preserved for the 472-byte symbol.
- Host direct tests: PASS across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The exact assembly binds the charger-status and work-status accesses to the verified local `.bss` symbols `syna_get_charger_status.batt_psy` and `syna_work_charger_detect_work.status`, preserving the stock offsets and relocations.

## Limitations

This is offline/static evidence. It does not exercise the real power-supply framework, Android hardware, firmware, IRQs, or module insertion.
