# Richtap FIFO reset serialization — 2026-11-03

## Finding

The stock `0x520a` ioctl cleans and resets the Richtap FIFO state, including nodes and data associated with `state+0x608` through `state+0x620`, and updates the active flag at `state+0x6bc`. While Richtap is active (`state+0x6bc == 1`), the threaded IRQ path calls `richtap_update_fifo_data`; that helper mutates the FIFO cursor (`+0x620`), count (`+0x6b8`) and data buffer (`+0x608`). The IRQ branch does not take the per-device ioctl mutex at `+0x2f0`. A reset could therefore overlap FIFO service; an already-running RTP work item at `+0x648` could also retain the old FIFO state during cleanup.

The stock Ghidra decompilations are retained under `../../offline_static/ghidra_stock/haptic_86938.ko/decompiled/`. Their paths and SHA-256 values are recorded in `richtap_ioctl_fifo_reset_serialization.json`.

## Correction

For command `0x520a`, the candidate now:

1. Takes `haptic_richtap_reset_lock` to serialize concurrent reset ioctls.
2. Calls `cancel_work_sync(state+0x648)` before taking the shared IRQ/stop mutex, draining an old RTP worker without waiting while holding that mutex.
3. Takes `haptic_lifetime_irq_stop_lock()`, shared with the candidate IRQ and stop-worker paths, so active FIFO IRQ service cannot overlap `richtap_clean_buf`.
4. Runs the stock-exact ioctl body, then releases the shared mutex and reset mutex.

The lock order avoids waiting for `+0x648` while holding the IRQ/stop mutex. The open-file lifetime reference remains held for the whole operation, so removal waits for this ioctl to finish before retiring device state.

## Build and artifact identity

Two fresh Docker output volumes were built independently with the canonical `nubia-sm8850-kernel-builder:latest` image and the pinned kernel source commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. The logs and per-cycle environment/output identities are in `docker_build_cycle_1.log`, `docker_build_cycle_2.log`, and `docker_builds.json`. Both builds exited successfully and produced identical 6,701,296-byte modules with SHA-256 `d9672b3b9200d6369b3f9a2599ef3f3e381da95c7def8f4728e6df16a78d9f8a`.

The candidate disassembly in `docker_candidate_ioctl_disassembly.txt` shows the `+0x648` cancellation before acquisition of the shared IRQ/stop mutex, the stock-exact ioctl call while that mutex is held, and both unlocks before the file-lifetime reference is exited. `source_sync.json` binds repository and Docker curated source, module, map and status identities.

## Scope and limits

This is a static concurrency correction backed by two reproducible module builds and candidate disassembly. No runtime kernel concurrency test, device load, or NX809J hardware validation was performed. Whole-driver semantic equivalence, strict stock import parity, independent whole-driver review and hardware behavior remain open. The module remains a lifetime-hardened candidate and is not declared stock-equivalent or complete.