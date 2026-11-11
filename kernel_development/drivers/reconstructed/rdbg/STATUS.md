# rdbg - lifetime-hardened offline candidate; validation incomplete

Status: HARDENED_CANDIDATE_OFFLINE. Runtime and hardware validation remain incomplete.

## Latest unpromoted source build: input IRQ and open-file lifecycle - 2026-11-11

- The source now validates the device minor before indexing, snapshots an initialized input IRQ, serializes open/release/input-remove with a lifecycle mutex, wakes blocked readers during input-device removal, and frees the IRQ exactly once. The open file remains offline until release after unbind; a later open can use the rebound IRQ.
- Two clean canonical Docker builds produced the same fresh module SHA-256 `ea8df043f38c9eaca65d86907099ead0f94054f59b9fda6c1cb16aaf3047b406` (880,912 bytes). The repository and Docker curated module remain at the last promoted SHA-256 `30a548c904a8cb8e6ea53966c427a9276a4727b8958017cf9e86a854342d23a5` (797,936 bytes); the fresh build was not promoted.
- Strict Joern source gate passed with zero parser problems and no blockers. Mapped KCFI IDs match 8/8 functions. Assembly comparison is exact for `on_interrupt_from`; the other 7 functions differ as declared hardening deviations.
- The full validator remains `incomplete_or_failed`: the curated module does not contain the fresh source build, strict undefined-symbol parity differs (including the new `complete_all` import), and independent review for seven existing hardening mappings is still pending. No map or module promotion was made.
- This is offline static evidence only. No module load, device unbind/rebind, phone test, or hardware validation was performed. Reconstruction and runtime validation remain incomplete.
- Batch evidence: `reverse_engineering/validation/reconstructed/rdbg/attestation/rdbg_input_irq_remove_lifecycle_20261111/README.md`.

## Last promoted offline candidate: SMEM provider device-link lifetime - 2026-11-11

- Candidate module SHA-256: `30a548c904a8cb8e6ea53966c427a9276a4727b8958017cf9e86a854342d23a5` (797,936 bytes). Two clean canonical Docker builds match byte-for-byte using target `clang-r536225`.
- `rdbg_probe` creates a managed device link to the qcom_smp2p provider before `qcom_smem_state_get()`. `rdbg_init` registers a new `.remove` callback that clears and puts the output state handle under `rdbg_smem_state_lock` before provider removal.
- Core protocol: Docker reproducibility, input/map identity, Joern scope/slice, and KCFI passed. Relocation-aware assembly failed. Fresh Ghidra normalized-C and P-Code comparisons were not run because this job had no candidate export; the report’s false fields mean not measured. No promotion or stock-equivalence claim is made.
- Final validator confirms the fresh candidate matches the curated module byte-for-byte; stock/Ghidra identity, target kernel identity, module metadata, and traceability pass. Overall status is still incomplete because independent review for seven hardening deviations is pending and strict undefined-symbol parity differs. Report: `reverse_engineering/validation/reconstructed/rdbg/attestation/rdbg_state_provider_devlink_20261111/docker_validation_final_public_evidence.json`.
- Pinned-kernel source evidence confirms `qcom,smem-states` is not covered by `of_supplier_bindings[]`, and supplier unbind waits for active managed-link consumers to unbind before provider removal.
- At this earlier promoted checkpoint, input IRQ and open-file lifetime across unbind were still open. A later unpromoted source build addresses those paths statically; runtime rebind/failure-injection, phone validation, and independent review remain open. Overall status remains `HARDENED_CANDIDATE_OFFLINE`; the complete reconstruction is not verified.
- Full batch record: `reverse_engineering/validation/reconstructed/rdbg/attestation/rdbg_state_provider_devlink_20261111/README.md`.

## Previous candidate: SMEM error-pointer handling in open - 2026-11-11 (SHA 3090b8ef...)

- Candidate module SHA-256: 3090b8ef5015294ddafdb9ffea6fdfd7c67444ab42fe11b67d66bdefbf4f3b30 (790,056 bytes). Two clean final builds in the canonical Docker environment produced identical bytes and matched the curated candidate.
- Stock Ghidra and assembly show `rdbg_open` only falls back from common to device-specific SMEM for `-ENOENT`, then checks `NULL` without rejecting a remaining `ERR_PTR`.
- The pinned target `qcom_smem_get()` returns `ERR_PTR(-EPROBE_DEFER)` when SMEM is not ready and `ERR_PTR(-EINVAL)` for an invalid item. The candidate now validates both lookup results, returns `PTR_ERR()` on error, and publishes `smem_addr` only after validation. This is a declared hardening deviation.
- The map covers all 8 stock functions: 1 is `PROMOTED_OFFLINE_EXACT`; 7 are `candidate_hardening_deviation`, with independent review still pending. Strict assembly is exact for `on_interrupt_from`; the other 7 function bodies differ by declared hardening.
- KCFI matches 8/8. Target CRCs, target vermagic, module metadata, aliases, dependency set, and exports match. Strict import parity remains incomplete by exactly `free_irq`, `platform_driver_unregister`, and `qcom_smem_state_put`.
- Overall validator status remains `incomplete_or_failed` because strict imports and the independent mapping-review gate remain unresolved; traceability passed, but `static_verified` and `hardware_verified` are false. The 2026-11-02 mapping review covers a different pre-hardening candidate and cannot attest this candidate.
- No attached ADB device; no module-load, unbind/rebind, phone hardware, or host-harness test was run. The per-device `.remove` callback is still absent. Evidence: [`rdbg_open_smem_errorptr_20261111`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/rdbg_open_smem_errorptr_20261111/).

