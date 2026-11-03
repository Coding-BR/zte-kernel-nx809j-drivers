# Richtap stop-worker teardown revalidation — 2026-11-03

## Result

HAP-RICHTAP-03 is statically closed on candidate module `d4aecdd65186729587fc5625efc243c9dd3c0d04b70fc61babe79af24e4722e0` (6,700,632 bytes). The same current ELF revalidates HAP-RICHTAP-06 shared serialization between the threaded IRQ and stop worker.

## Teardown reasoning

The stock `richtap_file_unlocked_ioctl` command `0x5212` queues work at state offset `+0x668`. The worker calls `aw8693x_irq_clear`, `aw8693x_stop`, and `aw8693x_set_rtp_aei`; stock ELF analysis shows these callbacks perform I2C operations.

The candidate's `haptic_lifetime_block_file_access` sets shutdown, removes the published file entry point, deregisters the misc device, and waits for active file operations to finish. `aw_remove` now drains work `+0x668` immediately after that gate and before `devm_free_irq`. Docker disassembly confirms the `cancel_work_sync` argument is `state+0x668` and its call precedes the `devm_free_irq` relocation. The worker also checks shutdown before and after taking the shared IRQ/stop mutex. Later teardown cancels the other workers, destroys the workqueue, and only then retires state.

This closes the window where an already-running stop worker could issue I2C after IRQ release. The early gate and active-operation drain prevent the ioctl from queuing another stop worker after cancellation.

## Build and binding evidence

The canonical validator performed two clean Docker builds after promotion. Both produced the candidate hash above. The audit confirms candidate hash, runtime content, section layout, target vermagic, and reproducibility. The overall audit remains incomplete because strict undefined-symbol parity reports one missing stock import (`gpio_free`) and nine additional lifetime-support imports; the map continues to declare this as a hardening deviation. Full details are in [canonical_postpromotion_audit.json](canonical_postpromotion_audit.json). The earlier pre-promotion audit is retained in [prepromotion_build_audit.json](prepromotion_build_audit.json); it records the previous module hash and the newly built candidate.

The current candidate, source map, and canonical Docker snapshot hashes are bound in [haptic_richtap_stop_work_teardown_revalidation.json](haptic_richtap_stop_work_teardown_revalidation.json). Raw Docker disassembly is in [docker_llvm_objdump_remove_stop.txt](docker_llvm_objdump_remove_stop.txt). Stock Ghidra/assembly, the original HAP-RICHTAP-03 report, the prior HAP-RICHTAP-06 review, and source hashes are listed in the JSON attestation.

## Limits

This is static control-flow and teardown evidence. No runtime race, hardware behavior, or independent review is claimed. The full haptic driver remains incomplete and is not promoted to stock-equivalent. The full-tree curated sync checker also reports curated-only attestation files as extras; it found no source files missing or mismatched, and its deletion-capable apply mode was not used.
