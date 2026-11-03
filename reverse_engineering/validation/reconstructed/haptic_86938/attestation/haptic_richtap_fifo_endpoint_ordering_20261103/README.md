# Richtap FIFO state endpoint ordering — 2026-11-03

## Finding

A source-wide inventory found a third kernel consumer of the shared FIFO: `tiktap_work_routine`. It reads state `U`, reads the associated size/payload, and marks the node `AA` after the hardware callback. The RTP worker and `richtap_update_fifo_data` also read `U`; the FIFO reset paths publish `FF`. Stock Ghidra C and AArch64 assembly show ordinary byte loads/stores at these endpoints.

The reconstructed kernel now uses `smp_load_acquire()` for every FIFO state read in `richtap_update_fifo_data`, `richtap_rtp_work`, and `tiktap_work_routine`. It uses `smp_store_release()` for the `AA` publication, the `FF` publications in `richtap_clean_buf`, and the existing `FF` consumer/reset paths. The candidate module contains seven `LDARB` reads and twenty `STLRB` publications across those paths.

This makes ordering explicit on the kernel side. The captured HAL library remains unpaired: `write_data_to_buffer` publishes `U` with an ordinary `STRB`, while the HAL reads `AA` and `FF` with ordinary `LDRB` instructions. Therefore there is no complete release/acquire pair in either ownership direction, and the shared FIFO contract remains unproven. This is a mitigation, not a proof that the cross-boundary race is closed.

## Stock comparison and mapping status

The stock references are the repaired Ghidra decompilations and preserved assembly for `richtap_clean_buf`, `richtap_update_fifo_data`, `richtap_rtp_work`, and `tiktap_work_routine`. Their exact paths and SHA-256 values are recorded in `fifo_endpoint_ordering.json`.

Changing `richtap_clean_buf` from ordinary `STRB` to release stores changes its emitted instructions. Its map row was downgraded from `PROMOTED_OFFLINE_EXACT` to `reviewed` with `NOT_ESTABLISHED_HARDENED_DEVIATION`. The two FIFO mappings remain `candidate_under_static_validation`; `tiktap_work_routine` remains a declared hardening deviation. The map has 160 rows: 135 offline exact, 23 reviewed deviations, and two pending static validation. Independent review is still pending.

## Docker validation

The lifetime header, lifetime implementation, and Richtap RTP worker were synchronized to the canonical `engenharia/curated/haptic_86938` snapshot. The broad sync script's dry run reported zero missing or mismatched files and 116 curated-only evidence files. I did not apply that broad sync because it would remove those evidence files; only the scoped source files were copied for compilation.

Two isolated builds used the canonical NX809J Docker image and target kernel commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. Both produced the same module SHA-256 `8e09dd59643b97bd191db117acea5ed972e4ef03169ab7ca905ee6d171031ca7` (6,711,648 bytes). The current candidate disassembly confirms the `LDARB`/`STLRB` instructions and the ioctl-to-worker IRQ gate. BTF generation was skipped because `vmlinux` was unavailable. The candidate has 93 undefined imports; strict parity with stock remains unresolved.

## Remaining risks

The producer library and kernel are still not synchronized by a matched release/acquire protocol. The ioctl-to-worker handoff gap found in candidate `594c7a2b` is statically closed in candidate `8e09dd59`: ioctl `0x520a` sets an arming gate before the stock-exact ioctl, the threaded IRQ waits without the mutex and rechecks under it, and the worker clears the gate on success and failure paths. Shutdown wakes the IRQ waitqueue. This fix has not been exercised on the candidate at runtime.

The threaded IRQ latency concern also remains: the worker takes the global IRQ-stop mutex at VMA `0x85cc`, calls `richtap_rtp_start` at `0x878c`, and releases it at `0x8950`. The timeout path still requests about 602.5–752.6 ms of sleeps, plus I2C and scheduling time. This is a static latency risk, not a reproduced IRQ stall.

A user-authorized standard one-shot and a short Android prebaked tick were tested with a simpleperf uprobe at the writer body; both produced zero samples. The Game3D diagnostic activity was not exported, so Android denied shell launch and it was not used. The candidate was not installed and no runtime race or hardware-equivalence result is claimed. The goal remains incomplete pending HAL-side ordering evidence or repair, the remaining worker review, independent review, strict ABI/import resolution, and candidate runtime/hardware validation.

## Evidence files

