# rdbg release microtask checkpoint

Date: 2026-10-28. Scope: `rdbg_release@001014cc`, checked together with the previously implemented `on_interrupt_from@00101600` and `cleanup_module@00101974`. The full `rdbg` driver remains incomplete and this checkpoint does not authorize promotion or device loading.

## Source and Docker identity

- Stock module SHA-256: `05aaaf7e0da03cbf25343e32d9a0a7a965de6907eef342a1d9d4b0b55cd11a12`.
- Repository source and `engenharia/curated/rdbg` match byte-for-byte across 11 files; see `docker_source_sync.json`.
- Docker image: `nubia-sm8850-kernel-builder:latest`, pinned image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`, Clang `clang-r536225`.
- Two clean builds from the protocol workspace and two clean builds from the Docker curated snapshot all produced the same module: SHA-256 `9fe39da4803dd2fc38b24dde434e0473ad5daa0e2cbe93288331e4b71fa9c8c0`, size 370080 bytes. The curated-snapshot modules are retained in `docker_curated_builds/`.

## Function gates

- Protocol core: PASS for all eight automated gates: input identity, map identity, scoped Joern, Joern usages slice, two-build Docker reproducibility, assembly/relocation comparison, KCFI, and candidate Ghidra/P-Code comparison.
- `rdbg_release` matches stock section `.text`, 304-byte body and 76 instructions. Assembly and relocation comparison passed.
- KCFI type ID matches stock: `0x9829071d`; section and symbol size also match.
- Candidate Ghidra export is bound to the candidate module MD5. Normalized C and ordered P-Code comparisons passed for all three selected functions.
- Joern 4.0.548 strict scoped analysis and the configured usages slice passed.

## Limits and remaining work

- The full-driver Docker audit remains `INCOMPLETE`: no static or hardware verification is claimed for the full module. Its report is `docker_curated_audit.json`.
- `promotion_authorized` is false. The reconstruction map keeps all three C candidates at `implemented_pending_independent_review`.
- Independent review, host harnesses, sanitizer/lifetime evidence, full import parity, the remaining five stock functions (`rdbg_probe`, `rdbg_read`, `rdbg_write`, `rdbg_open`, `init_module`), device-tree selection and hardware validation remain outstanding.
- The candidate still contains a test-only callback anchor in the stock `rdbg_driver` data slot at `.data+0xa0`; it is not a canonical full-driver module and must not be promoted or loaded.

## Evidence index

- `protocol_final/hard_protocol_report.json`, `hard_protocol_plan.json` and `input_manifest.json` — gate statuses, input identities and non-promotion decision.
- `protocol_final/assembly/` — stock/candidate assembly and instruction/relocation comparison.
- `protocol_final/kcfi/` — stock/candidate KCFI records and comparison.
- `protocol_final/ghidra/semantic_comparison.json` and `candidate_ghidra/rdbg.ko/` — candidate module-bound Ghidra export and semantic/P-Code comparison.
- `protocol_final/joern/` — strict scoped report, input manifest, call graph and usages slice.
- `protocol_final/docker/` and `docker_curated_audit.json` — full-module audit from both source routes.
- `docker_curated_builds/` — the two byte-identical modules built from the Docker curated snapshot.
- `docker_source_sync.json` — repository-to-Docker source hashes.
- `../../../../../../kernel_development/drivers/reconstructed/rdbg/reconstruction_map.json` — mapped and unmapped stock functions.
