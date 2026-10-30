# `syna_tcm_read_flash_area` exact revalidation v2

This package records the Docker-backed revalidation of microtask `298_syna_tcm_read_flash_area`, the stock flash-area read path at entry `0x00124ab4`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 503 instructions and a 2,012-byte symbol, with matching opcode/control-flow and resolved relocation roles.
- KCFI: PASS; type ID `0xda19bd63` preserved for the 2,012-byte symbol.
- Host direct tests: PASS; 8 contract cases across 2 Docker ASan/UBSan cycles, with current C and harness input hashes recorded.
- Joern strict gate: PASS; one requested function, one resolved method, zero unresolved calls and zero blockers.

## Exact update

The reconstructed C/assembly implementation is bound to the stock function identity and validated against the complete AArch64 opcode, relocation, symbol-size, KCFI and structural evidence.

## Limitations

This is offline/static evidence. The host contract stubs transport, flash access and memory ownership; it does not exercise Android hardware, firmware transport, IRQs, controller state or module insertion.
