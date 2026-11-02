# Helper workqueue teardown review — 2026-11-02

Baseline: `49afe51ddcc0f4e11bd84ffc96987e36f71d5cbb`.

## Finding

Stock `syna_dev_remove` canceled and destroyed the helper workqueue before removing the panel/sysfs entry points and before `syna_cdev_remove` disconnected the IRQ. The reset report callback could therefore queue `syna_dev_helper_work` on a destroyed queue. That worker can also reschedule startup reflash work on a separate TCM workqueue, so teardown had to drain the helper worker before disconnect destroyed the reflash queue.

## Change

Removal now quiesces cdev operations and unregisters panel/sysfs entry points first. A shared IRQ-safe spinlock closes helper-work admission and serializes reset callback queueing, delayed reflash requeueing, and work completion. Removal detaches the helper queue under that lock, cancels and drains it, then calls `syna_cdev_remove`; disconnect releases the IRQ and destroys the reflash queue after helper work has stopped.

The three changed stock functions are marked `HARDENED_STOCK_DEVIATION` in the map and microtask inventory. Their offline exact status was removed; no parity claim is made for the new behavior.

The canonical Docker snapshot copied four source files. Two independent builds passed for `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`, with matching vermagic and no diagnostics. Both produced a 6,661,000-byte module with SHA-256 `cbffb18f3e547f766bc8f90abca15e40c502a4c62fda953afec0d886564602e9`.

No IRQ runtime, unbind/rebind, or hardware test was run. Full source hashes, build logs, and sync details are in the adjacent JSON files.
