# HAP-TIMER-WQ-01 revalidation — 2026-11-03

## Result

The historical finding remains correct for the stock module. The current lifetime-hardened candidate statically addresses the timer-to-work teardown race. The shutdown gate is set at the start of `aw_remove`; both timer callbacks and worker wrappers check it. The candidate cancels audio and vibrator timers, drains the associated work, repeats both timer cancellations and work drains, and only then destroys the workqueue and retires state. Candidate disassembly shows this exact sequence. The target kernel source confirms that `hrtimer_cancel` waits for an active handler and `cancel_work_sync` waits for pending or executing work to finish.

This is static evidence. No runtime or hardware reproduction was performed. The candidate was not modified or rebuilt in this revalidation.

## Candidate and audit binding

- Candidate SHA-256: `7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098`.
- The candidate hash matches the reconstruction map and both builds in the latest canonical Docker audit.
- The two existing clean builds are reproducible, and function traceability and mapping review pass.
- The canonical audit still reports `incomplete_or_failed` because strict undefined-symbol parity is false. This review does not claim stock equivalence or complete validation.

## Docker snapshot synchronization

The source sync utility ran in dry-run mode and was not applied. It found zero missing versioned files and zero content mismatches in Docker `curated/haptic_86938`. It also found 44 curated-only evidence files; those were preserved. The utility reports `passed: false` because it counts those curated-only files as remaining differences.

## Evidence files

- `timer_work_teardown_revalidation.json` binds the candidate, audit, inputs, hashes, and conclusion.
- `docker_timer_work_teardown_disassembly.txt` is `llvm-objdump -dr` output from the canonical Docker image for the current candidate.
- `docker_target_kernel_cancel_semantics.txt` records the exact target kernel commit and source excerpts for timer/work cancellation semantics.
- `source_tree_sync_dry_run.json` records the non-applied source snapshot comparison.