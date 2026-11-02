# `syna_tcm_read_flash_boot_config` exact revalidation v2

This package records the Docker-backed revalidation of microtask `299_syna_tcm_read_flash_boot_config` after replacing fragile string-plus-offset relocations with verified local labels.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 139 instructions and 556-byte symbol for stock entry `0x00125290`, with equivalent relocations.
- KCFI: PASS; stock and candidate both have no valid standalone KCFI preamble because the neighboring preamble overlaps the function body.
- Host direct tests: PASS; 8 contract cases across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The exact assembly binds the verified boot-config strings to local labels and uses explicit `R_AARCH64_CALL26` relocations for `syna_pal_mem_free` and `syna_pal_mem_alloc`, preserving the stock code size and call targets.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, SPI transport, firmware, IRQs, flash contents, or module insertion.
