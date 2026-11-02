# `syna_tcm_get_touch_data` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `315_syna_tcm_get_touch_data`, stock entry `0x00128514`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 61 instructions and a 244-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both expose type ID `0xfd344c7d`, with matching section and symbol size.
- Host direct tests: PASS; 4 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 45 calls, 5 control structures, zero unresolved calls, zero parser errors and no retained high-severity findings.

## Limitations

This is offline/static evidence. The host contract stubs controller transport and state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
