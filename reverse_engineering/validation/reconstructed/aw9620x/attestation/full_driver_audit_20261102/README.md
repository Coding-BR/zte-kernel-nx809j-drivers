# AW9620x full-driver audit — 2026-11-02

This versioned package closes the missing-evidence-path issue recorded in `kernel_development/drivers/reconstructed/aw9620x/STATUS.md`. It preserves the strict Docker audit, the prior hard-protocol core report, and source/Docker reconciliation.

## Result

- Docker audit result: `static_verified`; all recorded checks pass, there are no audit errors, and two clean builds are byte-identical.
- The repository candidate and Docker candidate are SHA-256-bound to the reconstruction map.
- The full candidate module hash differs from the fresh build. The report identifies a differing allocated `.note.gnu.build-id` plus non-allocated debug/BTF-related sections; runtime content, runtime section layout, and modinfo match. This is not full binary identity.
- The Docker build inputs match the repository. The 79 nested `functions/*.S` files are exact copies of root-level Assembly files and are supplemental, not required Kbuild inputs.
- Core status remains `CORE_GATES_PASS`, but all 79 mapped functions are `assembly_only`. Seventeen evidence gates remain open. Promotion and hardware verification are not authorized or claimed.

## Files

- `docker_audit.json` and `docker_audit.md`: exact output of the final strict Docker audit.
- `core_protocol_report.json`: preserved report for the earlier 79-function hard-protocol run.
- `source_reconciliation.json`: hashes and comparison results for repository inputs, Docker snapshot, build outputs, map, and supplemental Assembly copies.
- `manifest.json`: SHA-256 and size of each package file (raw bytes and LF-normalized form).
