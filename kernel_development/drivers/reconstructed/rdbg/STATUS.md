# rdbg - lifetime-hardened offline candidate; validation incomplete

Status: HARDENED_CANDIDATE_OFFLINE. Runtime and hardware validation remain incomplete.

## Current candidate: input IRQ identity snapshot - 2026-11-11

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
