# Richtap ioctl/IRQ mode serialization — 2026-11-03

## Finding

Stock `irq_config` registers `irq_handle` as the threaded IRQ function (primary handler is `NULL`). Stock ioctl `0x5209` stops the current playback through function-table slot `+0x38` (`aw8693x_stop`), copies 16,000 user bytes to `state+0x608`, changes RTP mode and may submit the new buffer. The stop callback is covered by the ioctl's per-device mutex at `+0x2f0`; the IRQ path uses `+0x370` in one branch and has no common device mutex in the Richtap FIFO branch. These different locks do not exclude the mode transition from a running threaded IRQ, which can also access the device over I²C.

The start helper's apparent need for IRQ service was checked against stock Ghidra: `richtap_rtp_start` polls callback `+0x160`, which resolves to `aw8693x_get_glb_state`; that callback reads register `0x3f` directly over I²C. The poll does not wait for the IRQ thread. The earlier mode-transition note that excluded `0x5209` from the IRQ lock is superseded by this current-candidate review.

## Change

The lifetime wrapper now serializes both `0x5209` and `0x520a`: it takes `haptic_richtap_stream_lock`, drains old work at `state+0x648`, then takes the shared IRQ/stop mutex before calling the stock-exact ioctl body. It releases IRQ/stop and stream locks in reverse order. `richtap_stop_work` already uses stream-then-IRQ ordering; `irq_handle` and `richtap_rtp_work` take only the shared IRQ/stop lock. The reviewed lock paths have no inversion. Teardown first closes admission and drains active file operations, then synchronizes IRQ/work before freeing state-owned resources.

The IRQ mutex remains held while command `0x5209` copies 16,000 bytes from userspace and polls RTP state. A user-page fault can extend IRQ-thread latency; this needs runtime latency/stress measurement. The target module import surface is unchanged by this patch.

## Build and candidate binding

Two independent builds used canonical Docker image `nubia-sm8850-kernel-builder:nx809j-repro` (image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`) and pinned kernel source commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. Both produced the same 6,715,688-byte module with SHA-256 `256b3aee58b7d409ee7ee0faf6d1a7b1cfb666f53fc36c6d1b9931f3fa610e0e`. The repository, Docker curated module and both cycle outputs match. Full build inputs and logs are in [docker_builds.json](docker_builds.json); current candidate disassembly is in [docker_llvm_objdump_lock_coverage.txt](docker_llvm_objdump_lock_coverage.txt).

The reconstruction map and `STATUS.md` retain `LIFETIME_HARDENED_CANDIDATE_NOT_STOCK_EQUIVALENT`, pending independent review, and whole-driver **INCOMPLETE** status. The candidate has 93 undefined imports versus 85 in stock: `gpio_free` remains stock-only and nine lifetime-support imports remain candidate-only. See [undefined_import_parity.txt](undefined_import_parity.txt).

A curated-source dry run found zero missing files and zero content mismatches; it reports preserved curated-only evidence files, so its apply mode was not used. See [curated_source_sync_dry_run.json](curated_source_sync_dry_run.json).

## Limits

This is a static synchronization hardening deviation, not proof of whole-driver equivalence. No runtime interleaving, IRQ-latency measurement, Lockdep/KCSAN run, module load or NX809J hardware validation was performed. Independent whole-driver review remains pending.
