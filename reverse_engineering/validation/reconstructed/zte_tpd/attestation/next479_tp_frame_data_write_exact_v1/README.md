# `tp_frame_data_write` offline attestation

This package records the complete offline reconstruction evidence for the ZTE NX809J `zte_tpd` function at stock entry `0x0010de08`.

## Gates

- Ghidra decompilation and P-Code were retained as the analysis baseline.
- The candidate was built twice by the canonical Docker pipeline.
- The stock and candidate AArch64 bodies both contain 52 instructions and 208 bytes; the comparator passed section, size, call-target and normalized relocation checks.
- KCFI type `0xc3d43b4d` and symbol size match the stock function.
- The stock CFI cookie check and `brk #0x8228` failure path are retained in the exact assembly.
- Joern `--strict` passed using the documented parser-compatibility source view. That view is analysis-only and is not compiled into the kernel module.
- The host contract harness passed twice under AddressSanitizer and UndefinedBehaviorSanitizer.

## Important inference corrections

The decompiler-shaped C initially rendered the callback field as offset `0xe40`; stock P-Code and AArch64 prove `0xff8`. The stock instruction sequence also normalizes a parsed nonzero integer to boolean before logging and invoking the callback; the reconstructed C follows that behavior.

## Scope boundary

`OFFLINE_EXACT` means that the available stock binary evidence is matched at function level. It does not claim equivalent Android runtime behavior, touch hardware behavior, or boot safety. Hardware validation remains deferred.
