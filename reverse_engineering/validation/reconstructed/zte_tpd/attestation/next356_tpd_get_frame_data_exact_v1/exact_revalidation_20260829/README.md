# `tpd_get_frame_data` exact revalidation

This package records the offline exact revalidation of microtask `356_tpd_get_frame_data` for `zte_tpd`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 6 instructions and 24 bytes at stock entry `0x0012c7fc`.
- KCFI comparison: PASS; type ID `0x73fc0d79`, with a 24-byte function body.
- Direct host contract tests: PASS; 4 checks in each of two Docker cycles with ASan/UBSan enabled.
- Strict Joern gate: PASS for the requested function, with clean parsing and no unresolved calls or parse problems.

The host contract covers the observed context load, source read at offset `0x5e0`, destination store at offset `0x460`, return value, and preservation of an unrelated field. The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. The test uses fake client/context memory; there was no Android device, module insertion, transport, IRQ, MMIO, flash, or real `printk` validation. The whole-module build proves compilation and reproducibility, while the assembly, KCFI, host contract, and Joern reports provide the function-scoped gates.
