# `tpd_test_cmd_store` exact revalidation

This package records the Docker-backed revalidation of microtask `340_tpd_test_cmd_store`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 function comparison: PASS; 52 instructions, 208-byte symbol, and equivalent relocations for stock entry `0x0012bf7c`.
- KCFI: PASS; type ID `0x73fc0d79`, `.text`, 208 bytes.
- Host direct tests: PASS; 15 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function, 34 calls, 8 control structures, and zero unresolved calls or parse problems.

## Reproduction

The host oracle covers the inactive path, each of the three production-test failures with short-circuit behavior, the success path, return values and the hardware-reset callback. The module was built from `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles; assembly, KCFI and Joern were re-run by the difficult-driver protocol.

## Limitations

The production-test routines and hardware reset are stubbed in the direct host oracle. This is an offline/static promotion; it does not exercise the real transport, IRQ, MMIO, flash hardware or module loading, and no Android device validation was available.
