# Panel notifier teardown lifetime review — 2026-11-03

## Result

The current candidate has an open callback-lifetime risk at the external `panel_event_notifier` boundary. In the stock notifier module, `panel_event_notification_trigger` copies the callback and client data while holding its registry mutex, releases the mutex, then calls the copied function pointer. `panel_event_notifier_unregister` clears the registry slot under that mutex and returns without draining a callback already copied by a concurrent trigger. A callback can therefore enter after unregister returns while TPD teardown continues.

The registered TPD callback reaches `change_tp_state`, which accesses the global TPD state lock and report-workqueue slot. `syna_cdev_quiesce` only closes the cdev operation path; it does not synchronize this external callback. This is a high-confidence static lifetime window and a possible use of TPD global state/workqueue during teardown. Runtime manifestation was not exercised.

The audit does **not** make a TPD-only in-flight counter look sufficient: it cannot cover the interval after the notifier copies the function pointer but before the callback enters. The synchronization contract must be fixed at the notifier provider/API boundary (or moved to a callback trampoline whose code and lifetime outlive this module).

The Docker kernel source contains a separate `zte_parity.c` compatibility provider that calls callbacks under its registry mutex, plus a header with different notification offsets from those observed in the stock module/callback. Its safer locking cannot be assumed to describe the shipped stock external `.ko`, and its header cannot be used blindly for a legacy replacement.

No driver source was changed in this audit. The report records the exact stock/candidate module identities, Docker source identities, fresh assembly manifests, six stock function comparisons, and the required integration/validation gates in `review.json`.

## Reproduction artifacts

- `candidate_assembly/` — fresh current-candidate remove/IRQ/event/cdev/input function extraction.
- `stock_assembly/` and `stock_exact_comparison.json` — six stock comparisons; all passed instruction, relocation, section, and symbol-size checks.
- `panel_notifier_module_assembly/` — fresh extraction of the stock external notifier's trigger, register, and unregister functions.
- Docker kernel source volume: `nubia_sm8850_kernel_src_nx809j_oout_20261030`, commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`.

## Next engineering step

Resolve the shipped notifier provider and its legacy notification ABI. Then implement unregister as a true drain: prevent new callback selection under the registry lock, count every selected callback before releasing that lock, and wait for in-flight callbacks to finish before returning. Rebuild against the intended export surface and exercise trigger/unregister races before claiming teardown safety.
