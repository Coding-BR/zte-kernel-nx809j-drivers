# `tpd_enable_wakegesture` exact revalidation

This package records the Docker-backed revalidation of microtask `331_tpd_enable_wakegesture`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 19 instructions, 76-byte symbol, and equivalent relocations for stock entry `0x0012bb4c`.
- KCFI: PASS; type ID `0x6af8b499`, `.text`, 76 bytes.
- Host direct tests: PASS; 4 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero unresolved calls or parse problems.

## Reproduction

The module was built from `.tmp_next331_current_snapshot_v1\engineering\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles. The host oracle checks both observed branches: the active state updates the wakegesture value, while the inactive state preserves it.

## Limitations

This is an offline/static promotion. It does not execute the real touchscreen driver, power framework or hardware, and no Android device validation was available.
