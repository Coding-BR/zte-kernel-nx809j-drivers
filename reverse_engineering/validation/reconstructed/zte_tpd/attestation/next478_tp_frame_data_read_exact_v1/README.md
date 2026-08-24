# `tp_frame_data_read` offline attestation

This package records the complete offline reconstruction evidence for the ZTE NX809J `zte_tpd` function at stock entry `0x0010dd14`.

## Gates

- Ghidra decompilation and P-Code were retained as the analysis baseline.
- The candidate was built twice by the canonical Docker pipeline.
- The stock and candidate AArch64 bodies both contain 60 instructions and 240 bytes; the comparator passed section, size, call-target and normalized relocation checks.
- KCFI type `0xf4e9d97c` and symbol size match the stock function.
- The stock CFI cookie check and `brk #0x8228` failure path are retained in the exact assembly.
- Joern `--strict` passed using the documented parser-compatibility source view. That view is analysis-only and is not compiled into the kernel module.
- The host contract harness passed twice under AddressSanitizer and UndefinedBehaviorSanitizer.

## Important inference correction

The decompiler-shaped C initially rendered the callback field as offset `0xe48`. Stock P-Code and AArch64 prove that the indirect callback load is at offset `0x1000`; the reconstructed C and harness use `0x1000`.

## Scope boundary

`OFFLINE_EXACT` means that the available stock binary evidence is matched at function level. It does not claim equivalent Android runtime behavior, touch hardware behavior, or boot safety. Hardware validation remains deferred.
