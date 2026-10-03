# `tpd_get_singleaodgesture` exact revalidation

This package records the Docker-backed revalidation of microtask `334_tpd_get_singleaodgesture`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles from the current Docker snapshot.
- Candidate module: 6,307,336 bytes, SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 function comparison: PASS; 24 instructions, 96-byte symbol, and equivalent relocations for stock entry `0x0012bccc`.
- KCFI: PASS; type ID `0x73fc0d79`, `.text`, 96 bytes.
- Host direct tests: PASS; 3 contract checks × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; 18 calls, zero control structures, zero unresolved calls or parse problems.

## Reproduction

The module was built from `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles. The host oracle validates the observed nested-state read, destination store, return value and preservation of the source value; the runner records the current driver-source hash. Joern was rerun against the current source tree and map.

## Limitations

This is an offline/static promotion. It does not exercise real kernel logging, transport, IRQ, MMIO, flash hardware or module loading, and no Android device validation was available.
