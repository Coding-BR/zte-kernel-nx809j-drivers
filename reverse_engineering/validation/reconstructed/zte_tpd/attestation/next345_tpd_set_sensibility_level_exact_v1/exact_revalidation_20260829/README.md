# `tpd_set_sensibility_level` exact revalidation

This package records the Docker-backed revalidation of microtask `345_tpd_set_sensibility_level`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 48 instructions, 192-byte symbol, and equivalent relocations for stock entry `0x0012c1a8`.
- KCFI: PASS; type ID `0xe1d63dc1`, `.text`, 192 bytes.
- Host direct tests: PASS; 12 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero unresolved calls or parse problems.

## Reproduction

The host oracle covers null context, level clamping, hardware-value selection, setter error logging, inactive storage and successful setter behavior. The module was built from the Docker-curated snapshot with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles.

## Limitations

The setter is stubbed and state/hardware memory is simulated in the direct host oracle. This is an offline/static promotion; it does not exercise real transport, IRQ, MMIO, flash hardware or module loading, and no Android device validation was available.
