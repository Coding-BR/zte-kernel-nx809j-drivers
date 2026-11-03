# Probe misc-registration teardown revalidation — 2026-11-03

## Conclusion

The suspected leak path—`misc_register` succeeds, then a partial probe returns without publishing `g_aw_haptic`, leaving `aw_remove` unable to deregister the misc device—is not reachable in the reviewed control flow. No code change is justified.

## Evidence

- Stock Ghidra and AArch64 assembly place `misc_register` at the terminal successful probe path. Its call is followed by the success return value, a store of the same state pointer to `g_aw_haptic`, and the function return. There is no recoverable branch between registration and publication.
- Candidate `aw_i2c_probe_stock_exact` keeps that order and calls `haptic_lifetime_misc_register`, which records the return status.
- When registration fails, the wrapper sees `haptic_misc_registered == false`; teardown skips `misc_deregister` because no device was registered.
- When registration succeeds, the stock body publishes `g_aw_haptic` before returning. Teardown sees both `published` and the registration flag and deregisters the device.
- The known allocation-failure partial-probe paths return before the misc registration call. During the register-to-publish interval, `haptic_probe_complete` remains false, so the file-open wrapper rejects access. The lifecycle transition mutex prevents remove from overlapping the stock probe body.

The current candidate and Docker curated module both hash to `37fc86926a32dc3bd170d3c673a9adef3bdb4b48ff90eff1bff2a80af59caeca`. The captured disassembly was produced read-only with `llvm-objdump` inside the canonical Docker builder image. Stock Ghidra, stock assembly, current candidate sources, and disassembly are hash-bound in `probe_misc_registration_revalidation.json`.

This closes only the reviewed registration/partial-probe question. No allocation-fault runtime test was performed, no code changed, and no rebuild was needed.
