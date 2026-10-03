# `syna_tcm_do_fw_update` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `304_syna_tcm_do_fw_update`, stock entry `0x001267b0`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 206 instructions and an 824-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both expose type ID `0xb9434444`, with matching section and symbol size.
- Host direct tests: PASS; 8 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 57 calls, 8 control structures, zero unresolved calls and zero parser errors.

## Limitations

This is offline/static evidence. The host contract stubs firmware transport and controller state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
