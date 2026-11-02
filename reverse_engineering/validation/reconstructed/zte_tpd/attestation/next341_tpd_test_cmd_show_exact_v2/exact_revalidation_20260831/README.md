# `tpd_test_cmd_show` exact revalidation

This package records the Docker-backed revalidation of microtask `341_tpd_test_cmd_show`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 function comparison: PASS; 23 instructions, 92-byte symbol, and equivalent relocations for stock entry `0x0012c050`.
- KCFI: PASS; type ID `0x64f25fb2`, `.text`, 92 bytes.
- Host direct tests: PASS; 3 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function, 5 calls, 0 control structures, and zero unresolved calls or parse problems.

## Reproduction

The host oracle validates the exact formatted output, `snprintf` return length and diagnostic `printk` invocation. The module was built from `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles; assembly, KCFI and Joern were re-run by the difficult-driver protocol.

## Limitations

This is an offline/static promotion. It does not exercise the real kernel buffer, transport, IRQ, MMIO, flash hardware or module loading, and no Android device validation was available.
