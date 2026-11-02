# `syna_tcm_parse_touch_report` exact revalidation v2

This package records the Docker-backed revalidation of microtask `316_syna_tcm_parse_touch_report`, the largest currently pending reconstructed function in this queue.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 1,813 instructions and 7,252-byte symbol for stock entry `0x0012860c`, with equivalent relocations.
- KCFI: PASS; type ID `0xc5545626` preserved for the 7,252-byte symbol.
- Host direct tests: PASS; 13 contract cases across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The C reconstruction is bound to the stock function identity and validated against the complete AArch64 opcode, relocation, symbol-size and KCFI evidence.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, SPI transport, firmware, IRQs, controller state, or module insertion.
