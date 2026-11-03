# Haptic probe-time interface publication review

## Finding

The preserved stock Ghidra output and AArch64 relocations show that `vibrator_init` registers the LED child and creates `vibrator_attribute_group` before `haptic_init` initializes timers, work items, and mutexes. The stock probe then calls `aw8693x_creat_node` through `aw8693x_func_list` slot 1 before the later RTP-buffer and FIFO-page allocations and before it publishes `g_aw_haptic`. Both groups could therefore become callable while probe state was incomplete.

## Change

The candidate now suppresses the two interface-registration calls inside `vibrator_init`, while preserving the successful fall-through so the remaining timer, work, and mutex initialization still runs. The AW node callback is gated during the stock probe. After the exact stock probe returns success, the lifecycle wrapper verifies that the client state is published and Richtap misc registration succeeded; it then registers the LED child, the generic sysfs group, and the AW-specific group. The misc `open()` wrapper stays closed until those registrations succeed.

The Joern-only `haptic_86938_fn_068_vibrator_init_semantic_model.c` now models the candidate's deferred registration sites. The original stock Ghidra output remains preserved under `offline_static/`.

Any late registration error closes the lifecycle gate and runs the serialized `aw_remove` cleanup after releasing the transition mutex. The reconstruction map marks `aw_i2c_probe`, `vibrator_init`, and `aw8693x_creat_node` as declared hardening deviations with independent review pending.

## Evidence and validation

- Stock Ghidra, assembly, and callback-table evidence are listed in `probe_interface_publication_attestation.json` with SHA-256 bindings.
- Two isolated Docker builds from fresh kernel-output copies produced the same module: SHA-256 `d2705ec78d029bd9510231c83d0e3f01da9133201d749e3e7933b0896fbae421`, 6,700,448 bytes.
- `candidate_symbols.txt` confirms the candidate retains the expected `aw_i2c_probe`, `vibrator_init`, and `aw8693x_creat_node` symbols and exposes `vibrator_attribute_group` to the wrapper.
- `candidate_kcfi_check.json` checks the emitted preambles for the changed callback-capable functions `aw_i2c_probe` and `aw8693x_creat_node`; both match the stock type IDs. This is a scoped check, not the full-module KCFI gate.
- `source_sync.json` records byte-for-byte parity between the repository source and Docker curated snapshot.
- `canonical_audit.json` remains `INCOMPLETE`: the curated audit lacks the paired stock/Ghidra run, assembly inventory, ABI/layout and microtask reports, current-stock KCFI comparison, and independent review. Hardware validation remains deferred.

The first build invocation omitted the toolchain directories from `PATH` and stopped before compiling the driver. The corrected environment is recorded in `docker_builds.json`; both clean builds then completed. No runtime or hardware result is claimed.
