# `tpd_get_singlefpgesture` exact revalidation v2

This package records the Docker-backed revalidation of microtask `336_tpd_get_singlefpgesture` after adding the observed KCFI preamble to the exact assembly.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088bca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 24 instructions and 96-byte symbol for stock entry `0x0012bde4`, with equivalent relocations.
- KCFI: PASS; type ID `0x73fc0d79`, `.text`, 96 bytes.
- Host direct tests: PASS across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

`tpd_get_singlefpgesture_exact.S` now carries the observed KCFI type-ID preamble. The module was rebuilt from the Docker-curated snapshot, and the candidate assembly was compared against the preserved stock assembly and relocations.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, module insertion, transport, IRQ, MMIO, or real kernel behavior.
