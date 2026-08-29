# `syna_tcm_testing_0002_check_config_id` exact revalidation

This package records the offline exact revalidation of microtask `243_syna_tcm_testing_0002_check_config_id` for `zte_tpd`.

## Gates

- Canonical Docker build: PASS in two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 function comparison: PASS; 30 instructions and 120 bytes at stock entry `0x0011da70`, in `.text`, with matching relocation-resolved layout.
- KCFI comparison: PASS as an explicit symmetric absence: both stock and candidate report `NO_VALID_KCFI_PREAMBLE` because the preamble overlaps the function body. No type ID is claimed.
- Direct host contract tests: PASS; seven cases in each of two Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer enabled. The contract covers null inputs, negative and zero limits, equal IDs, mismatch positions, return values, printk arguments, and input immutability.
- Strict Joern gate: PASS for `syna_tcm_testing_0002_check_config_id@0011da70`, with clean parsing, no unresolved calls, and no mapped call deltas.

The Docker snapshot used for compilation was `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.

## Limitations

The evidence is offline and static. The host test uses deterministic printk and memory fixtures; there was no Android device, firmware transport, MMIO, module insertion, or physical hardware validation.
