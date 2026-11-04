# zlog_common lifetime hardening — 2026-11-04

## Finding and correction

The 2026-11-03 static audit found a possible write-after-free: the report worker copies client data, releases `client_lock` while calling `zlog_write_internal`, then resets the client. Unregister could free `record_buffer` during that unlocked interval.

The current candidate uses `zlog_lifetime_lock` around the complete report worker from its first client scan through its post-write reset. Unregister takes the same mutex before clearing notification state or freeing the client buffer. It closes record and notify producers under `client_lock`, sets the buffer pointer to NULL after release, and marks the slot reusable after cleanup. Notify schedules work before releasing `client_lock`, so unregister cannot close the producer gate and miss a late schedule. The record implementation preserves its prior return and error-reporting behavior while adding the closing-client guard.

The mutex ordering is `zlog_lifetime_lock` then `client_lock` in both report work and unregister. Record, notify and standalone reset take only `client_lock`; no reverse lock order was found. `zlog_write_internal` allocates and queues an exception fragment and does not call back into zlog client registration or unregistration.

## Evidence

- The canonical Docker pipeline built the final candidate twice from clean output volumes. Both outputs are 246,360 bytes with SHA-256 `7a2a371321d3159d76bd25f91514499f7bd889607802fe95b8a201f8508ed44d`. The final full pipeline result is `static_verified`; import set, target identity, module layout, candidate hash and map checks pass. See `docker_validation.json` for the self-contained gate summary.
- All 13 Ghidra function identities were extracted and compared against the stock module. Eight functions remain exact. Five intentional lifetime changes are fully enumerated in `assembly/comparison_final.json`: `zlog_client_notify`, `zlog_client_record`, `zlog_unregister_client`, `zlog_reset_client` and `zlog_handle_work`.
- KCFI presence and type decisions match stock for all 13 functions. One function has no KCFI preamble in either module; the five changed body sizes are ignored by design.
- `static_verified` confirms the static pipeline gates only. It does not assert OEM equivalence for the five changed bodies or prove live scheduler behavior.

For the current candidate hash, use `assembly/stock_all`, `assembly/candidate_final`, `assembly/comparison_final.json`, `kcfi/stock.json`, `kcfi/candidate_final.json`, `kcfi/comparison_final.json`, `hardening_evidence.json` and `docker_validation.json`. The `candidate`, `candidate_all`, and unsuffixed comparison captures are retained as intermediate analysis outputs from earlier builds; use only the `_final` files for the current candidate.

## Status and limits

This candidate is an intentional hardening deviation, not a stock-exact reconstruction. The interleaving has not been reproduced at runtime, the module has not been loaded on the phone, and no hardware test was performed. The latest `adb devices -l` check returned no connected devices. Independent review, refreshed host tests for the new production path and controlled device validation remain pending. The original finding remains preserved in `../lifetime_sync_risk_audit_20261103/`.
