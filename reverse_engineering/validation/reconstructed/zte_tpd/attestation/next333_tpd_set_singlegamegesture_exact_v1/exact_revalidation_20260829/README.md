# `tpd_set_singlegamegesture` exact revalidation

This package records the Docker-backed revalidation of microtask `333_tpd_set_singlegamegesture`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088bca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 49 instructions, 196-byte symbol, and equivalent relocations for stock entry `0x0012bc04`.
- KCFI: PASS; type ID `0x6af8b499`, `.text`, 196 bytes.
- Host direct tests: PASS; 8 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero unresolved calls or parse problems.

## Reproduction

The module was built from `.tmp_next333_current_snapshot_v1\engineering\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles. The host oracle covers positive, zero, negative and inactive-state branches, including the observed bitwise state update and preservation behavior.

## Limitations

This is an offline/static promotion. It does not exercise real kernel logging, transport, IRQ, MMIO, flash hardware or module loading, and no Android device validation was available.
