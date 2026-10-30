# `tp_pen_only_read` exact revalidation

This package records the offline exact revalidation of microtask `069_tp_pen_only_read` for `zte_tpd`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 60 instructions and 240 bytes at stock entry `0x0010c724`, with matching section, size, and relocation-resolved layout.
- KCFI comparison: PASS; type ID `0xf4e9d97c`, with matching function body size and section.
- Direct host contract tests: PASS; four cases in each of two Docker cycles with ASan/UBSan enabled. The contract checks the stock callback offset `0xf80`, value byte offset `0x441`, EOF behavior, short reads, zero count, formatting, and position advancement.
- Strict Joern gate: PASS for `tp_pen_only_read@0010c724`, with clean parsing and no unresolved calls or mapped call deltas.

The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. The callback, printk, simple_read_from_buffer, and device memory are host fixtures; there was no Android device, procfs, input subsystem, transport, module insertion, or physical hardware validation.
