# zte_tpd platform-device unregister hardening

The stock `zte_touch_pdev_unregister` has an inverted NULL check: a valid child is skipped, while a NULL slot reaches an invalid unregister path. The C implementation now checks ownership, clears the child slot and event callback, then unregisters the valid unbound child. Probe-failure and normal-deinit cleanup share this function.

- Canonical Docker build: 2 independent cycles passed with identical module SHA-256 `01712936adeb6d2e93328c63a1b0a1a233a06f075959def2cfab3ce6668d36d2` (7160424 bytes).
- Vermagic: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k SMP preempt mod_unload modversions aarch64`. Diagnostics: none.
- KCFI: five comparable affected functions passed type-ID and section checks; symbol sizes were non-gating. `zte_touch_deinit` lacks a valid stock KCFI preamble and is excluded.
- Runtime/module-load and NX809J hardware teardown were not performed. See `pdev_unregister_review.json` for the control-flow rationale and hashes.
