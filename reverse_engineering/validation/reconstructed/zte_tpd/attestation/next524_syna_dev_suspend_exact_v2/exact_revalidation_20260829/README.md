# `syna_dev_suspend` exact revalidation v2

This package records the Docker-backed revalidation of microtask `164_syna_dev_suspend` after resolving the low-power-gesture call relocation in the exact assembly.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088bca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 98 instructions and 392-byte symbol for stock entry `0x0011337c`, with equivalent relocations.
- KCFI: PASS; type ID `0x2a703c0b`, `.text`, 392 bytes.
- Host direct tests: PASS; 6 contract cases across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The low-power-gesture call in `syna_dev_suspend_exact.S` now uses an explicit `R_AARCH64_CALL26` relocation to `syna_dev_enable_lowpwr_gesture`, preserving the stock call target while remaining relocatable in the out-of-tree module.

## Limitations

This is offline/static evidence. It does not exercise Android hardware, power rails, transport, IRQ, firmware, or module insertion.
