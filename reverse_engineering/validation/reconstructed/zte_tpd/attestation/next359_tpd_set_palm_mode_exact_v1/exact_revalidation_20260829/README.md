# `tpd_set_palm_mode` exact revalidation

This package records the offline exact revalidation of microtask `359_tpd_set_palm_mode` for `zte_tpd`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088bca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 15 instructions and 60 bytes at stock entry `0x0012c900`.
- KCFI comparison: PASS; type ID `0x6af8b499`, with a 60-byte function body.
- Direct host contract tests: PASS; 4 checks in each of two Docker cycles with ASan/UBSan enabled.
- Strict Joern gate: PASS for the requested function, with clean parsing and no unresolved calls or parse problems.

The contract covers the value transfer to the observed context offset `0x5e4`, the `printk` call and its argument, and the zero return. The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. The logging call and device memory are represented by host test doubles; there was no Android device, module insertion, transport, IRQ, MMIO, flash, or real `printk` validation. The whole-module build proves compilation and reproducibility, while the assembly, KCFI, host contract, and Joern reports provide the function-scoped gates.
