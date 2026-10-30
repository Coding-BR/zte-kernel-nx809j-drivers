# `syna_dev_resume` exact revalidation v2

This package records the Docker-backed revalidation of microtask `163_syna_dev_resume` after binding the two relocated calls in the exact AArch64 assembly.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 387 instructions and 1,548-byte symbol for stock entry `0x00112d6c`, with equivalent relocations.
- KCFI: PASS; type ID `0x2a703c0b` preserved for the 1,548-byte symbol.
- Host direct tests: PASS; 6 contract cases across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The exact assembly now uses explicit `R_AARCH64_CALL26` relocations for `syna_dev_enter_normal_sensing` and `syna_dev_set_up_app_fw`, preserving the stock call targets while keeping the out-of-tree module relocatable.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, power rails, transport, IRQ, firmware, completion timing, or module insertion.
