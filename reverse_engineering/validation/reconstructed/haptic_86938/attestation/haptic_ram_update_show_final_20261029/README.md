# `ram_update_show` static reconstruction

Status: `candidate_under_static_validation`; `semantic_equivalence=NOT_ESTABLISHED`.

The reconstructed function is in `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_092_ram_update_show.c`. The stock mode callback takes a `char` argument; using `unsigned int` produced the wrong KCFI identifier. The candidate now matches the stock callback identifier and preserves the stock arithmetic order before the final mode callback.

## Automated validation

The hard reconstruction protocol reports `CORE_GATES_PASS`. All eight required automated gates pass: assembly/relocations, candidate Ghidra P-Code, reproducible Docker builds, input identity, scoped Joern analysis and slice, KCFI callsite checks, and reconstruction-map identity.

- AArch64 function body: 316 bytes and 79 instructions; strict instruction and relocation comparison passes.
- KCFI callsite type sequence: `0x847a0830`, `0x1d0adf6e`, `0x847a0830`, `0x0c0dba4c`, `0x1d0adf6e`; all five indirect calls are guarded and their slots match stock.
- Two Docker builds are byte-identical, SHA-256 `d6274704aa709027646bd214ec801ff91e0feff77a352d7c2003c9afc4b35bf6`.
- Candidate Ghidra normalized C and P-Code comparisons pass; scoped Joern analysis and slice pass.

## Evidence limits

This result is a static candidate. The hard protocol leaves promotion unauthorized, and semantic equivalence is not established. Runtime/hardware evidence, independent review, lock/state and register/bus ledgers, mutation/fuzz/sanitizer evidence, and the other evidence gates listed in `hard_protocol_report.json` remain outstanding.

## Reports

- [Hard protocol report](hard_protocol_report.json)
- [Docker audit](docker/driver_audit.json)
- [AArch64 assembly comparison](assembly/comparison.json)
- [Ghidra semantic comparison](ghidra/semantic_comparison.json)
- [KCFI callsite comparison](kcfi/callsite_comparison.json)
- [Joern gate report](joern/joern_gate_report.json)
- Candidate Ghidra full/scoped exports and their export metadata are in the sibling `haptic_ram_update_show_20261029` evidence directory.
