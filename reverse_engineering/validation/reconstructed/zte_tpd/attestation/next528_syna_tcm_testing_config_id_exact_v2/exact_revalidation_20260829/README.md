# `syna_tcm_testing_config_id` exact revalidation v2

This package records the Docker-backed revalidation of microtask `240_syna_tcm_testing_config_id` after binding its three relocated collaborator calls.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 101 instructions and 404-byte symbol for stock entry `0x0011d7ac`, with equivalent relocations.
- KCFI: PASS; type ID `0x81c04a92` preserved for the 404-byte symbol.
- Host direct tests: PASS; 5 oracle groups across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The exact assembly now uses explicit `R_AARCH64_CALL26` relocations for `syna_tcm_buf_alloc`, `syna_pal_mem_cpy`, and `syna_tcm_testing_0002_check_config_id`, preserving the stock call targets in the relocatable out-of-tree module.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, SPI transport, firmware, IRQs, or module insertion.
