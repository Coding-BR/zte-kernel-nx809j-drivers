# `syna_tcm_clear_data_duplicator` exact revalidation

This package records the Docker-backed revalidation of microtask `292_syna_tcm_clear_data_duplicator`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 20 instructions, 80-byte symbol, and equivalent relocations for stock entry `0x00124124`.
- KCFI: PASS; type ID `0xd57a6509`, `.text`, 80 bytes.
- Host direct tests: PASS; 2 cases × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero parse problems.

## Reproduction

The module was built from the synchronized Docker snapshot under `.tmp_next893_current_snapshot_v1\engineering\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles.

## Limitations

This is an offline/static promotion. No device, ADB, `insmod`, firmware interaction, or hardware behavior was available. The host oracle validates the bounded `data_duplicators` clearing and null-handle logging contract; transport and MMIO remain outside its scope.
