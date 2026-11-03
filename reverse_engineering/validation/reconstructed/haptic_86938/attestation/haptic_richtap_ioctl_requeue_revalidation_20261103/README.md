# HAP-RICHTAP-05 revalidation — 2026-11-03

## Result

The historical finding remains correct for the stock module: ioctl `0x520a` queues `richtap_rtp_work` at state `+0x648`, and stock `aw_remove` cancels that work before freeing the RTP buffer and FIFO pages. The stock Ghidra decompilations and assembly exports for probe, remove, ioctl, and RTP worker still match the exact hashes in the historical review.

The current hardened candidate statically addresses that path. `haptic_lifetime_block_file_access` closes admission by setting shutdown and marking the lifetime as dying. It deregisters the misc device and waits for `active_ops` to reach zero. The ioctl wrapper increments that count before calling the stock-exact ioctl body and decrements it after return. `aw_remove` calls this gate before `cancel_work_sync(+0x648)`, then frees the RTP buffer at `+0x608` and retires the state/pages afterward. The current RTP worker also checks the shutdown gate before accessing its state.

The exact target kernel source shows that `misc_open` holds `misc_mtx` while it invokes the file's `.open` callback, and `misc_deregister` takes the same mutex. This serializes deregistration with an in-flight open callback. It does **not** close already-open descriptors; their ioctl calls are rejected after the lifetime becomes dying, and any ioctl already admitted is counted and drained before the worker cancellation.

## Candidate and validation

- Current candidate SHA-256: `7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098`.
- The hash matches the current reconstruction map and both clean builds in the latest canonical Docker audit.
- The candidate was not modified or rebuilt for this evidence-only review.
- No runtime interleaving or hardware test was performed. The whole-driver audit remains incomplete because strict undefined-symbol parity is still false.

## Evidence files

- `richtap_ioctl_requeue_revalidation.json` binds the stock evidence hashes, current candidate, source files, call sites, and target kernel.
- `docker_richtap_ioctl_lifetime_disassembly.txt` is read-only `llvm-objdump -dr` output from the canonical Docker image and current candidate.
- `docker_target_kernel_misc_open_deregister.txt` and `docker_target_kernel_cancel_work_sync.txt` preserve exact target-kernel source excerpts.
- `source_tree_sync_dry_run.json` records the non-applied Docker curated source comparison.