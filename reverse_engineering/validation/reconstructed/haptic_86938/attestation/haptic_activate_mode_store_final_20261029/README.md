# `activate_mode_store` static reconstruction

Status: `candidate_under_static_validation`; `semantic_equivalence=NOT_ESTABLISHED`.

The function parses the sysfs value with `kstrtouint`. On success it locks the haptic state mutex, stores the low byte at the stock field offset `driver_data - 0x8d`, unlocks, and returns the caller's byte count. Parse errors are returned unchanged.

## Automated validation

The hard reconstruction protocol reports `CORE_GATES_PASS`; all eight required automated gates pass: assembly/relocations, candidate Ghidra P-Code, reproducible Docker builds, input identity, scoped Joern analysis and slice, KCFI, and reconstruction-map identity.

- AArch64 body: 148 bytes and 37 instructions; strict instruction and relocation comparison passes.
- Function KCFI preamble matches stock type ID `0x95c41a97`; comparison passes.
- Two Docker builds are byte-identical, SHA-256 `e5a63d310139d2faf9235c868819b3df98b616ce845910f616efe7b126d2fae8`.
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
- Candidate Ghidra full/scoped exports and export metadata are in the sibling `haptic_activate_mode_store_20261029` evidence directory.
