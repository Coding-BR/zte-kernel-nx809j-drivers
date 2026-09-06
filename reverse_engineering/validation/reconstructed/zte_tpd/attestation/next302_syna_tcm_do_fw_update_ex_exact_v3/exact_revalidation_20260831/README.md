# `syna_tcm_do_fw_update_ex` exact revalidation v3

This package records the current Docker-backed revalidation of microtask `302_syna_tcm_do_fw_update_ex`, stock entry `0x00125c18`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- AArch64 function comparison: PASS; 200 instructions and an 800-byte symbol with matching opcode, control-flow and relocation roles.
- KCFI: PASS; type ID `0xf4d5d168` and symbol size preserved.
- Host direct tests: PASS; 8 contract cases across 2 Docker ASan/UBSan cycles with empty sanitizer stderr.
- Joern strict gate: PASS; 112 calls, 19 control structures, zero unresolved calls and zero parser errors.

## Limitations

This is offline/static evidence. The host contract stubs firmware transport and flash behavior; it does not exercise Android runtime, IRQs, controller state, module insertion or NX809J hardware.
