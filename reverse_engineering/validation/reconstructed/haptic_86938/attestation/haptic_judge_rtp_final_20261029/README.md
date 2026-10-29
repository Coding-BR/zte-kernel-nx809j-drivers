# `aw8693x_judge_rtp_going` static reconstruction

Status: `candidate_under_static_validation`; `semantic_equivalence=NOT_ESTABLISHED`.

The function reads status register `0x3f` through `i2c_r_bytes`. It returns `1` and logs “rtp is going on” when the returned status byte is `0x08`; otherwise it returns `0`. The return type is `int`, matching stock KCFI type ID `0x512cf1f0`.

## Automated validation

The hard reconstruction protocol reports `CORE_GATES_PASS`; all eight required automated gates pass: assembly/relocations, candidate Ghidra P-Code, reproducible Docker builds, input identity, scoped Joern analysis and slice, KCFI, and reconstruction-map identity.

- AArch64 body: 144 bytes and 36 instructions; strict instruction and relocation comparison passes.
- KCFI preamble matches stock type ID `0x512cf1f0`.
- Two Docker builds are byte-identical, SHA-256 `476c74d35bf762183e55dc3831485c3a4f33d907ae96be300e2cb58760419779`.
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
- Candidate Ghidra full/scoped exports and export metadata are in the sibling `haptic_judge_rtp_20261029` evidence directory.
