# aw9620x Docker map reconciliation — 2026-11-11

The prior global inventory found that the Docker curated `aw9620x/reconstruction_map.json` differed from the versioned repository map. The source tree and candidate module already matched, so this was a metadata-only synchronization; no module rebuild was needed.

The hash-sync tool's dry run identified only `reconstruction_map.json`. The file was copied from the versioned driver tree to Docker curated, then a second dry run verified zero remaining differences. See `curated_sync_dryrun.json`, `curated_sync_applied.json`, and `curated_sync_verified.json`.

The refreshed global inventory reports 24/24 stock modules, 24/24 Ghidra inventories (1,039 functions), 24/24 candidates matching the repository, and 24/24 Docker maps matching the repository. No structural findings remain. Two Docker build/source snapshots remain stale: `zte_reboot_ext` (six exact include files) and `zte_sensor_sensitivity` (twelve exact include files). This inventory is a traceability/snapshot report, not proof that all drivers are semantically equivalent or hardware-ready.
