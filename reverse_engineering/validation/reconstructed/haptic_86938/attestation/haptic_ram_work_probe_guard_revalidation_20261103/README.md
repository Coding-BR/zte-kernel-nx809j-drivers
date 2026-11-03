# RAM firmware probe/retry lifetime review — 2026-11-03

## Finding and correction

Stock Ghidra shows that `aw_i2c_probe` calls `ram_work_init` after allocating the private workqueue but before allocating the RTP buffer and FIFO pages. `ram_work_init` queues the initial RAM worker on `system_wq` after 2000 jiffies. The pinned NX809J config has `HZ=250`, so the initial delay is 8 seconds. A probe lasting longer than that could let the worker call `ram_load` before probe publication. Later stock allocation-failure paths can release the IRQ and return a partial state during that window.

Candidate `53ee12ee85c0d39eb05515e81b7eff5abe14af4480a4b7376ddbebc902427bb3` adds `haptic_lifetime_is_probe_complete()`. `ram_work_routine` now waits for that flag before changing RAM state or requesting firmware. If the worker fires before publication, it requeues after 250 jiffies (1 second at `HZ=250`) while shutdown is clear. The probe wrapper publishes the flag only after the LED device and both sysfs groups are ready. A failed partial probe leaves the flag clear, sets shutdown, and routes cleanup through `aw_remove`.

## Teardown coverage

Stock probe returns zero for the later buffer/page allocation failures without publishing `g_aw_haptic`; the current wrapper records the partial state and calls `aw_remove`. If the private workqueue is NULL, stock skipped `ram_work_init`, so the delayed RAM work was never initialized. If it is non-NULL, `aw_remove` cancels the delayed work, drains outstanding firmware callbacks, cancels the delayed work again, then destroys the queue and retires the state.

The second cancel matters because `ram_load` can queue a delayed retry on `system_wq` before its tracked firmware callback decrements the outstanding count. The callback drain waits until that requeue has happened; the second cancel catches it. The target kernel's `cancel_delayed_work_sync` disables the item while it flushes and waits for an executing callback, preventing a requeue from escaping that cancellation. The `ram_update_store` producer is exposed only after probe setup and its LED/sysfs device is unregistered before work teardown.

## Evidence and build

- Stock Ghidra and assembly hashes for `aw_i2c_probe`, `ram_work_init`, `ram_work_routine`, `ram_load`, and `aw_remove` are recorded in [the hash-bound report](ram_work_probe_guard_revalidation.json).
- Candidate disassembly was generated from the Docker-built module and shows the probe-complete gate, shutdown-gated 250-jiffy retry, callback count drain, and second cancellation.
- The target `kernel/workqueue.c` excerpt is pinned to commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`; its SHA-256 is recorded in the report.
- The pinned LED/device/sysfs/kernfs source excerpt shows that LED unregister removes the child device groups and kernfs waits for active callbacks to drain before returning.
- Two isolated builds from the canonical curated source snapshot passed with return code 0 and produced identical modules: SHA-256 `53ee12ee85c0d39eb05515e81b7eff5abe14af4480a4b7376ddbebc902427bb3`, 6,706,688 bytes. Build logs are preserved beside this README.
- A direct `llvm-nm -u` comparison found 85 stock imports and 93 candidate imports. Parity remains incomplete: `gpio_free` is missing and nine lifetime-support symbols are additional. The new worker guard adds no new external import beyond the existing delayed-work API.

## Limits

This statically addresses the pre-publication initial-work window for this candidate. Probe-delay fault injection, runtime unbind races, firmware timing, and NX809J hardware behavior remain unverified. The overall reconstruction remains **INCOMPLETE**, and this review does not claim exact stock equivalence.
