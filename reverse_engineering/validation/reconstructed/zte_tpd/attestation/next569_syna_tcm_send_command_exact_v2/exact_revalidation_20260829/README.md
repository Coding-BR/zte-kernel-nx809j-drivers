# `syna_tcm_send_command` exact revalidation v2

This package records the Docker-backed revalidation of microtask `288_syna_tcm_send_command` after binding its two relocated buffer-copy calls.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 119 instructions and 476-byte symbol for stock entry `0x00123dc0`, with equivalent relocations.
- KCFI: PASS; type ID `0x2e79609a` preserved for the 476-byte symbol.
- Host direct tests: PASS; 8 contract cases across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The exact assembly now uses explicit `R_AARCH64_CALL26` relocations for both calls to `syna_tcm_buf_copy`, preserving the stock call target and relocatable module semantics.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, SPI transport, firmware, IRQs, or module insertion.
