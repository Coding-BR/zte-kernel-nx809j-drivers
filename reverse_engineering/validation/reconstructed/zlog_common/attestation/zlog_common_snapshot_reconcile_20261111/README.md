# zlog_common candidate snapshot reconciliation — 2026-11-11

The repository's tracked module was `633ca1d22cacf6ebe70b7520896c55d9a9df7a9ee6da30112439b36dbddb5779`, while the reconstruction map and canonical Docker candidate were bound to `75fefa2df68104316824fadc75a4c0153c9c8468795c5b2c5b9b9b60ed1d9d8e`.

The canonical Docker validator rebuilt the current curated source twice. Both builds reproduced `75fefa2df68104316824fadc75a4c0153c9c8468795c5b2c5b9b9b60ed1d9d8e` (248,616 bytes). The Docker candidate matched the clean build, runtime content, section layout, modinfo, target kernel identity, Ghidra inventory, function traceability, mapping review, and the hash declared by the map. That exact Docker candidate was copied into the versioned repository; `candidate_sync.json` records the before/after hashes.

The validator remains `incomplete_or_failed` because the hardened candidate imports `destroy_workqueue`, absent from the stock module's import set. The map classifies this as an intentional hardening delta. No exact-stock or hardware-equivalence claim is made; hardware validation and independent human review remain open.

Evidence: `validator_pre_sync.json` / `.md`, `candidate_sync.json`, and the repository's `kernel_development/drivers/reconstructed/zlog_common/STATUS.md` and `reconstruction_map.json`.
