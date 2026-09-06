# `syna_tcm_update_flash_block` exact revalidation v2

This package records the Docker-backed revalidation of microtask `303_syna_tcm_update_flash_block`, the stock firmware-flash block update path at entry `0x00125f38`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 541 instructions and a 2,164-byte symbol, with matching opcode/control-flow and resolved relocation roles.
- KCFI: PASS; stock and candidate both report `NO_VALID_KCFI_PREAMBLE`, with matching section and symbol size.
- Host direct tests: PASS; 8 contract cases across 2 Docker ASan/UBSan cycles, with the target C source and host harness hashes recorded as inputs.
- Joern strict gate: PASS; one requested function, one resolved method, zero unresolved calls and zero blockers.

## Exact update

The reconstructed C implementation is bound to the stock function identity and validated against the complete AArch64 opcode, relocation, symbol-size, symmetric KCFI and structural evidence.

## Limitations

This is offline/static evidence. The host contract models firmware-access and memory-management paths; it does not exercise Android hardware, firmware transport, IRQs, controller state or module insertion.
