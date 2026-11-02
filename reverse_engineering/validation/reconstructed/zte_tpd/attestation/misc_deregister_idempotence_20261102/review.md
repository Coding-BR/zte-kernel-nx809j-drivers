# Miscdevice deregistration idempotence — 2026-11-02

Baseline: `c7fc3a477e65c855837706a0dc3ffd2020b6339f`.

The teardown called `syna_input_agent_deregister_misc` from both `syna_cdev_remove` and `syna_cdev_clear_global_data`. The old helper used `misc->this_device` as its registration guard, but Android Common 6.12 does not clear that pointer in `misc_deregister`. Its second call detects the empty list, emits `WARN_ON`, and returns. The behavior is visible in the [Android Common 6.12 `misc.c`](https://android.googlesource.com/kernel/common/+/1641684528815bb7e85737d5d2bceb551c55d5a8/drivers/char/misc.c).

The helper now serializes deregistration, rejects NULL/error pointers, and clears `this_device` after the first call. No stock function body or reconstruction-map entry changed.

The canonical Docker snapshot synced one source file. Two independent builds passed for `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`; both produced a 6,551,640-byte module with SHA-256 `b051f938b0507effc693c6098aa69a97cf4136d4a7dbc0c463c9aac32203c803`, matching vermagic and no diagnostics. Full build and sync records are in the adjacent JSON files.

No kernel runtime, unbind/rebind, or hardware test was run.
