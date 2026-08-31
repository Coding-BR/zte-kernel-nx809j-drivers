# `tpd_get_stability_level` exact revalidation

This package records the Docker-backed revalidation of microtask `348_tpd_get_stability_level`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 function comparison: PASS; 6 instructions, 24-byte symbol, and equivalent relocations for stock entry `0x0012c348`.
- KCFI: PASS; type ID `0x73fc0d79`, `.text`, 24 bytes.
- Host direct tests: PASS; 4 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero unresolved calls or parse problems.

## Reproduction

The host oracle validates the stability-level state-to-device mirror transfer for two values. The module was built from the Docker-curated snapshot with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles.

## Limitations

This is an offline/static promotion. It does not exercise transport, IRQ, MMIO, flash hardware or module loading, and no Android device validation was available.
