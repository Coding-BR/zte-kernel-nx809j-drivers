# `syna_tcm_parse_touch_report` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `316_syna_tcm_parse_touch_report`, stock entry `0x0012860c`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 1.813 instructions and a 7.252-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both expose type ID `0xc5545626`, with matching section and symbol size.
- Host direct tests: PASS; 13 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 201 calls, 63 control structures, zero unresolved calls, zero parser errors and no retained high-severity findings.

## Limitations

This is offline/static evidence. The host contract stubs controller transport and state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
