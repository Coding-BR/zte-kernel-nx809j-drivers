# Haptic lifecycle risk revalidation — current candidate 53EE12EE

## Scope and result

This static review rebinds the timer inventory, probe/misc registration path, and asynchronous RAM firmware callback lifetime to candidate `53ee12ee85c0d39eb05515e81b7eff5abe14af4480a4b7376ddbebc902427bb3` and reconstruction map `7aec144f3dd5440745d52f448236a3842727c1bfe2b03a68efde0c5d67dc4f4b`. Both match the external Docker curated snapshot.

- **Timers:** Stock Ghidra shows three `hrtimer_start_range_ns` callsites using two initialized timers: vibrator at state `+0x330` and audio at `+0x520`. Current ELF disassembly binds those initializers and callsites to the candidate. Both callbacks gate on shutdown. `aw_remove` cancels both timers twice and drains their associated work between passes; LED child unregister removes the `haptic_audio_store` producer first.
- **Misc registration:** The current candidate’s `aw_i2c_probe` wrapper holds the lifecycle transition lock around the stock-exact body. In the current ELF, `haptic_lifetime_misc_register` is followed directly by publication of `g_aw_haptic`; there is no recoverable branch between those operations. The helper records registration success, probe completion blocks early opens, and cleanup deregisters only when registration succeeded and state was published.
- **RAM firmware callback:** The current request path increments its callback count before `request_firmware_nowait`, passes `__this_module`, and rolls back the count on shutdown or synchronous submission failure. The callback releases firmware after shutdown or calls `ram_load` while active, then decrements and wakes the drain. `aw_remove` cancels delayed work, drains callbacks, cancels delayed work again, then destroys the queue and retires state. The pinned firmware loader calls the completion callback before `put_device` and `module_put`; its `release_firmware` path accepts NULL.

The initial RAM worker’s probe-publication guard is covered by the separate [current probe-guard revalidation](../haptic_ram_work_probe_guard_revalidation_20261103/README.md). This report replaces the older timer, callback, and probe/misc reports as the current-candidate reference; those earlier reports remain bound to `37fc8692…`.

## Evidence and limits

The JSON binds candidate/module/map hashes, current source hashes, stock Ghidra/assembly hashes, current ELF disassembly, and the pinned target firmware-loader source hash. The Docker mounts used for inspection were read-only. No source changed, so no rebuild was needed; the candidate is already covered by two byte-identical canonical Docker builds.

No allocation-fault injection, timer runtime stress, Lockdep, KCSAN, module unload, or NX809J hardware validation was run. Full C-level semantic equivalence and independent whole-driver review remain open; no runtime failure is asserted. The driver remains **INCOMPLETE**.
