# input_agent lifecycle review — 2026-11-02

## Result

The input_agent lifecycle hardening passed static review and two independent canonical Docker builds. Both cycles produced the same module: `SHA-256 6c280c7d76c6e7d8aa7cf47580333100da240fe0f9338cdcf88e70999aa120d8`, 6,551,096 bytes. The source sync copied 5 files and removed none.

## Findings and changes

- `misc_register` publishes `input_agent` before connect. The connect wrapper now deregisters it on connect failure; cdev creation failure and normal teardown also deregister it.
- `zte_fops` now uses generation-checked wrappers. Quiesce rejects new operations, wakes waiters, and waits for active callbacks before disconnect or free. The blocking ioctl exits with `-ENODEV` after shutdown.
- `syna_mmap` maps the buffer at `tcm+0x460`. A per-open owner retains it through teardown. The file release drops that reference after the kernel releases the file’s VMA references, then frees the retired buffer.
- `syna_poll` previously registered epoll waiters on a waitqueue embedded in `tcm`. A module-lifetime queue now receives report notifications from the wrapper around the preserved exact `syna_dev_process_touch_report` body. Quiesce wakes the same queue, so persistent epoll registrations do not point into freed `tcm` memory.

## Evidence

- [Source sync plan](source_sync_plan.json)
- [Canonical Docker build report](canonical_build_report.json)
- [Hash-bound static review](lifecycle_review.json)
- Ghidra stock pseudocode and P-Code hashes are recorded in `lifecycle_review.json`.

No kernel runtime or NX809J hardware test was run. The exact assembly bodies for connect and touch reporting are preserved under `*_stock_exact` aliases. The ioctl source includes an explicit offline exit, and public callback wiring is recorded as `HARDENED_STOCK_DEVIATION`.
