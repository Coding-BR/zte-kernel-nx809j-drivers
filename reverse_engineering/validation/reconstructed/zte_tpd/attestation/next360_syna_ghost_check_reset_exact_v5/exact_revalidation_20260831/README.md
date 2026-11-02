# `syna_ghost_check_reset` exact offline revalidation v5

This package records the 2026-08-31/2026-09-01 offline revalidation of microtask `360_syna_ghost_check_reset` for `zte_tpd`, stock entry `0x0012c940`.

The canonical Docker build passed in two cycles with the curated engineering snapshot at `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`, image `nubia-sm8850-kernel-builder:latest`, and `clang-r536225`. Relocation-aware AArch64 comparison passed at 24 instructions and 96 bytes; KCFI, scoped Joern, Joern slice, input identity, map identity, and Docker reproducibility also passed.

Ghidra required clearing the inferred no-return flag for `_printk` and extending the candidate body to the ELF-proven 96-byte symbol. Its C decompiler emits `void ... return;` while stock emits `undefined8 ... return 0;`; the hard protocol records this as a narrow premature-return decompiler fallback. The fallback is limited to decompiled C and requires exact body bytes, P-Code operation shape, assembly/relocations, KCFI, Joern, and Docker.

The source preserves the five ordered reset calls, the TCM-to-hardware-interface propagation, the disabled fingerprint-mode write, the success log arguments, and the zero return. Host ASan/UBSan contract evidence is carried forward from the existing exact-v1 harness.

## Limitations

Evidence is offline and static. No Android module insertion, transport, IRQ, MMIO, flash, physical device, or NX809J runtime was exercised. The non-promoting hard runner reports `CORE_GATES_PASS`; runtime/hardware validation remains out of scope.
