# aw8693x_get_wav_seq reconstruction candidate

- Stock function: `aw8693x_get_wav_seq` at `0x00105c18`.
- Reconstructed body: 144 bytes / 36 AArch64 instructions.
- KCFI: stock and candidate type ID `0xd37b6e95`.
- Candidate status: `candidate_under_static_validation`; semantic equivalence remains `NOT_ESTABLISHED`.
- Core protocol: all eight required gates passed (`ASSEMBLY_RELOCATIONS`, `CANDIDATE_GHIDRA_PCODE`, `DOCKER_REPRODUCIBLE`, `INPUT_IDENTITY`, `JOERN_SCOPED`, `JOERN_SLICE`, `KCFI`, `MAP_IDENTITY`). Assembly, normalized Ghidra semantics, P-Code, Joern, KCFI, and two clean Docker builds matched for this function.
- Docker candidate SHA-256: `e3af6a09bbbe7dad5dd7b5284ffb481d00cd08adb86e7a67797c9cd73275deab` (4,750,984 bytes); both clean builds produced the same hash.
- Core result: `CORE_GATES_PASS`; promotion is not authorized by the runner.

## Scope and remaining blocker

This result validates the function candidate only. The full driver audit remains incomplete: the reconstructed module has not been promoted, 60 stock Ghidra functions remain unmapped, and module-level `vermagic`, I2C alias, and undefined-symbol parity do not match stock. Those are driver-wide reconstruction gaps and are not evidence of a failure in this function's eight core gates. No hardware behavior or full-driver equivalence is claimed.

## Evidence

- `hard_protocol_report.json` contains the gate results and command identities.
- `assembly/`, `ghidra/`, `kcfi/`, and `joern/` contain scoped comparisons.
- `input_manifest.json`, `hard_protocol_plan.json`, and `promotion_decision.json` preserve protocol inputs and the non-promotion decision.
- The sibling `haptic_get_wav_seq_20261029` directory contains the job, full and scoped candidate Ghidra exports, export-run metadata, and the independent prebuild audit.
