# `fp_goodix` notifier and IRQ teardown audit — 2026-11-03

## Finding 1: delayed notifier registration can outlive remove

`gf_probe` queues `screen_state_work`. The worker retries panel discovery with one-second sleeps and may then call `panel_event_notifier_register`, storing its cookie in a global. `gf_remove` calls `panel_event_notifier_unregister(cookie)` **before** `cancel_delayed_work_sync(&gf.screen_state_work)`.

If the worker is already running and has not yet stored its cookie, remove can unregister a null or earlier cookie. The worker can then register the panel callback. `cancel_delayed_work_sync` waits for the worker to finish, but remove does not unregister the new cookie afterwards. The workqueue is destroyed and remove returns while the panel notifier may still retain the callback and `client_data` pointers.

Module exit has a matching teardown order: stock Ghidra and source call `netlink_exit()` before `platform_driver_unregister()`. Thus a leaked or in-flight panel callback can overlap netlink teardown; if the module is later unloaded while the registration remains, the callback may point into released module text/data.

## Finding 2: open-time IRQ survives platform remove

The first character-device open requests the IRQ. The last file release disables and frees it, but `gf_remove` does not do either. `gf_remove` removes `fp_wakelock` before it reaches the workqueue teardown, while `gf_irq` calls `__pm_wakeup_event(&fp_wakelock, ...)` and `sendnlmsg`.

If the platform device is unbound while a file is still open, the IRQ may remain registered until that file closes and can run after the wakeup source has been removed. This is a conditional teardown gap; the audit does not claim a reproduced UAF or establish how the wakeup-source API behaves in this race.

## Stock and candidate evidence

Ghidra stock pseudocode confirms the worker's late registration, remove ordering and module-exit ordering. The current candidate assembly review is hash-bound to the current candidate and passes all 30 functions. The three relevant bodies are exact: 78/78 instructions for notifier setup, 85/85 for remove, and 22/22 for module cleanup, with relocations, section and symbol-size checks passing. The current source, map and module hashes also match the canonical Docker curated snapshot.

These are stock-inherited lifecycle risks, not reconstruction mismatches. No source changes, device operations, module load/unload, notifier events, IRQ stimulus or hardware testing were performed. The driver remains `STATIC_VERIFIED_OFFLINE`; hardware behavior and independent human review remain open.

A hardening pass should drain the delayed registration work before unregistering the final cookie, quiesce the open-time IRQ before removing its wakeup source while preventing double-free from last close, and unregister the platform driver before netlink teardown. Any change must be declared, rebuilt in the canonical Docker workspace and independently reviewed.

See [`lifetime_sync_risk_audit.json`](lifetime_sync_risk_audit.json) for hashes and the full machine-readable record.
