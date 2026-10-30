# `tpd_touch_release` exact revalidation v4

This package records the Docker-backed revalidation of microtask `099_tpd_touch_release`, the stock touch-release/reporting path at entry `0x0010ec70`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 399 instructions and a 1,596-byte symbol, with matching opcode/control-flow and resolved relocation roles.
- KCFI: PASS; type ID `0xdb725fb0` preserved for the 1,596-byte symbol.
- Host direct tests: PASS; 4 contract cases across 2 Docker ASan/UBSan cycles, with current C and harness input hashes recorded.
- Joern strict gate: PASS; one requested function, one resolved method, zero unresolved calls and zero blockers.

## Exact update

The reconstructed C/assembly implementation is bound to the stock function identity and validated against the complete AArch64 opcode, relocation, symbol-size, KCFI and structural evidence.

## Limitations

This is offline/static evidence. The host contract stubs touch state, timing, locks and reporting dependencies; it does not exercise Android hardware, firmware transport, IRQs, controller state or module insertion.
