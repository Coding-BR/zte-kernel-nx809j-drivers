# `reg_store` static reconstruction

Status: `candidate_under_static_validation`; `semantic_equivalence=NOT_ESTABLISHED`.

The sysfs store parses two hexadecimal values. Only when both parse successfully, it writes the low byte of the second value to the I²C register named by the first value. It returns the supplied byte count in all cases, matching the stock control flow.

## Automated validation

The hard reconstruction protocol reports `CORE_GATES_PASS`; all eight required automated gates pass: assembly/relocations, candidate Ghidra P-Code, reproducible Docker builds, input identity, scoped Joern analysis and slice, KCFI, and reconstruction-map identity.

- AArch64 body: 156 bytes and 39 instructions; strict instruction and relocation comparison passes.
- Function KCFI preamble matches stock type ID `0x95c41a97`.
- Two Docker builds are byte-identical, SHA-256 `61364a7b055b0ac0dc46de7cc71054606ee6b4c7f709ee1a4fd3f3f0b3d93dc8`.
- Candidate Ghidra normalized C and P-Code comparisons pass; scoped Joern analysis and slice pass.

## Evidence limits

This is a static candidate. Promotion remains unauthorized and semantic equivalence is not established. Runtime/hardware evidence, independent review, state/lock and register/bus ledgers, mutation/fuzz/sanitizer evidence, and the other evidence gates listed in `hard_protocol_report.json` remain outstanding.

## Reports

- [Hard protocol report](hard_protocol_report.json)
- [Docker audit](docker/driver_audit.json)
- [AArch64 assembly comparison](assembly/comparison.json)
- [Ghidra semantic comparison](ghidra/semantic_comparison.json)
- [KCFI report](kcfi/comparison.json)
- [Joern gate report](joern/joern_gate_report.json)
- Candidate Ghidra full/scoped exports and export metadata are in the sibling `haptic_reg_store_20261029` evidence directory.
