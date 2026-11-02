# `tpd_set_fake_sleep` exact revalidation

This package records the offline exact revalidation of microtask `361_tpd_set_fake_sleep` for `zte_tpd`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088bca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 22 instructions and 88 bytes at stock entry `0x0012c9a4`.
- KCFI comparison: PASS; type ID `0x6af8b499`, with an 88-byte function body.
- Direct host contract tests: PASS; 12 checks in each of two Docker cycles with ASan/UBSan enabled.
- Strict Joern gate: PASS for the requested function, with clean parsing and no unresolved calls or parse problems.

The contract covers the active and inactive branches, the always-written requested field, the active applied field, the global state update, the inactive logging path, and the zero return. The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. Device memory, global state, and `printk` are represented by host test doubles; there was no Android device, module insertion, transport, IRQ, MMIO, flash, or real hardware validation. The whole-module build proves compilation and reproducibility, while the assembly, KCFI, host contract, and Joern reports provide the function-scoped gates.
