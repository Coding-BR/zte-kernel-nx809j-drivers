# aw8693x_upload_lra reconstruction candidate

- Stock function: `aw8693x_upload_lra` at `0x00105af4`.
- Reconstructed body: 288 bytes / 72 AArch64 instructions; opcodes and relocations match stock.
- KCFI: stock and candidate type ID `0xd37b6e95`.
- Docker candidate SHA-256: `66a77b263de5c9d248faa5852586af9230a1b9832b8a10fc50985ddb55d8384e`; both clean builds produced the same hash.
- Core protocol: all eight required gates passed (`ASSEMBLY_RELOCATIONS`, `CANDIDATE_GHIDRA_PCODE`, `DOCKER_REPRODUCIBLE`, `INPUT_IDENTITY`, `JOERN_SCOPED`, `JOERN_SLICE`, `KCFI`, `MAP_IDENTITY`). Strict normalized Ghidra C and P-Code comparisons also passed; no assembly-only fallback was used.
- Core result: `CORE_GATES_PASS`; promotion is not authorized by the runner.
- Map status remains `candidate_under_static_validation`; semantic equivalence remains `NOT_ESTABLISHED`.

## Root cause and correction

The Ghidra pseudocode represented the mode parameter as signed `int`, but the stock KCFI preamble identifies the compatible type as `unsigned int`. The source now uses `unsigned int`, restoring the stock KCFI ID. The compiler also canonicalized the mode checks and field reads into a different instruction order, so the source constrains those small code-generation points; the resulting function passes the exact opcode and relocation comparison.

## Scope

This attestation validates the function candidate. The full driver audit remains `not_ready_for_100_percent_claim`; it does not establish module-wide equivalence or hardware behavior. Keep the driver unpromoted until its remaining module-wide gates pass.

## Evidence

- `hard_protocol_report.json` records the eight core gate results and command identities.
- `assembly/`, `ghidra/`, `kcfi/`, and `joern/` contain the scoped comparisons.
- `input_manifest.json`, `hard_protocol_plan.json`, and `promotion_decision.json` preserve the protocol inputs and non-promotion decision.
- `docker/driver_audit.json` and `docker/driver_audit.md` record the broader module audit result.
- The sibling `uplra_20261029` directory contains the hard-protocol job and candidate Ghidra export provenance/package.