- `fifo_endpoint_ordering.json`: candidate, stock, HAL, source, map, and limitation identities.
- `candidate_fifo_endpoint_disassembly.txt`: the four state endpoint functions.
- `candidate_lifetime_lock_fifo_disassembly.txt`: FIFO and current worker/IRQ lock disassembly.
- `docker_builds.json`: two canonical builds and input/output identities.
- `prebuild_input_manifest.json`: exact 311-file build input snapshot.
- `docker_build_cycle_1.log` and `docker_build_cycle_2.log`: complete build logs.
- `ioctl_irq_handoff_revalidation.json`: stock/candidate order analysis and static race closure.
- `candidate_ioctl_irq_handoff_disassembly.txt`: current candidate IRQ wait, ioctl gate, and worker completion disassembly with relocations.
- `prebaked_writer_call_test.txt`: user-authorized device test and cleanup record.
- `source_curated_parity_dry_run_pre_evidence_sync.json`: scoped sync inventory before evidence files were added.

## Curated snapshot manifest

postbuild_curated_snapshot_manifest.json records SHA-256 and byte size for every file in the final Docker curated snapshot, including the rebuilt module and this attestation. The manifest is also copied into the snapshot; it excludes only its own path to avoid a self-referential hash.

## Fresh live ADB confirmation

A read-only recheck on 2026-11-03 found the active `vendor.qti.hardware.vibrator.service` mapping both `/vendor/lib64/libaacvibrator.so` and the writable shared `/dev/awinic_haptic` region of 16 KiB. The on-device HAL hash matches the exact DSO analyzed for `write_data_to_buffer`; the installed module file hash matches stock. This identifies the real HAL producer path needed for the FIFO handoff review. It does not prove that `write_data_to_buffer` executed during the read-only probe. PID and ASLR addresses are omitted. Details are in `device_probe_current_recheck.txt`.

## Live function-call test

A simpleperf uprobe was armed at file offset `0x1c198` in the exact DSO currently mapped by the vibrator service. During a 20.0051-second capture, a standard `vibrator_manager` one-shot request completed with zero writer samples and zero lost samples. This confirms that the generic one-shot test did not enter `write_data_to_buffer`; it does not disprove the statically reachable Richtap/TikTap producer path. The precise command, event registration, scope, and cleanup are in `live_writer_call_test.txt`. A path-specific dynamic-stream invocation remains untraced.
## Historical worker lock review — candidate 594C7A2B

`current_worker_lock_review.json` is bound to candidate `594c7a2b`. It correctly records the worker's internal lock interval and IRQ latency, but its original conclusion did not account for the queue/unlock-to-worker-acquire handoff. The conditional gap and its static closure in the current candidate are recorded in `ioctl_irq_handoff_revalidation.json`.

The repository and canonical Docker module now match candidate `8e09dd59643b97bd191db117acea5ed972e4ef03169ab7ca905ee6d171031ca7`, 6,711,648 bytes. This is static validation; IRQ latency, Lockdep, candidate runtime, and independent review remain pending.

## Current static revalidation — ioctl-to-worker threaded IRQ handoff

Stock Ghidra evidence shows ioctl `0x520a` clears/stops the device, selects RTP mode, sets the loop flag to zero, and queues `richtap_rtp_work` at state `+0x648`. The stock IRQ handler has a legacy RTP branch that can consume `aw_rtp` when IRQ status is clear, state byte `+0x5` is one, and mode is two. The wrapper's old global mutex ended when the ioctl returned; it did not guarantee that the queued worker would acquire the mutex before a pending IRQ thread. This was a conditional static race, not a runtime reproduction.

Candidate `8e09dd59` sets `haptic_richtap_arming` under the global mutex before the stock ioctl queues work. The threaded IRQ waits on a waitqueue without holding the mutex, then rechecks the arming flag after acquiring it. The Richtap worker clears the gate after setup or after error cleanup; remove sets shutdown and wakes waiters, while probe resets the gate. Two isolated canonical Docker builds match byte-for-byte at SHA-256 `8e09dd59643b97bd191db117acea5ed972e4ef03169ab7ca905ee6d171031ca7`.

On the stock phone, a user-authorized prebaked tick was captured with the HAL writer uprobe armed; it produced zero samples, so it did not exercise the shared FIFO producer. A TikTap/Richtap-specific event remains untraced, and candidate runtime behavior remains unverified.
