# `syna_ghost_check_reset` exact revalidation

This package records the offline exact revalidation of microtask `360_syna_ghost_check_reset` for `zte_tpd`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088bca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 24 instructions and 96 bytes at stock entry `0x0012c940`.
- KCFI comparison: PASS; type ID `0x73fc0d79`, with a 96-byte function body.
- Direct host contract tests: PASS; 8 checks in each of two Docker cycles with ASan/UBSan enabled.
- Strict Joern gate: PASS for the requested function, with clean parsing and no unresolved calls or parse problems.

The contract validates the return value, all five calls, call order, TCM and hardware-interface propagation, disabled fingerprint mode, and the two logging arguments. The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. Device operations and `printk` are represented by host stubs; there was no Android device, module insertion, transport, IRQ, MMIO, flash, or real hardware validation. The whole-module build proves compilation and reproducibility, while the assembly, KCFI, host contract, and Joern reports provide the function-scoped gates.
