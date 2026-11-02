# `report_ufp_uevent` exact revalidation v2

This package records the Docker-backed revalidation of microtask `133_report_ufp_uevent` after binding the state object to the verified local `.bss` symbol.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 161 instructions and 644-byte symbol for stock entry `0x00110960`, with equivalent relocations.
- KCFI: PASS; type ID `0x454a91cb` preserved for the 644-byte symbol.
- Host direct tests: PASS; 7 contract cases across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The exact assembly now binds the repeated `area_meet_down` accesses to the local `.bss` symbol `report_ufp_uevent.area_meet_down`, preserving the stock offset and relocation semantics without relying on an artificial base-plus-offset symbol.

## Limitations

This is offline/static evidence. It does not exercise the Android uevent subsystem, smartphone, firmware transport, IRQs, or physical hardware.
