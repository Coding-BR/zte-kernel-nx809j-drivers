# `syna_tcm_read_flash_area` exact revalidation v3

This package records the current Docker-backed revalidation of microtask `298_syna_tcm_read_flash_area`, stock entry `0x00124ab4`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 503 instructions and a 2,012-byte symbol with matching opcode, control-flow and relocation roles.
- KCFI: PASS; type ID `0xda19bd63` and symbol size preserved.
- Host direct tests: PASS; 8 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 334 calls, 86 control structures, zero unresolved calls and zero parser errors.

## Limitations

This is offline/static evidence. The host contract stubs transport, flash access and memory ownership; it does not exercise Android runtime, firmware transport, IRQs, controller state, module insertion or NX809J hardware.
