# `tpd_set_palm_mode` exact offline revalidation v5

This package records the 2026-08-31/2026-09-01 offline revalidation of microtask `359_tpd_set_palm_mode` for `zte_tpd`, stock entry `0x0012c900`.

The canonical Docker build passed in two cycles with the curated engineering snapshot at `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`, image `nubia-sm8850-kernel-builder:latest`, and `clang-r536225`. Relocation-aware AArch64 comparison passed at 15 instructions and 60 bytes; KCFI, scoped Joern, Joern slice, input identity, map identity, and Docker reproducibility also passed.

Ghidra required the documented repair protocol: clear the inferred no-return flag for `_printk` and extend the candidate function body to the ELF-proven 60-byte symbol. The resulting candidate P-Code shape and body size match stock. Ghidra's C decompiler still emits a premature `return;` after the logging call; the hard protocol therefore uses its narrow P-Code-authoritative fallback. This fallback does not relax body bytes, P-Code shape, assembly/relocations, KCFI, Joern, or Docker gates.

The candidate source preserves the observed context load, 32-bit store at context offset `0x5e4`, logging call/argument, and zero return. Host ASan/UBSan contract evidence is carried forward from the same source and passes in two Docker cycles.

## Limitations

Evidence is offline and static. No Android module insertion, transport, IRQ, MMIO, flash, physical device, or NX809J runtime was exercised. The non-promoting hard runner reports `CORE_GATES_PASS`; runtime/hardware validation remains out of scope.
