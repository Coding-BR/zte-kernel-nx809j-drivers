# Probe completion publication ordering — candidate C7 (2026-11-04)

## Finding and correction

The probe wrapper initializes driver state, registers the LED/sysfs interfaces, and creates the device node before marking probe complete. The RAM worker and file-open path use this flag to decide whether they may access the state. In candidate C6, the final `true` publication and both readers were ordinary `WRITE_ONCE`/`READ_ONCE` operations. The worker can be queued before probe completion, so its earlier workqueue enqueue does not publish the later initialization writes. The file-open path holds the registry mutex, but the successful `true` store is not made under that mutex.

Candidate C7 publishes readiness with `smp_store_release(&haptic_probe_complete, true)`. The worker helper and `haptic_lifetime_file_open` both read the flag with `smp_load_acquire`. The reset-to-false operations remain `WRITE_ONCE`; the acquire/release pair applies to the successful readiness handoff.

## Evidence

The pinned target kernel is commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. Its generic barrier header supplies the release/acquire API and its arm64 header supplies the architecture operations; source excerpts and hashes are in [target_kernel_barrier_excerpt.txt](target_kernel_barrier_excerpt.txt). Docker disassembly of C7 shows `LDARB` in the worker gate at VMA `0x66ac`, `STLRB` in `aw_i2c_probe` at `0x6894`, and `LDARB` in the file-open gate at `0x69bc`.

Two independent builds used the canonical Docker image, pinned kernel source/configuration, and separate prepared output volumes. Both produced a byte-identical 6,723,232-byte module with SHA-256 `a2ec3ce4d51e1878e199017bda6cb01623589f54dc3c074f6b22a0586fd3ad0b`. Full logs and source input hashes are preserved in this attestation. The repository candidate, reconstruction map, STATUS, and Docker curated candidate were synchronized.

A hash-sync dry run found 41 changed versioned files and 172 Docker-curated-only evidence files. The 41 changed files were copied and hash-verified; all 172 evidence files were preserved. The current inventory confirms that this driver's 192 build inputs and source tree match the Docker snapshot. The global inventory lists 24 drivers with candidate modules, stock modules, and Ghidra inventories (1,039 functions total); only 21 Docker maps and 17 source snapshots currently match across all 24. See [the current inventory](../../../../driver_inventory_audit_20261104.md), [the dry run](source_sync_dry_run.json), and [the selective sync record](source_sync_selective_copy.json).

The final Docker-curated file inventory is recorded in [curated_snapshot_manifest_c7_20261104.json](curated_snapshot_manifest_c7_20261104.json); its self-hash entry is intentionally excluded.

## Limits

This is static ordering hardening and a reproducible build result. It does not establish runtime behavior on the NX809J. The candidate has not been installed; ADB currently reports no connected device. The overall driver remains **INCOMPLETE**: 135 functions are promoted offline exact, 23 are reviewed hardening deviations, and two remain under static validation. Whole-driver equivalence, runtime firmware/concurrency behavior, and hardware validation remain pending.
