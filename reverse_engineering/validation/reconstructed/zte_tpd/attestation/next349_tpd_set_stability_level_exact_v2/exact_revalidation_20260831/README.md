# `tpd_set_stability_level` exact revalidation

This package records the offline exact revalidation of microtask `349_tpd_set_stability_level` for `zte_tpd`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 function comparison: PASS; 47 instructions and 188 bytes at stock entry `0x0012c364`.
- KCFI comparison: PASS; type ID `0x6af8b499`, with a 188-byte function body.
- Direct host contract tests: PASS; 12 checks in each of two Docker cycles with ASan/UBSan enabled.
- Strict Joern gate: PASS for the requested function, with clean parsing and no unresolved calls or parse problems.

The host contract covers null context, level clamping, hardware-derived fallback selection, setter failure behavior, inactive-device behavior, and successful active-device behavior. The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. The setter and hardware state are represented by test doubles; there was no Android device, module insertion, transport, IRQ, MMIO, flash, or real `printk` validation. The whole-module build proves compilation and reproducibility, while the assembly, KCFI, host contract, and Joern reports provide the function-scoped gates.
