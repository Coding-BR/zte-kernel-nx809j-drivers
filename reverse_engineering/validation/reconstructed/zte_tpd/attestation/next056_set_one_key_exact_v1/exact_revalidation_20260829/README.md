# `set_one_key` exact revalidation

This package records the Docker-backed offline revalidation of microtask `056_set_one_key`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles; candidate module is 6,307,336 bytes.
- AArch64 function comparison: PASS; 52 instructions, 208-byte symbol, `.text`, and equivalent relocations for stock entry `0x0010bb40`.
- KCFI: PASS; type ID `0xc3d43b4d`, `.text`, and 208-byte symbol in stock and candidate.
- Direct source host test: PASS; 3 cases × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function, one mapped source method, zero parse problems, and no review findings.

## Semantic observation

The direct source oracle confirms that the parsed unsigned value is forwarded verbatim to the callback (`7` remains `7`); it is not normalized to boolean `1`. Invalid, out-of-range, and empty input return `-EINVAL` without logging or callback side effects.

## Reproduction

The module was built from the synchronized Docker snapshot under `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles.

## Limitations

This is an offline/static promotion. No device, ADB, `insmod`, firmware interaction, or hardware behavior was available. The host oracle validates the parser, callback slot, return values and side-effect ordering using fake device memory; kernel/user boundary behavior remains outside its scope.
