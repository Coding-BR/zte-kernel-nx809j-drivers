# `syna_dev_remove` null-context hardening

Date: 2026-11-02 (America/Sao_Paulo)

## Finding and change

The stock Ghidra pseudocode at `001125bc` logs when the platform device has no TCM context, then continues into cleanup using that null pointer. The existing direct-source harness had intentionally excluded this branch because it dereferenced the missing context. The candidate now returns before quiescing callbacks or touching workqueues, IRQ state, managed buffers, or the TCM object when either `pdev` or its driver data is null. The normal cleanup path is unchanged.

## Validation

- Direct-source host harness: six scenarios, including null `pdev` and missing driver data; two ASan/UBSan container runs produced identical binaries and passed.
- Canonical whole-module Docker build: two independent cycles passed with identical module bytes and target `vermagic`.
- KCFI type-only comparison: passed; stock and candidate type ID are `0x24a11bb9`. The function grew from 308 to 336 bytes, so the size-gating KCFI report is retained as a mismatch and assembly parity is not claimed.
- Strict Joern gate: passed for the updated source with zero parse problems and no mapped-call deltas. It marks cleanup calls for lifetime/synchronization review; these selectors were checked as the intended teardown operations.
- Repository-wide inventory: 24/24 maps, sources, build inputs, and candidate modules match the Docker snapshot; 1,039 Ghidra identities and zero structural findings.
- AArch64 comparison: relocations and section match. The expected early-return guard changes the function from 77 to 84 instructions; this is recorded as an intentional hardening deviation.
- Docker curated source and module are synchronized to the repository candidate.

The reconstruction map remains `HARDENED_STOCK_DEVIATION` for this function. This is not a stock-exact reconstruction. Kernel runtime and NX809J hardware behavior remain unverified.

## Evidence

- `review.json` and `final_summary.json`: finding, fix, gates, Joern selectors, inventory, and limits.
- `host_harness_report.json`: two sanitized host-test cycles.
- `source_sync_report.json` and `canonical_build_report.json`: curated source sync and reproducible module build.
- `assembly_comparison.json`, `stock_kcfi.json`, `candidate_kcfi.json`, and `kcfi_type_only_comparison.json`: stock-versus-candidate function evidence.
- `joern_final/joern_gate_summary.json` and `repo_wide_inventory.json`: strict source-structure and cross-driver snapshot checks.
- `zte_tpd/canonical_builds/...`: build logs and cycle outputs.
- `syna_dev_remove_null_guard_20261102/zte_tpd/zte_tpd.ko`: promoted module used to update both the repository and Docker snapshot.
