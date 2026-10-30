# `get_one_key` exact revalidation

This package records the Docker-backed offline revalidation of microtask `055_get_one_key`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles; candidate module is 6,307,336 bytes.
- AArch64 function comparison: PASS; 60 instructions, 240-byte symbol, `.text`, and equivalent relocations for stock entry `0x0010ba4c`.
- KCFI: PASS; type ID `0xf4e9d97c`, `.text`, and 240-byte symbol in stock and candidate.
- Direct source host test: PASS; 3 cases × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function, one mapped source method, and zero parse problems.

## Review observation

Joern reports one high-severity `userspace_egress` observation for the proven `simple_read_from_buffer` call. It is preserved in the evidence and does not indicate a parser or build failure. The direct test also records the stock behavior for a maximum `uint32_t`: the decompiled `snprintf(..., 0xA, ...)` contract returns 11 while the formatted prefix is bounded by the ten-byte limit.

## Reproduction

The module was built from the synchronized Docker snapshot under `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles.

## Limitations

This is an offline/static promotion. No device, ADB, `insmod`, firmware interaction, or hardware behavior was available. The host oracle validates the procfs offset, callback slot, formatting, short-buffer, and EOF contract using fake device memory; kernel/user boundary behavior remains outside its scope.
