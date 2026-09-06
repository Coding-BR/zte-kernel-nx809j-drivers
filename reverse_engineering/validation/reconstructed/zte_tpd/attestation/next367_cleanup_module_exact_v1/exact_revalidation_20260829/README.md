# `cleanup_module` exact revalidation

This package records the offline exact revalidation of microtask `367_cleanup_module` for `zte_tpd`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 11 instructions and 44 bytes at stock entry `0x001315e0`, in `.exit.text`, with matching relocation-resolved layout.
- KCFI comparison: PASS; type ID `0xe5c47d60`, with matching 44-byte `.exit.text` function body.
- Direct host contract tests: PASS; one case in each of two Docker cycles with ASan/UBSan enabled. The contract checks the ordered calls to `syna_dev_module_exit`, `zte_touch_deinit`, and `platform_driver_unregister`, including the driver pointer.
- Strict Joern gate: PASS for `cleanup_module@001315e0`, with clean parsing and no unresolved calls or mapped call deltas.

The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. There was no Android device, module unload, transport, IRQ, MMIO, firmware, or real hardware validation. The whole-module build proves compilation and reproducibility, while the assembly, KCFI, direct host contract, and Joern reports provide the function-scoped gates.
