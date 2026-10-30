# `init_module` exact offline revalidation v5

This package records the 2026-08-31/2026-09-01 offline revalidation of microtask `366_init_module` for `zte_tpd`, source function `zte_touch_init`, stock entry `0x0013159c`.

The canonical Docker build passed in two cycles with the curated engineering snapshot at `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`, image `nubia-sm8850-kernel-builder:latest`, and `clang-r536225`. Relocation-aware AArch64 comparison passed at 16 instructions and 64 bytes; KCFI, scoped Joern, Joern slice, input identity, map identity, and Docker reproducibility also passed.

The ELF `init_module` alias is compared as `init_module` in the candidate and stock Ghidra exports, while the source/Joern identity remains `zte_touch_init`. Ghidra required clearing the inferred no-return flag for `_printk` and extending the candidate body to the ELF-proven 64-byte symbol. Its C decompiler stops after the logging call; the hard protocol records this as a narrow premature-return fallback. The fallback is limited to decompiled C and requires exact body bytes, P-Code operation shape, assembly/relocations, KCFI, Joern, and Docker.

The source preserves the module-entry logging, driver registration call, `zte_touch_device_driver` and `__this_module` relocation operands, and the observed return behavior. The existing ASan/UBSan host contract is carried forward from the `zte_touch_init` harness.

## Limitations

Evidence is offline and static. No Android module insertion, transport, IRQ, MMIO, flash, physical device, or NX809J runtime was exercised. The non-promoting hard runner reports `CORE_GATES_PASS`; runtime/hardware validation remains out of scope.
