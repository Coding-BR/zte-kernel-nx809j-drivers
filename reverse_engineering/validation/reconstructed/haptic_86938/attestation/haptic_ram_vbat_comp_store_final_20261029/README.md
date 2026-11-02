# `ram_vbat_comp_store` static reconstruction

Status: `candidate_under_static_validation`; `semantic_equivalence=NOT_ESTABLISHED`.

The sysfs store parses an unsigned integer. Parse errors are returned unchanged. Otherwise it locks the haptic state mutex, stores whether the value is nonzero in the RAM voltage-compensation flag at `driver_data - 0x8c`, unlocks, and returns the supplied byte count.

## Automated validation

The hard reconstruction protocol reports `CORE_GATES_PASS`; all eight required automated gates pass: assembly/relocations, candidate Ghidra P-Code, reproducible Docker builds, input identity, scoped Joern analysis and slice, KCFI, and reconstruction-map identity.

- AArch64 body: 156 bytes and 39 instructions; strict instruction and relocation comparison passes.
- Function KCFI preamble matches stock type ID `0x95c41a97`.
- Two Docker builds are byte-identical, SHA-256 `4e97189133afbf111fbeca7fcd834b9cbfa81107adf520799188ab2b662fd95c`.
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
- Candidate Ghidra full/scoped exports and export metadata are in the sibling `haptic_ram_vbat_comp_store_20261029` evidence directory.
