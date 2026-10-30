# `tpd_get_singlefpgesture` exact revalidation v2

This package records the Docker-backed revalidation of microtask `336_tpd_get_singlefpgesture` after adding the observed KCFI preamble to the exact assembly.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 function comparison: PASS; 24 instructions and 96-byte symbol for stock entry `0x0012bde4`, with equivalent relocations.
- KCFI: PASS; type ID `0x73fc0d79`, `.text`, 96 bytes.
- Host direct tests: PASS across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; 18 calls, zero control structures, zero unresolved calls or parse problems.

## Exact update

`tpd_get_singlefpgesture_exact.S` carries the observed KCFI type-ID preamble. The module was rebuilt from `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`, and the candidate assembly was compared against the preserved stock assembly and relocations. Joern was rerun against the current source tree and map.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, module insertion, transport, IRQ, MMIO, or real kernel behavior.
