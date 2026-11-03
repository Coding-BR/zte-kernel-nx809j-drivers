# RAM firmware callback revalidation — current candidate, 2026-11-03

## Result

The previously reviewed HAP-FW-01 callback lifetime path remains statically addressed in the current candidate `37fc86926a32dc3bd170d3c673a9adef3bdb4b48ff90eff1bff2a80af59caeca`. Runtime callback timing, allocation-fault injection, unbind races, and hardware behavior remain untested.

## Current-candidate evidence

- Stock Ghidra/assembly identifies the RAM delayed-work path and `ram_update_store` as request origins. The candidate routes requests through `haptic_lifetime_request_ram_firmware`.
- The helper checks shutdown, allocates request context, increments the outstanding-callback counter before submitting `request_firmware_nowait(THIS_MODULE, ...)`, and rolls back the counter/context for shutdown or synchronous submission failure.
- The pinned target firmware loader schedules work only after setup succeeds. Its worker invokes the callback, then drops the device and module references. The callback is therefore not invoked on the pre-schedule error returns shown in the target source.
- The completion callback serializes RAM loads. If shutdown has started, it calls `release_firmware` and skips `ram_load`; otherwise it calls `ram_load`. It frees its request and decrements/wakes the callback counter only after that work finishes.
- The pinned target `release_firmware` checks `if (fw)` before dereferencing, so the callback's shutdown path is safe when a failed request supplied `NULL`.
- Current candidate disassembly shows `aw_remove` canceling delayed RAM work, waiting for the tracked callback count, canceling delayed work again, then draining other work and retiring state.

The current repository module and Docker curated module have identical SHA-256. Candidate disassembly and target source excerpts were captured read-only in the canonical Docker environment. Source and binary hashes are recorded in `ram_firmware_current_candidate_revalidation.json`.

This revalidation is limited to the RAM firmware callback/state lifetime path. No code changed, no rebuild was needed, and no runtime or NX809J hardware result is claimed.
