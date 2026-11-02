# `tpd_enable_wakegesture` exact revalidation v2

This package records the Docker-backed revalidation of microtask `331_tpd_enable_wakegesture` after adding the observed KCFI preamble to the exact assembly.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 19 instructions and 76-byte symbol for stock entry `0x0012bb4c`, with equivalent relocations.
- KCFI: PASS; type ID `0x6af8b499`, `.text`, 76 bytes.
- Host direct tests: PASS; contract checks across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

`tpd_enable_wakegesture_exact.S` now carries the observed KCFI type-ID preamble. The module was rebuilt from the Docker-curated snapshot, and the candidate assembly was compared against the preserved stock assembly and relocations.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, module insertion, transport, IRQ, MMIO, or real kernel behavior.
