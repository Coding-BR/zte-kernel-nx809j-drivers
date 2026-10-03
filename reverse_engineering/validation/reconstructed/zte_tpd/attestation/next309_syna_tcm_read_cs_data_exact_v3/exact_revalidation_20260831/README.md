# `syna_tcm_read_cs_data` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `309_syna_tcm_read_cs_data`, stock entry `0x001277fc`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 197 instructions and a 788-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both expose type ID `0xdd66a5c9`, with matching section and symbol size.
- Host direct tests: PASS; 10 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 86 calls, 20 control structures, zero unresolved calls and zero parser errors.

## Review findings retained

Joern reported four high-severity review findings in lifetime and synchronization categories. They remain explicit review items; this package proves offline function parity and does not substitute for Android runtime or hardware validation.

## Limitations

This is offline/static evidence. The host contract stubs controller transport and state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
