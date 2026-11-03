# Richtap/TikTap worker teardown revalidation — 2026-11-03

## Result

`aw_remove` now synchronously drains the embedded workers at offsets `+0x628` (TikTap), `+0x648` (Richtap RTP) and `+0x668` (Richtap stop) before `devm_free_irq`. The function first blocks file access and drains active asynchronous RAM callbacks. Its later teardown cancels timers and the remaining workers, destroys the private workqueue, and retires the device state.

The disassembly from the fresh Docker build confirms all three `cancel_work_sync` calls precede `devm_free_irq`; it also confirms workqueue destruction precedes `haptic_lifetime_retire_state`. The `+0x648` and `+0x668` queue producers found in reconstructed source are ioctls `0x520a` and `0x5212`; the teardown closes and drains those file operations before worker cancellation. No producer for `+0x628` was found in the reconstructed source. These are static findings, not runtime race-freedom claims.

Two clean canonical Docker builds produced byte-identical modules at SHA-256 `7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098`, matching the promoted candidate and map. The postpromotion audit passes reproducibility, target kernel source identity and function traceability. It remains `incomplete_or_failed` only because strict undefined-symbol parity fails: stock import `gpio_free` is absent and the candidate has nine additional lifetime-support imports. The candidate remains a declared lifetime-hardened deviation, not a stock-equivalent reconstruction.

The prepromotion audit is retained as a chronological record: at that point the candidate still had the prior SHA-256 `d4aecdd65186729587fc5625efc243c9dd3c0d04b70fc61babe79af24e4722e0`, so its runtime-content and section-layout comparisons against the fresh `7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098` build were expected to differ. Its two build outputs are the same bytes promoted afterward; use `canonical_postpromotion_audit.json` for the final build comparison.

## Evidence

- `docker_llvm_objdump_fifo_workers.txt` — selected AArch64 disassembly from the fresh module.
- `prepromotion_build_audit.json` — first pair of clean builds and the prepromotion candidate comparison.
- `canonical_postpromotion_audit.json` — second pair of clean builds against the promoted candidate; reports only the unresolved undefined-symbol parity gate.
- `source_tree_sync_dry_run.json` — read-only source mirror check. It found 0 missing files and 0 content mismatches, plus 29 curated-only evidence files. No apply/removal was performed.

## Boundaries

No device was loaded and no hardware or runtime concurrency validation was performed. Independent whole-driver review remains pending; the map still records 21 `NOT_ESTABLISHED_HARDENED_DEVIATION` function mappings.
