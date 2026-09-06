# `tpd_set_follow_hand_level` exact revalidation

This package records the Docker-backed revalidation of microtask `347_tpd_set_follow_hand_level`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 function comparison: PASS; 47 instructions, 188-byte symbol, and equivalent relocations for stock entry `0x0012c288`.
- KCFI: PASS; type ID `0x6af8b499`, `.text`, 188 bytes.
- Host direct tests: PASS; 12 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero unresolved calls or parse problems.

## Reproduction

The host oracle covers null context, level clamping, hardware-value selection, setter error logging, inactive storage and successful setter behavior. The module was built from the Docker-curated snapshot with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles.

## Limitations

The setter is stubbed and state/hardware memory is simulated in the direct host oracle. This is an offline/static promotion; it does not exercise real transport, IRQ, MMIO, flash hardware or module loading, and no Android device validation was available.
