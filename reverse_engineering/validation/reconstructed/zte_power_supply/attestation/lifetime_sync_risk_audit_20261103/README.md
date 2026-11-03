# `zte_power_supply` lifetime and synchronization risk audit — 2026-11-03

## Finding

The exact stock teardown order contains a possible work-item lifetime race. `zte_power_supply_unregister` sets `psy->removing`, calls `cancel_work_sync(&psy->changed_work)`, and only afterwards calls `cancel_delayed_work_sync(&psy->deferred_register_work)`. The deferred callback can itself enqueue `changed_work` through `zte_power_supply_changed`.

The callback checks `removing` only after `device_trylock(parent)` fails. If the parent is absent (the registration path warns but does not reject it), or if the callback obtains the parent lock, it skips that check and proceeds to `zte_power_supply_changed`. The latter marks the event pending and queues `changed_work`.

A possible interleaving is therefore:

1. Unregister sets `removing` and `cancel_work_sync(changed_work)` returns while that work is idle.
2. An already-running deferred callback follows the parentless or successful-lock path and queues `changed_work`.
3. `cancel_delayed_work_sync` waits for the deferred callback but does not cancel the separate `changed_work` queued after its cancellation returned.
4. `device_unregister` drops the device reference. If it is the final reference, device release runs `zte_power_supply_dev_release`, which frees the containing `psy`; the queued work has no reference of its own.

The pinned kernel explicitly limits `cancel_work_sync`'s guarantee to the absence of racing enqueues. Its device core implements `device_unregister` as `device_del` plus `put_device`; final release invokes the device's release callback. The reconstructed release callback calls `kfree(psy)`.

## Stock and candidate comparison

Ghidra stock pseudocode and the saved stock/candidate AArch64 assembly show the same ordering in `zte_power_supply_unregister`. The deferred callback's stock pseudocode also shows the conditional removal check only in the failed-parent-lock loop. This is consequently an inherited stock risk, not a reconstruction mismatch. The candidate source, map and module hashes match the canonical Docker curated snapshot byte-for-byte.

## Disposition and limits

This audit identifies a **potential use-after-free window**, not a reproduced failure. No runtime race, hardware test, device mutation, or module unload was performed. The driver remains an offline static reconstruction; independent review and hardware validation remain pending.

The source and mapping were left unchanged to preserve the current exact-stock reconstruction claim. If this behavior is hardened, the minimal direction is to publish the removal state with explicit single-access semantics, drain `deferred_register_work` before `changed_work`, and mark the changed unregister function as a declared hardening deviation. That deviation then needs a fresh canonical Docker build and independent review before promotion.

Machine-readable evidence, exact hashes and kernel commit binding are in [`lifetime_sync_risk_audit.json`](lifetime_sync_risk_audit.json).
