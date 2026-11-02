# `tpd_set_game_partition` exact revalidation

This package records the offline exact revalidation of microtask `355_tpd_set_game_partition` for `zte_tpd`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 13 instructions and 52 bytes at stock entry `0x0012c7c4`, including equivalent symbolic relocations for the logging call and strings.
- KCFI comparison: PASS; type ID `0x64f25fb2`, with a 52-byte function body.
- Direct host contract tests: PASS; 4 checks in each of two Docker cycles with ASan/UBSan enabled.
- Strict Joern gate: PASS for the requested function, with clean parsing and no unresolved calls or parse problems.

The contract checks the zero return, exactly one `printk` call, both observed function-name arguments, and the no-op treatment of the input arguments. The reconstructed AArch64 implementation is preserved in `candidate_exact.S`. The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. The logging call is represented by a host stub; there was no Android device, module insertion, transport, IRQ, MMIO, flash, or real `printk` validation. The whole-module build proves compilation and reproducibility, while the assembly, KCFI, host contract, and Joern reports provide the function-scoped gates.
