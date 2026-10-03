# `syna_tcm_update_flash_block` exact revalidation v3

This package records the current Docker-backed revalidation of microtask `303_syna_tcm_update_flash_block`, stock entry `0x00125f38`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 541 instructions and a 2,164-byte symbol with matching opcode, control-flow and relocation roles.
- KCFI: PASS; stock and candidate both have `NO_VALID_KCFI_PREAMBLE` because the preamble overlaps the adjacent function body; no type ID was invented.
- Host direct tests: PASS; 8 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 391 calls, 64 control structures, zero unresolved calls and zero parser errors.

## Limitations

This is offline/static evidence. The host contract stubs firmware transport and flash behavior; it does not exercise Android runtime, IRQs, controller state, module insertion or NX809J hardware.
