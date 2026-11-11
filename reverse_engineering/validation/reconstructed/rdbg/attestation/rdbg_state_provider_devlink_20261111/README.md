# RDBG output SMEM provider lifetime - 2026-11-11

## Result

The output SMEM provider removal race is addressed statically in this candidate. The canonical Docker rebuild passed twice with identical output: SHA-256 `30a548c904a8cb8e6ea53966c427a9276a4727b8958017cf9e86a854342d23a5`, 797,936 bytes. Target kernel source is pinned at `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, using `clang-r536225`.

The build report is `docker_validation_build_clangr536225.json`; it uses the manifest's `clang-r536225` toolchain.

## Change

- `rdbg_probe` resolves the `qcom,smem-states` phandle to its SMP2P parent platform device and creates a managed `DL_FLAG_AUTOREMOVE_CONSUMER` device link before acquiring the state handle.
- `rdbg_init` registers `rdbg_remove` as the platform-driver `.remove` callback.
- `rdbg_remove` clears the output state pointer and its shadow/cursor under `rdbg_smem_state_lock`, then drops the qcom SMEM reference. `rdbg_write` uses the same lock across `qcom_smem_state_update_bits()`, so provider unbind waits for an in-flight callback to finish before the remove callback returns.
- Pinned-kernel evidence and source hashes are in `kernel_provider_device_link_evidence.md`.

## Validation

The corrected core protocol report is `provider_link_protocol_core_corrected/hard_protocol_report.json`. Docker reproducibility, input identity, map identity, Joern scoped/slice gates, and KCFI passed. Relocation-aware assembly parity failed for the changed `rdbg_probe` and `init_module` functions. A fresh candidate Ghidra export was not supplied, so normalized-C and P-Code comparisons were not run; the protocol report’s `false` values for those fields mean “not measured,” not failed. The protocol did not authorize promotion. The maps remain `candidate_hardening_deviation` after the run.

No runtime or phone test was run.

The complete validator report is `docker_validation_final_public_evidence.json`. It confirms the stock/Ghidra identity, target kernel identity, module metadata, and fresh-build byte match. Its overall status remains `incomplete_or_failed`: independent mapping review is pending for seven hardening deviations, and strict undefined-symbol parity still differs by candidate-only imports (`device_link_add`, OF lookup/parser helpers, and earlier cleanup hardening imports). `static_verified` remains empty. The `.ko` in curated was separately copied and hash-checked; details are in `curated_candidate_module_sync.json`. The source/map sync applied two changed files with zero removals; the final status sync then applied one changed file and verified zero remaining drift. The source/map sync copied two files with zero removals; later status edits were synced and verified with zero drift. Final sync reports: `curated_sync_final_applied.json`, `curated_sync_final_verified.json`, `curated_sync_status_final_applied.json`, and `curated_sync_status_final_verified.json`.

The new callback symbol `rdbg_remove` was found in the candidate module and its assembly was extracted successfully; see `candidate_remove_assembly/manifest.json`.

## Open issue

This callback only releases the output SMEM state. The input IRQ may remain requested by an open character-device file across supplier unbind; the `.remove` path does not drain that IRQ or active file operations. That lifecycle still needs its own analysis and runtime validation.

See `review.json` for the machine-readable conclusion and the exact gate disposition.
