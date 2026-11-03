# haptic_86938 probe/remove transition serialization — 2026-11-03

## Finding

The lifetime hardening uses a singleton `haptic_shutdown` gate and singleton `g_aw_haptic`. `aw_remove` closes file admission and clears `g_aw_haptic` before a multi-stage drain of asynchronous firmware work, IRQ, timers, and queued work. `aw_i2c_probe` can set the same global shutdown gate back to active before its stock probe returns. If another matching device probes while the earlier device is in its remove callback, the old callbacks can observe the re-enabled global gate and attempt to rearm/requeue against the old state.

This is a concurrency risk in the hardening wrapper, not a stock-equivalence claim. It is tied to stock identities `aw_i2c_probe@001073c0` and `aw_remove@0010823c`; their Ghidra decompilation and preserved stock assembly are referenced by the function map.

## Change

A module-wide transition mutex now covers the entire stock probe call and the complete remove teardown. The remove wrapper acquires it before reading client data and releases it after all manual draining/resource retirement. Probe cannot reset the singleton shutdown gate until the preceding remove has finished. The stock helper bodies remain byte-preserved; their wrapper behavior remains a declared hardening deviation.

## Build binding

- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Previous candidate SHA-256: `7bb5ac661c2807e5ebc15c1efce91d5a978b04d22edd5eee11c5e52ea971348b`.
- Candidate after transition serialization: `6d5b7e9d5b108668a58f51b93be3350ea5116d8f5034d6cd3ac215490d8a14f6` (6,692,928 bytes).
- Kernel source commit: `3356b35306d35d5a480e3b63df1a9f065b5d9f55`; expected release `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`.
- The canonical Docker pre-bind produced two identical modules and matched kernel identity; its report is `docker/prebind.json` (it still compared the preceding candidate). After rebinding candidate and map, the final audit `docker/final_audit.json` confirms byte-identical builds, candidate runtime content and section layout, kernel identity, vermagic, and map review. Its sole error is strict stock import parity: the same nine lifetime-hardening imports recorded in the prior batch. The first final-cycle module is preserved at `docker/build_cycle_1/haptic_86938.ko`; the repository candidate is the matching second-cycle module.

## Limits

This is static synchronization hardening. Runtime unbind/reprobe stress, lockdep, KCSAN, target hardware behavior, and an independent review remain open. The haptic driver is still incomplete and the new wrappers are not stock-equivalent. The strict import-parity audit may flag lifetime-only imports; see the final report for the exact result.