## Previous candidate: input IRQ identity snapshot - 2026-11-11 (SHA 468b8d09...)

- Candidate module SHA-256: 468b8d09e6f269d57571551fe4c5764d0799cee804347f0e2be2cbf7d58f8981 (789,728 bytes). Two clean builds in the canonical Docker environment produced identical bytes; the final validator report is linked below.
- `rdbg_probe` publishes `in.irq_base_id` under `rdbg_input_irq_lock`. `rdbg_open` snapshots that value under the same lock, then uses the per-open `requested_irq` for `request_threaded_irq`; open-failure cleanup and `rdbg_release` free that same IRQ snapshot. This addresses cleanup accidentally observing a newer IRQ value after a later probe update.
- The reconstruction map covers all 8 stock functions: 1 remains `PROMOTED_OFFLINE_EXACT`; 7 are explicitly declared `candidate_hardening_deviation` mappings; their independent review is pending. The strict assembly comparison is exact for `on_interrupt_from` and reports declared instruction/relocation/size deviations for the other 7.
- KCFI type IDs match for 8/8 functions. Target vermagic, module metadata, aliases, dependency set, exports, and all target CRC checks pass. Strict stock import parity remains incomplete by exactly three candidate-only imports: `free_irq`, `platform_driver_unregister`, and `qcom_smem_state_put`.
- The repository candidate, source files, map, status, and canonical Docker curated snapshot match. Docker kernel source commit: `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. Evidence: [`rdbg_input_irq_snapshot_20261111`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/rdbg_input_irq_snapshot_20261111/).
- This is static hardening evidence only. The driver still has no per-device `.remove` callback; IRQ behavior across unbind/rebind, open-file behavior, module load, and hardware operation remain unverified. ADB reports no attached device; no phone test or host harness was run.

## Previous candidate: SMEM rebind fix - 2026-11-11 (SHA 398986ee...)

- Candidate module SHA-256: 398986ee7560c4e61e1849583eb42efea1f37fd5d746003d0e202fd758853f35 (788,976 bytes). Two clean builds in the canonical Docker environment produced identical bytes.
- The map covers all 8 stock functions: 1 remains PROMOTED_OFFLINE_EXACT; 7 are explicitly HARDENED_STOCK_DEVIATION. The new hardening changes the probe function and is not labeled stock-exact.
- rdbg_probe now serializes qcom_smem_state_get, paired smem_bit/state publication, and replacement of an older handle with rdbg_smem_state_lock. On successful reprobe it puts the previous kref while holding the lock shared with rdbg_write. On lookup failure it preserves the old pointer and returns the error. Init-failure and module-exit puts use the same lock.
- Static checks: KCFI type IDs match for 8/8 functions; assembly comparison leaves on_interrupt_from exact and records the other 7 functions as declared deviations. Target vermagic, module metadata, aliases, dependency set, exports, and all target CRC checks pass.
- Strict import parity remains incomplete by exactly three candidate-only imports: free_irq, platform_driver_unregister, and qcom_smem_state_put. The new candidate adds no imports relative to the preceding hardened candidate.
- The repository candidate and canonical Docker curated snapshot match. Docker kernel source commit: 3356b35306d35d5a480e3b63df1a9f065b5d9f55. Build, ABI, assembly, and KCFI evidence: reverse_engineering/validation/reconstructed/rdbg/attestation/rdbg_state_handle_rebind_sync_20261111/.
- ADB reports no attached device. No phone test, module load, unbind/rebind, or host harness was run. This batch addresses the SMEM handle leak and paired-state publication race found on the prior candidate hash 7accb38c...; the module still has no per-device remove callback, and IRQ/open-file behavior across unbind/rebind remains unverified.

The full lifecycle batch record is [`platform_driver_teardown_hardening_20261110/README.md`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/platform_driver_teardown_hardening_20261110/README.md).

## SMP2P ordering and state-handle lifetime review — 2026-11-10

The stock `rdbg_probe` calls `qcom_smem_state_get()` and stores the returned non-devm handle in each output record. The pinned API increments a `kref` and requires `qcom_smem_state_put()`; the original init-failure and module-exit paths did not release it. The hardened candidate now puts valid stored handles after unregistering the platform driver and before freeing client storage, both on init unwind and normal module exit. The pinned target exports `qcom_smem_state_put` with CRC `0xc4ec5251`; the module license is GPL.

Fresh extraction and stock comparison confirm the new `init_module` and `cleanup_module` bodies are declared hardening deviations. The full-function comparator reports expected instruction/relocation/size changes; the functions are not labeled stock-exact. Two clean Docker builds produced the candidate hash above. The overall validator remains incomplete because of the intentional import delta and pending independent mapping review.

The same review checked outbound SMP2P ordering: stock and candidate `rdbg_write` call `qcom_smem_state_update_bits()` after publishing the queue index. In the pinned kernel, the SMP2P provider invokes `qcom_smp2p_kick()`, whose `wmb()` precedes the mailbox/regmap kick. This resolves the AP-side data-before-notification ordering concern statically. Per-device unbind/rebind cleanup and remote firmware visibility remain open. Evidence: [`smp2p_outbound_ordering_review_20261110`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/smp2p_outbound_ordering_review_20261110/README.md) and [`rdbg_smem_state_lifetime_20261110`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/rdbg_smem_state_lifetime_20261110/README.md).
