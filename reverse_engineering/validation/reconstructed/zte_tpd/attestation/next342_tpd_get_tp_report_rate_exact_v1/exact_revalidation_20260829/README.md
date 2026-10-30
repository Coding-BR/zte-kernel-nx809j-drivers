# `tpd_get_tp_report_rate` exact revalidation

This package records the Docker-backed revalidation of microtask `342_tpd_get_tp_report_rate`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 6 instructions, 24-byte symbol, and equivalent relocations for stock entry `0x0012c0b0`.
- KCFI: PASS; type ID `0x73fc0d79`, `.text`, 24 bytes.
- Host direct tests: PASS; 4 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero unresolved calls or parse problems.

## Reproduction

The host oracle validates the state-to-device report-rate mirror transfer for two values. The module was built from the Docker-curated snapshot with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles.

## Limitations

This is an offline/static promotion. It does not exercise transport, IRQ, MMIO, flash hardware or module loading, and no Android device validation was available.
