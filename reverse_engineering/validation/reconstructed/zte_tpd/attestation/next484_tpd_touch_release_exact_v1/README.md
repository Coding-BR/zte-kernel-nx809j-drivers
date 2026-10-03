# `tpd_touch_release` exact offline attestation

This package records the stock function at entry `0x0010ec70` from the NX809J ZTE TPD module.

- AArch64: **399 instructions / 1,596 bytes**, exact opcode and relocation parity.
- KCFI: **PASS**, matching stock type ID `0xdb725fb0`.
- Joern strict gate: **PASS**.
- Docker canonical build: **PASS** in two cycles.
- Host ASan/UBSan contract: **PASS** in two reproducible cycles.
- Smartphone/hardware execution: **DEFERRED**.

The package contains Ghidra pseudocode/P-Code, stock and candidate assembly, exact `.S` materialization, source, harness, `.ko` files and machine-readable evidence. It is an offline reconstruction result, not a claim of physical touch-controller equivalence.
