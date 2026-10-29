# `aw8693x_get_irq_state` reconstruction

- Stock entry: `0x00103688`; body: 528 bytes / 132 AArch64 instructions.
- Root cause of the earlier mismatch: explicit labels and `goto` statements changed the compiler's control-flow graph around the playback-done and FIFO bits. Rewriting these as the seven independent tests visible in the stock Ghidra decompilation restored the stock layout.
- The reconstructed body matches stock instructions and relocations exactly. Stock and candidate KCFI type ID: `0x512cf1f0`; both function sizes are 528 bytes.
- All eight automated core gates pass: exact assembly/relocations, candidate Ghidra normalized C and P-code shape, two reproducible Docker builds, input and map identity, scoped Joern analysis and slice, and KCFI. Both Docker builds produced module SHA-256 `280414aba4f27c11adc1d49f343aff6059a10242d04583beb6060f6be57a0f52`.
- The function reads IRQ state through `i2c_r_bytes`, brackets that read with the stock FIFO-level writes in mode 1, logs the observed IRQ conditions, and returns the stock priority result.

This is a function-level static candidate. The protocol does not authorize promotion, so `reconstruction_map.json` keeps `candidate_under_static_validation` and `semantic_equivalence: NOT_ESTABLISHED`. The module-wide audit remains `incomplete_or_failed` because module metadata and symbol parity are unresolved; this function result does not establish full-driver or hardware equivalence.

Evidence: [`hard_protocol_report.json`](hard_protocol_report.json), [`assembly/comparison.json`](assembly/comparison.json), [`ghidra/semantic_comparison.json`](ghidra/semantic_comparison.json), [`kcfi/comparison.json`](kcfi/comparison.json), [`docker/driver_audit.json`](docker/driver_audit.json), and the candidate Ghidra package plus export provenance in the sibling `haptic_get_irq_state_20261029` directory.
