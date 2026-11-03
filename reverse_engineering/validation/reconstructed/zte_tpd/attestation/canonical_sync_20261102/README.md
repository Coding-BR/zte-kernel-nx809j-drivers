# zte_tpd canonical reconciliation

Date: 2026-11-02 (America/Sao_Paulo)

## Result

The repository candidate module and the Docker curated snapshot were stale even though their build inputs already matched. The versioned source tree was rebuilt in two independent ephemeral Docker containers using the target NX809J kernel image, source volume, and Clang toolchain recorded in `kernel_development/config/target_kernel.json`.

Both builds passed and produced identical bytes. The resulting module SHA-256 is `f56d61c4a1b31d518fb2a2047c179c03baba96401bbf67ea2b26fd50e2e9e13b` (7,264,224 bytes), matching `candidate_sha256` in the reconstruction map. Its `vermagic` matches the target kernel manifest. The promoted module is now synchronized in the reconstructed driver tree and Docker curated snapshot; the map was already correct and is byte-identical in both locations.

## Repository-wide inventory

The scope audit found 24 reconstructed drivers, each with a stock module and Ghidra inventory. All 24 candidate modules, reconstruction maps, Docker source snapshots, and Docker build-input sets now match their repository counterparts. There are 1,039 Ghidra function identities across the inventory and no structural findings.

For `zte_tpd`, all 367 Ghidra identities are mapped: 333 entries are marked `PROMOTED_OFFLINE_EXACT` and 34 are `HARDENED_STOCK_DEVIATION`. These labels describe the existing static reconstruction evidence; this synchronization does not establish hardware behavior or independent review. Hardware validation remains deferred.

## Evidence in this directory

- `canonical_build_report.json`: accepted cycles, reproducibility, target kernel identity, and module hash. Machine-specific host paths are normalized for publication.
- `repo_wide_inventory.json` and `.md`: post-synchronization scope and parity audit.
- `zte_tpd/canonical_builds/.../cycle_1` and `cycle_2`: independent build and clean logs plus both output modules.
- `reconcile_20261102/zte_tpd/zte_tpd.ko`: promoted artifact used for synchronization.

No reconstructed C or assembly source was changed in this reconciliation.
