# Richtap RTP mode buffer serialization — 2026-11-03

## Finding from stock Ghidra and assembly

Stock ioctl `0x5209` copies a 16,000-byte user buffer into `state+0x608`, then starts RTP playback. Stock `richtap_rtp_work`, queued by ioctl `0x520a` at `state+0x648`, also writes playback data into `state+0x608` while consuming the linked FIFO at `state+0x620`. The `+0x2f0` mutex in `0x5209` protects only short chip callbacks and does not cover the copy or the complete work operation. The lifetime `active_ops` count protects device teardown but does not serialize two live ioctl bodies. Concurrent `0x5209` and `0x520a` requests, or concurrent `0x5209` requests, could therefore overwrite a buffer while another path uses it.

The stock Ghidra source and assembly paths are listed with SHA-256 values in `richtap_mode_buffer_serialization.json`.

## Correction

The candidate now uses `haptic_richtap_stream_lock` for both `0x5209` and `0x520a`. After acquiring it, the wrapper calls `cancel_work_sync(state+0x648)` before invoking the stock-exact ioctl body. This drains an old worker before either command reuses `state+0x608`, and serializes concurrent requests to those two commands. The `0x520a` path still acquires the shared IRQ/stop mutex only after the worker drain and holds it through the reset body. The `0x5209` path does not hold that IRQ mutex across `richtap_rtp_start`, which polls chip state and must remain able to receive IRQ service.

The per-file lifetime reference remains held through the operation. Remove waits for active operations before destroying the workqueue or retiring device state.

## Build identity and repeatability

Two independent Docker builds used the canonical `nubia-sm8850-kernel-builder:latest` image, kernel source commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, matching target configuration hashes, separate output volumes, and separate host source copies mounted at the same container path. Both produced the same 6,714,200-byte module with SHA-256 `a5b75d70578d3482c06e58937d8b6c8332e60d09c24c9a5469440d2f8354b9d7`.

An initial pair used different in-container source paths and produced different complete-file hashes because those paths appeared in DWARF strings; `.text` and `.data` were identical. Those discarded logs and hashes are retained in `docker_builds.json`. The final pair uses the same virtual source path and is byte-identical. Candidate disassembly is in `docker_candidate_ioctl_disassembly.txt`.

The new candidate has the same 93 undefined imports and target vermagic as the immediately prior candidate. Strict stock import parity remains false, as recorded in the prior ABI audit.

## Scope and limits

This static correction addresses the `0x5209`/`0x520a` overlap with the `+0x648` worker and concurrent buffer-mode ioctls. It does not establish runtime race freedom, complete driver equivalence, or NX809J hardware behavior. No runtime concurrency test or hardware load was performed; the driver remains incomplete.