# `syna_tcm_erase_mtp_data` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `313_syna_tcm_erase_mtp_data`, stock entry `0x001281c8`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 190 instructions and a 760-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both expose type ID `0x627e4777`, with matching section and symbol size.
- Host direct tests: PASS; 4 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 111 calls, 19 control structures, zero unresolved calls and zero parser errors.

## Review findings retained

Joern reported two high-severity review findings. They remain explicit review items; this package proves offline function parity and does not substitute for Android runtime or hardware validation.

## Limitations

This is offline/static evidence. The host contract stubs controller transport and state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
