# aw8693x_interrupt_setup reconstruction candidate

- Stock entry: `0x00105a30`; body: 140 bytes / 35 AArch64 instructions.
- Behavior: read register `0x02` into a zero-initialized byte, then write bits to registers `0x46` and `0x03` using the stock masks and values.
- KCFI type ID: stock and candidate `0x847a0830`.
- All eight core protocol gates passed: assembly/relocations, candidate Ghidra P-Code, reproducible Docker builds, input/map identity, Joern scoped and slice checks, and KCFI.
- Candidate SHA-256: `4dc131f1f3b303ad8f34b4b02f10b979c5a7803088d2454eaa4826dd22f58e5d` (4754952 bytes).
- Status remains `candidate_under_static_validation`; promotion is unauthorized and hardware behavior is unverified.

This validates one function only. The driver-wide audit still has unmapped functions and module-level parity gaps; no full-driver equivalence is claimed. `hard_protocol_report.json` and the sibling `haptic_interrupt_setup_20261029` evidence directory contain the detailed results.
