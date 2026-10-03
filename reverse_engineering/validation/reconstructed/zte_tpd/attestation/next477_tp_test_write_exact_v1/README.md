# `tp_test_write` offline attestation

This package records the complete offline reconstruction evidence for the ZTE NX809J `zte_tpd` function at stock entry `0x0010dcdc`.

## Gates

- Ghidra decompilation and P-Code were retained as the analysis baseline.
- The candidate was built twice by the canonical Docker pipeline.
- The stock and candidate AArch64 function bodies both contain 13 instructions and 52 bytes; the comparator passed section, size, call-target and normalized relocation checks.
- KCFI type `0xc3d43b4d` and symbol size match the stock function.
- Joern `--strict` passed using the documented parser-compatibility source view. That view is analysis-only and is not compiled into the kernel module.
- The host contract harness passed twice under AddressSanitizer and UndefinedBehaviorSanitizer.

## Scope boundary

`OFFLINE_EXACT` means that the available stock binary evidence is matched at function level. It does not claim equivalent Android runtime behavior, touch hardware behavior, or boot safety. Hardware validation remains deferred.
