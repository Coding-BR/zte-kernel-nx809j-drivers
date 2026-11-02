# `syna_tcm_v1_read_message` exact revalidation v2

This package records the Docker-backed revalidation of microtask `261_syna_tcm_v1_read_message`, a large user-ABI path.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent Docker cycles from `engenharia/curated/zte_tpd`.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 1,371 instructions and 5,484-byte symbol for stock entry `0x0011f838`, with equivalent relocations.
- KCFI: PASS; type ID `0xe10dda21` preserved for the 5,484-byte symbol.
- Host direct tests: PASS; 5 contract cases across 2 Docker ASan/UBSan cycles.
- Joern strict gate: PASS; one requested function, one resolved method, and zero blockers.

## Exact update

The reconstructed C implementation is bound to the stock function identity and validated against the complete AArch64 opcode, relocation, symbol-size and KCFI evidence.

## Limitations

This is offline/static evidence. The host contract stubs transport, managed memory, locks and callbacks; it does not exercise Android hardware, firmware transport, IRQs, or module insertion.
