# `tpd_get_wakegesture` exact revalidation

This package records the Docker-backed revalidation of microtask `330_tpd_get_wakegesture`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 6 instructions, 24-byte symbol, and equivalent relocations for stock entry `0x0012bb30`.
- KCFI: PASS; type ID `0x73fc0d79`, `.text`, 24 bytes.
- Host direct tests: PASS; 2 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero unresolved calls or parse problems.

## Reproduction

The module was built from `.tmp_next330_current_snapshot_v1\engineering\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles. The host oracle checks the observed state-pointer offset, the wakegesture source offset and the destination store.

## Limitations

This is an offline/static promotion. It does not execute the real touchscreen driver, power framework or hardware, and no Android device validation was available.
