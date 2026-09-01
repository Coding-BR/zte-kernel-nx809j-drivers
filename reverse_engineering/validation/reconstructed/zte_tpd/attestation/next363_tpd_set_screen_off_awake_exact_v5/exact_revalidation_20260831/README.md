# `tpd_set_screen_off_awake` exact offline revalidation v5

This package records the 2026-08-31/2026-09-01 offline revalidation of microtask `363_tpd_set_screen_off_awake` for `zte_tpd`, stock entry `0x0012ca1c`.

The canonical Docker build passed in two cycles with the curated engineering snapshot at `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`, image `nubia-sm8850-kernel-builder:latest`, and `clang-r536225`. Relocation-aware AArch64 comparison passed at 22 instructions and 88 bytes; KCFI, scoped Joern, Joern slice, input identity, map identity, and Docker reproducibility also passed.

Ghidra required clearing the inferred no-return flag for `_printk` and extending the candidate body to the ELF-proven 88-byte symbol. The first repair exposed an auto-created nested function at `0x0015ae30`; the repair script was hardened to remove only functions whose entry points fall strictly inside the ELF-proven symbol interval. The second export then represented the full 88-byte body. Ghidra C propagates the logging return temporary on the error branch; the hard protocol uses the narrow return-zero propagation rule. That fallback is limited to decompiled C and requires exact body bytes, P-Code shape, assembly/relocations, KCFI, Joern, and Docker.

The source preserves the two state branches, writes the context state at offsets `0x5f4` and `0x5f0`, updates `is_screen_off_awake_mode` only in the active branch, logs only in suspend/error state, and returns zero. Host ASan/UBSan contract evidence is carried forward from the existing exact-v1 harness.

## Limitations

Evidence is offline and static. No Android module insertion, transport, IRQ, MMIO, flash, physical device, or NX809J runtime was exercised. The non-promoting hard runner reports `CORE_GATES_PASS`; runtime/hardware validation remains out of scope.
