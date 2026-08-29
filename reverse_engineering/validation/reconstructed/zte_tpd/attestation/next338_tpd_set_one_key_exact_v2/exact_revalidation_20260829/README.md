# `tpd_set_one_key` exact revalidation v2

This package records the Docker-backed revalidation of microtask `338_tpd_set_one_key` after the exact assembly update.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 24 instructions and 96-byte symbol for stock entry `0x0012befc`, with equivalent relocations.
- KCFI: PASS; type ID `0x6af8b499`, `.text`, 96 bytes.
- Host direct tests: PASS; 5 contract checks across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

`tpd_set_one_key_exact.S` now carries the observed KCFI type-ID preamble and the reconstructed logging format string. The module was rebuilt from the Docker-curated snapshot, and the candidate assembly was compared against the preserved stock assembly and relocations.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, module insertion, transport, IRQ, MMIO, or real kernel `printk` behavior.
