# `init_module` / `zte_touch_init` exact revalidation

This package records the offline exact revalidation of microtask `366_init_module` for `zte_tpd`. The stock ELF entry `init_module` is produced by `module_init(zte_touch_init)` and is compared against the reconstructed source function `zte_touch_init`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 16 instructions and 64 bytes at stock entry `0x0013159c`, in `.init.text`, with matching relocation-resolved layout.
- KCFI comparison: PASS; type ID `0x6fbb3035`, with matching 64-byte `.init.text` function body.
- Direct host contract tests: PASS; one case in each of two Docker cycles with ASan/UBSan enabled. The contract checks the printk payload and propagation of `_platform_driver_register` failure, including the driver and module arguments.
- Strict Joern gate: PASS for `init_module@0013159c`, resolved to `zte_touch_init`, with clean parsing and no unresolved calls or mapped call deltas.

The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. There was no Android device, module insertion, transport, IRQ, MMIO, firmware, or real hardware validation. The whole-module build proves compilation and reproducibility, while the assembly, KCFI, direct host contract, and Joern reports provide the function-scoped gates. The source/ELF name relationship comes from the preserved `module_init(zte_touch_init)` mapping and is not a claim that the source symbol itself is literally named `init_module`.
