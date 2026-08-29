# `syna_tcm_clear_command_processing` exact revalidation

This package records the Docker-backed revalidation of microtask `293_syna_tcm_clear_command_processing`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 16 instructions, 64-byte symbol, and equivalent relocations for stock entry `0x00124178`.
- KCFI: PASS; type ID `0x9b7e2760`, `.text`, 64 bytes.
- Host direct tests: PASS; 3 cases × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function and zero parse problems.

## Reproduction

The module was built from the synchronized Docker snapshot under `.tmp_next860_current_snapshot_v1\engineering\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles.

## Limitations

This is an offline/static promotion. The host oracle covers null-handle, null-callback and valid-callback behavior, but does not execute the invalid KCFI branch or exercise transport, IRQ, MMIO, flash hardware or module loading.
