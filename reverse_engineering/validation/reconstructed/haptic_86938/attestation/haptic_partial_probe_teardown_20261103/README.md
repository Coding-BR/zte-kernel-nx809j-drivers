# Partial probe teardown hardening

## Finding

The stock `aw_i2c_probe` can return success before it sets `g_aw_haptic`: workqueue allocation can fail, or the RTP buffer/pages allocation path can stop early. The later `aw_remove` used to assume every resource had been initialized. On those paths it could deregister a misc device that was never registered, cancel uninitialized delayed/Richtap work, free the already-freed RTP buffer, and call `devm_free_irq` a second time. The stock probe and remove also called `gpio_free` directly for GPIOs acquired with `devm_gpio_request_one`.

The source basis is the preserved Ghidra decompilation and assembly for `aw_i2c_probe` and `irq_config`, together with the read-only NX809J Docker kernel source. In that kernel, devm GPIO release calls `gpio_free` during device resource cleanup. `misc_deregister` assumes a successful registration and reaches `list_del` after checking only `list_empty`; a static zero list is not a valid initialized list head.

## Changes

- The exact probe assembly now calls a small registration wrapper. The wrapper records whether `misc_register` actually succeeded; teardown calls `misc_deregister` only for the published state with a recorded successful registration.
- The probe allocation cleanup no longer calls `gpio_free`; it leaves both managed GPIO actions for devres. `aw_remove` likewise does not manually free those GPIOs.
- Probe-side IRQ cleanup checks the `irq_config` skip bit at state `+0x15`. Remove frees an IRQ only when registration was requested and the probe's allocation-failure path has not already released it.
- RAM delayed work is canceled only when the private workqueue was created (the probe calls `ram_work_init` only on that path). Richtap work at `+0x628`, `+0x648`, and `+0x668` is canceled only after full publication.
- The `+0x608` RTP buffer is freed during remove only after full publication, avoiding a second free when pages allocation failed after the probe had already freed it.
- The lifetime wrapper tracks an unpublished partial state until remove, preventing a second device from taking the singleton while that state remains bound.

These are declared hardening deviations from the stock function bodies; no stock-equivalence claim is made for the modified probe/remove paths.

## Build and audit

Two clean builds using the canonical NX809J Docker image and source/toolchain volumes produced byte-identical modules: SHA-256 `116f401d4f5d708f93d4c9cce26f516d1e0c0ac4a37c44aace2b0d6d453da051` (6,694,976 bytes). The 192 compile inputs were hash-identical across the repository source, curated snapshot, and both build-cycle copies. Details are in [docker_builds.json](docker_builds.json) and [source_sync.json](source_sync.json).

The module ABI audit confirms AArch64 relocatable format, matching metadata/exports/dependencies, matching target vermagic, and 93 target symbol CRC entries with no CRC mismatch or missing CRC. Strict import parity remains false by design: the candidate drops the stock `gpio_free` import and has nine additional lifecycle imports. See [module_abi_audit.json](module_abi_audit.json).

The canonical offline reconstruction audit remains `INCOMPLETE` (1/10 gates). The auditor accepts promoted offline-exact mappings only when the review disposition and independent review are both `PASS`. In this run, the map gate is held `INCOMPLETE` because no Ghidra function inventory/run is available, so map coverage cannot be evaluated; it no longer reports a false `activate_aw_show` review failure. Other missing evidence includes paired stock/Ghidra and engineering runs, an assembly manifest, ABI/layout and microtask reports, current-stock KCFI comparisons, a current double-clean build audit and parity report, and independent review. The haptic reconstruction remains incomplete.

## Limits

The probe still inherits stock's success return for partial initialization. This change makes later teardown resource-aware and prevents a second singleton probe, but it does not establish runtime behavior while a degraded device remains bound. No hardware test, unbind/reprobe stress, lockdep, KCSAN, or independent review was performed.