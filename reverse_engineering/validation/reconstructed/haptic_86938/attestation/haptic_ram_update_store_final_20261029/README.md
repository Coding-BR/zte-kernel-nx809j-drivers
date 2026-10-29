# `ram_update_store` static reconstruction

Status: `candidate_under_static_validation`; `semantic_equivalence=NOT_ESTABLISHED`.

The function parses the sysfs input with `kstrtouint`. Parse errors are returned. A nonzero value clears the RAM-ready field and schedules the existing `ram_load` firmware callback using the haptic device and context recovered from the stock offsets.

## Automated validation

The hard reconstruction protocol reports `CORE_GATES_PASS`; all eight required automated gates pass: assembly/relocations, candidate Ghidra P-Code, reproducible Docker builds, input identity, scoped Joern analysis and slice, KCFI, and reconstruction-map identity.

- AArch64 body: 180 bytes and 45 instructions; strict instruction and relocation comparison passes.
- Function KCFI preamble matches stock type ID `0x95c41a97`. The function has no indirect calls, so callsite comparison is correctly marked not applicable.
- Two Docker builds are byte-identical, SHA-256 `87bee11c28502bc72da25296518f2f4e1e1fb4d6a30bb9bb29a49a161ed6caae`.
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
- Candidate Ghidra full/scoped exports and export metadata are in the sibling `haptic_ram_update_store_20261029` evidence directory.
