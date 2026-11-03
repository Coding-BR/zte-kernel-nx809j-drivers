# `zte_fingerprint` notifier and IRQ teardown audit — 2026-11-03

## Finding 1: delayed notifier registration can outlive remove

`gf_probe` queues `screen_state_work`. The worker retries panel discovery with one-second sleeps and may then call `panel_event_notifier_register`, storing its cookie in a global. `gf_remove` calls `panel_event_notifier_unregister(cookie)` **before** `cancel_delayed_work_sync(&gf.screen_state_work)`.

If the worker is already running and has not yet stored its cookie, remove can unregister a null or previous cookie. The worker can then register the panel callback. `cancel_delayed_work_sync` waits for the worker but does not unregister the cookie it stores afterwards. The workqueue is destroyed and remove returns while the panel notifier may still retain the callback and `client_data` pointers.

The module-exit order has the same teardown gap: Ghidra stock and the source call `netlink_exit()` before `platform_driver_unregister()`. A leaked or in-flight panel callback can overlap netlink teardown; if the module is later unloaded while the registration remains, the callback may point into released module text/data.

## Finding 2: open-time IRQ survives platform remove

The first character-device open requests the IRQ. The last file release disables and frees it, but `gf_remove` does neither. `gf_remove` removes `fp_wakelock`, while `gf_irq` calls `__pm_wakeup_event(&fp_wakelock, ...)` and `sendnlmsg`.

If the platform device is unbound while a file is still open, the IRQ may remain registered until that file closes and can run after the wakeup source is removed. This is a conditional teardown gap; the audit does not claim a reproduced UAF or establish how the wakeup-source API behaves in this race.

## Current candidate and stock comparison

The repository `STATUS.md` had a stale candidate hash (`61a330c…`, 393120 bytes). The current reconstruction map, repository `.ko`, canonical Docker curated snapshot and October full static audit all identify candidate `8fbc779e…`, 393544 bytes. I corrected the status to the current identity.

I freshly extracted assembly from the current candidate and stock module in Docker. All three relevant functions match exactly in opcodes, relocations, section and symbol size: `gf_remove` 85/85 instructions, `goodixfp_init_drm_notifier` 78/78, and `cleanup_module` 22/22. This confirms the lifecycle risks are stock-inherited behavior, not reconstruction mismatches.

No source changes, device operations, module load/unload, notifier events, IRQ stimulus or hardware tests were performed. The current full static audit remains `static_verified`; independent human review and hardware validation remain pending.

A hardening pass should drain `screen_state_work` before unregistering the final cookie, quiesce the open-time IRQ before removing its wakeup source while preventing double-free from last close, and unregister the platform driver before netlink teardown. Any change must be declared and rebuilt in the canonical Docker workspace, then independently reviewed.

See [`lifetime_sync_risk_audit.json`](lifetime_sync_risk_audit.json) for exact hashes and identities.
