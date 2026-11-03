# Hrtimer inventory revalidation — current candidate, 2026-11-03

## Result

The three `hrtimer_start_range_ns` callsites in stock map to two initialized timers. There is no third timer missing from remove-time cancellation.

| Timer | Initialization | Start/rearm sites | Remove cancellation |
|---|---|---|---|
| Vibrator | `vibrator_init`, `state+0x330`, callback `vibrator_timer_func` | `vibrator_work_routine` starts `state+0x330` | `aw_remove` cancels `+0x330` twice |
| Audio | `haptic_init`, `state+0x520`, callback `audio_timer_func` | `haptic_audio_store` initially starts `+0x520`; `audio_timer_func` rearms the same timer | `aw_remove` cancels `+0x520` twice |

The current candidate's two timer callbacks check the shutdown gate and return `HRTIMER_NORESTART`. The `vibrator_work_routine` wrapper also checks shutdown. `aw_remove` drains work at `+0x560`, `+0x3a0`, and `+0x428` between its two timer-cancellation passes. `haptic_audio_store` belongs to the LED-child sysfs surface, which teardown unregisters and drains before timer cleanup.

The current repository and Docker curated modules both hash to `37fc86926a32dc3bd170d3c673a9adef3bdb4b48ff90eff1bff2a80af59caeca`. The Docker disassembly covers the current candidate callbacks and teardown; stock Ghidra and assembly identities and target timer/work cancellation source hashes are recorded in `timer_inventory_current_candidate_revalidation.json`.

This closes only the apparent three-start/two-cancel inventory mismatch. It is static evidence; runtime timer scheduling and hardware behavior remain unverified. No source changed and no rebuild was needed.
