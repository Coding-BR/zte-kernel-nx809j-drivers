# `syna_tcm_check_flash_block` exact revalidation v3

This package records the Docker-backed offline revalidation of microtask `306_syna_tcm_check_flash_block`, stock entry `0x00126e70`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 119 instructions and a 476-byte symbol with matching opcodes, control flow and relocation roles.
- KCFI: PASS; stock and candidate both have `NO_VALID_KCFI_PREAMBLE`; no type ID was invented.
- Host direct tests: PASS; 18 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 78 calls, 21 control structures, zero unresolved calls and zero parser errors.

## Limitations

This is offline/static evidence. The host contract stubs flash transport and controller state; it does not exercise Android runtime, IRQs, module insertion or NX809J hardware.
