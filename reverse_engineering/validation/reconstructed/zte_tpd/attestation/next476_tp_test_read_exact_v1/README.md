# `tp_test_read` offline attestation

This package records the complete offline reconstruction evidence for the ZTE NX809J `zte_tpd` function at stock entry `0x0010dbd0`.

## Gates

- Ghidra decompilation and P-Code were retained as the analysis baseline.
- The candidate was built twice by the canonical Docker pipeline with identical module SHA-256 results.
- The stock and candidate AArch64 bodies both contain 66 instructions and 264 bytes; the comparator passed section, size, call-target and normalized relocation checks.
- KCFI type `0xf4e9d97c` and symbol size match the stock function.
- Joern `--strict` passed using the documented parser-compatibility source view. That view is analysis-only and is not compiled into the kernel module.
- The host contract harness passed twice under AddressSanitizer and UndefinedBehaviorSanitizer.

## Important inference correction

The decompiler-shaped C initially rendered the firmware-ready field as offset `0xa48`. Stock P-Code and AArch64 both prove the load at offset `0xc00`; the reconstructed C and harness use `0xc00` so the source contract agrees with the binary evidence.

## Scope boundary

`OFFLINE_EXACT` means that the available stock binary evidence is matched at function level. It does not claim equivalent Android runtime behavior, touch hardware behavior, or boot safety. Hardware validation remains deferred.
