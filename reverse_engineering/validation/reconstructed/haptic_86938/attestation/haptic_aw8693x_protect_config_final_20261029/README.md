# `aw8693x_protect_config` reconstruction

- Stock entry: `0x00104c7c`; body: 256 bytes / 64 AArch64 instructions.
- The source uses individual byte locals for the two I²C payloads. This preserves the stock stack offsets and avoids an extra zeroing store that appeared when they were represented as arrays.
- Candidate instructions and relocations match stock exactly. Stock and candidate KCFI type ID: `0x7b877e65`; both function bodies are 256 bytes.
- All eight automated core gates pass: assembly/relocations, Ghidra normalized C and P-code shape, two reproducible Docker builds, input and map identity, Joern analysis and slice, and KCFI. Both clean builds produced SHA-256 `31c1739afc2b175f31bc0c7c57483ba2484283d2eb93ba9c4c51b2aed59e6d72`.
- The function clears the protection bit in register `0x48`; level zero disables protection in `0x4a`, while a nonzero level writes `level | 0x80` to `0x4a` and the threshold byte to `0x4b`.

This remains a function-level static candidate. The protocol does not authorize promotion, so the map keeps `candidate_under_static_validation` and `semantic_equivalence: NOT_ESTABLISHED`. The module-wide audit remains incomplete; this result does not establish full-driver or hardware equivalence.

Evidence: [`hard_protocol_report.json`](hard_protocol_report.json), [`assembly/comparison.json`](assembly/comparison.json), [`ghidra/semantic_comparison.json`](ghidra/semantic_comparison.json), [`kcfi/comparison.json`](kcfi/comparison.json), [`docker/driver_audit.json`](docker/driver_audit.json), and the candidate Ghidra package and provenance in the sibling `pcfg_20261029` directory.
