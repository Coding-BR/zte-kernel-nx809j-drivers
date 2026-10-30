# `syna_tcm_read_flash_mtp_config` exact revalidation v3

This package records the current Docker-backed revalidation of microtask `301_syna_tcm_read_flash_mtp_config`, stock entry `0x00125a18`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 127 instructions and a 508-byte symbol with matching opcode, control-flow and relocation roles.
- KCFI: PASS; stock and candidate both have `NO_VALID_KCFI_PREAMBLE` because the preamble overlaps the adjacent function body; no type ID was invented.
- Host direct tests: PASS; 8 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 77 calls, 14 control structures, zero unresolved calls and zero parser errors.

## Limitations

This is offline/static evidence. The host contract stubs transport, flash access and memory ownership; it does not exercise Android runtime, firmware transport, IRQs, controller state, module insertion or NX809J hardware.
