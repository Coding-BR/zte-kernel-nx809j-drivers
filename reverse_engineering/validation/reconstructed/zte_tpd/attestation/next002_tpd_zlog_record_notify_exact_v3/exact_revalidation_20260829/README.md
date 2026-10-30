# `tpd_zlog_record_notify` exact revalidation v3

This package records the Docker-backed revalidation of microtask `002_tpd_zlog_record_notify`, the stock zlog notification path at entry `0x00106998`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 863 instructions and a 3,452-byte symbol, with matching opcode/control-flow and resolved relocation roles.
- KCFI: PASS; type ID `0xcc3d7e08` preserved for the 3,452-byte symbol.
- Host direct tests: PASS; 10 zlog contract cases across 2 Docker ASan/UBSan cycles, with the current target source hash bound in the report.
- Joern strict gate: PASS; one requested function, one resolved method, zero unresolved calls and zero blockers.

## Exact update

The reconstructed C implementation is bound to the stock function identity and validated against the complete AArch64 opcode, relocation, symbol-size, KCFI and structural evidence.

## Limitations

This is offline/static evidence. The zlog harness models the transport, memory and callback contracts; it does not exercise Android hardware, firmware transport, IRQs, controller state or module insertion.
