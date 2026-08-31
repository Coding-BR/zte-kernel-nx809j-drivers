# `syna_pal_mem_alloc` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `311_syna_pal_mem_alloc`, stock entry `0x00127e18`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 26 instructions and a 104-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both have no valid KCFI preamble, with matching section and symbol size.
- Host direct tests: PASS; 4 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 8 calls, 2 control structures, zero unresolved calls and zero parser errors.

## Review findings retained

Joern reported one high-severity lifetime review finding. It remains an explicit review item; this package proves offline function parity and does not substitute for Android runtime or hardware validation.

## Limitations

This is offline/static evidence. The host contract stubs controller transport and state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
