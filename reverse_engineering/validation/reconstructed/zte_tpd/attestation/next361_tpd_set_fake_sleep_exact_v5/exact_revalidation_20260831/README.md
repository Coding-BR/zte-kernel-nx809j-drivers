# `tpd_set_fake_sleep` exact offline revalidation v5

This package records the 2026-08-31/2026-09-01 offline revalidation of microtask `361_tpd_set_fake_sleep` for `zte_tpd`, stock entry `0x0012c9a4`.

The canonical Docker build passed in two cycles with the curated engineering snapshot at `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`, image `nubia-sm8850-kernel-builder:latest`, and `clang-r536225`. Relocation-aware AArch64 comparison passed at 22 instructions and 88 bytes; KCFI, scoped Joern, Joern slice, input identity, map identity, and Docker reproducibility also passed.

Ghidra required clearing the inferred no-return flag for `_printk` and extending the candidate body to the ELF-proven 88-byte symbol. Its C decompiler propagates the logging return temporary on the error branch; the hard protocol uses the new narrow return-zero propagation rule. The rule accepts only alpha-equivalent local temporaries with identical state effects and logging call, while exact body bytes, P-Code shape, assembly/relocations, KCFI, Joern, and Docker remain mandatory.

The source preserves the two state branches, writes at context offsets `0x5ec` and `0x5e8`, updates `is_fake_sleep_mode` only in the active branch, logs only in suspend/error state, and returns zero. Host ASan/UBSan contract evidence is carried forward from the same source and passes in two Docker cycles.

## Limitations

Evidence is offline and static. No Android module insertion, transport, IRQ, MMIO, flash, physical device, or NX809J runtime was exercised. The non-promoting hard runner reports `CORE_GATES_PASS`; runtime/hardware validation remains out of scope.
