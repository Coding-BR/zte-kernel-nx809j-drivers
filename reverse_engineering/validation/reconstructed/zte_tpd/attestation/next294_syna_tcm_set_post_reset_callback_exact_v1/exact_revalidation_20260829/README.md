# `syna_tcm_set_post_reset_callback` exact revalidation

This package records the Docker-backed revalidation of microtask `294_syna_tcm_set_post_reset_callback`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the synchronized Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 18 instructions, 72-byte symbol, and equivalent relocations for stock entry `0x001241bc`.
- KCFI: PASS; type ID `0xef5efc68`, `.text`, 72 bytes.
- Host direct tests: PASS; 2 cases × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero parse problems.

## Reproduction

The module was built from `.tmp_next294b_current_snapshot_v1\engineering\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles. The host oracle directly checks callback/context storage, overwrite behavior, the null-handle `-241` return and the `printk` format/name contract.

## Limitations

This is an offline/static promotion. It does not execute the callback through the kernel, exercise transport, IRQ, MMIO, flash hardware or module loading, and no Android device validation was available.
