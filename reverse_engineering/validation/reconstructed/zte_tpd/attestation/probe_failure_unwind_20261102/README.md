# zte_tpd probe and teardown hardening

This batch prevents the synthetic uevent platform device from recursively entering the hardware probe, unwinds resources on workqueue allocation failure, and releases the child on normal remove. The callback rejects only the stored child pointer, preserving the public device name `zte_touch` and other matched probe devices.

- Canonical Docker build: 2 independent cycles passed with identical SHA-256 `e24bd3c53d8f4010055874faaa02de0d2a3e8cf7d7820d48e46794d0e4a9b75e` (7083488 bytes).
- Vermagic: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k SMP preempt mod_unload modversions aarch64`. Build diagnostics: none.
- KCFI: four affected stock functions passed type-ID and section checks; hardened symbol sizes were not gating. Stock `zte_touch_deinit` has no valid KCFI preamble and is excluded.
- Failure and normal teardown now clear procfs/sysfs, UFP publication, child-device ownership, parent drvdata and the global cdev pointer in safe order.
- Runtime/module-load and NX809J hardware validation were not performed. See `probe_failure_review.json` and `design_iterations.json` for details and hashes; the latter summarizes the API compatibility iterations without carrying their full build reports.
