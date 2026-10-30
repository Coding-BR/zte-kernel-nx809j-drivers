# `syna_tcm_update_cs_config` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `308_syna_tcm_update_cs_config`, stock entry `0x00127414`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 249 instructions and a 996-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both expose type ID `0xdd66a5c9`, with matching section and symbol size.
- Host direct tests: PASS; 11 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 175 calls, 44 control structures, zero unresolved calls and zero parser errors.

## Review findings retained

Joern reported four high-severity review findings in lifetime and synchronization categories. They are retained as review items because this package proves offline function parity, not independent redesign of resource lifetime or locking semantics.

## Limitations

This is offline/static evidence. The host contract stubs controller transport and state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
