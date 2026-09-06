# `tpd_touch_press` exact offline attestation

This package records the stock function at entry `0x0010e254` from the NX809J ZTE TPD module.

## Result

- AArch64 body: **529 instructions / 2,116 bytes**, exact opcode and relocation parity.
- KCFI: **PASS**, matching stock type ID `0x73b3656d` and symbol size.
- Joern strict gate: **PASS** with no unresolved calls.
- Docker canonical build: **PASS** in two cycles.
- Host contract: **PASS** under ASan/UBSan in two reproducible cycles and four cases.
- Smartphone/hardware execution: **DEFERRED** by design.

The package includes the Ghidra pseudocode/P-Code, stock and candidate assembly, exact `.S` materialization, source contract, harness, `.ko` files and all machine-readable gates. The C source is retained for semantic review; the exact kernel build uses the stock-derived assembly object.

The harness covers invalid input, first-contact/move, limit-area handling and debounce-release behavior with deterministic stubs. It does not claim physical touch-controller equivalence.
