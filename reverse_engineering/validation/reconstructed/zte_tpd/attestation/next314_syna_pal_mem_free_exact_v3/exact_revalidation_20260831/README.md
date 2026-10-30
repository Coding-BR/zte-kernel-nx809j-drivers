# `syna_pal_mem_free` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `314_syna_pal_mem_free`, stock entry `0x001284c0`.

## Identity disambiguation

The stock module contains two homonymous `syna_pal_mem_free` symbols. This target is explicitly bound to the first symbol at stock address `0x21c38`, which corresponds to the Ghidra entry `0x001284c0`; the second symbol at `0x23c64` is excluded from the comparison.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 20 instructions and an 80-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both have no valid KCFI preamble, with matching section and symbol size.
- Host direct tests: PASS; 3 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 11 calls, 5 control structures, zero unresolved calls and zero parser errors.

## Review findings retained

Joern reported two high-severity review findings. They remain explicit review items; this package proves offline function parity and does not substitute for Android runtime or hardware validation.

## Limitations

This is offline/static evidence. The host contract stubs controller transport and state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
