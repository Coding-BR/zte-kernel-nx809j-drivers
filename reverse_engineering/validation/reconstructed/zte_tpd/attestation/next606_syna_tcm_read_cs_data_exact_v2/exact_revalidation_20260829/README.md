# `syna_tcm_read_cs_data` exact revalidation v2

This package records the Docker-backed revalidation of microtask `309_syna_tcm_read_cs_data` after binding its two relocated flash-access calls.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 197 instructions and 788-byte symbol for stock entry `0x001277fc`, with equivalent relocations.
- KCFI: PASS; type ID `0xdd66a5c9` preserved for the 788-byte symbol.
- Host direct tests: PASS; 10 contract cases across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The exact assembly now uses explicit `R_AARCH64_CALL26` relocations for `syna_tcm_set_up_flash_access` and `syna_tcm_read_flash_boot_cs_config`, preserving the stock call targets in the relocatable module.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, SPI transport, firmware, IRQs, flash contents, or module insertion.
