# zte_charger_policy lifetime synchronization hardening — 2026-11-10

## Finding

Static review of stock Ghidra output and the candidate found that teardown could unregister `policy_psy` while `timeout_work` could still call `power_supply_changed(policy->policy_psy)`. The retry probe also exposed callbacks before its wake source was initialized.

## Change

- `charger_policy_stop_runtime()` marks `runtime_stopping`, unregisters misc callbacks and the power-supply notifier, cancels the alarm, and synchronously drains `timeout_work` while `policy_psy` is still registered.
- It cancels the alarm again after the first drain because a handler already in progress could have rearmed it.
- It unregisters `policy_psy` only after that work drain, then drains `timeout_work` again to catch work queued by a property setter that was active during unregister. A work item entering after shutdown sees `runtime_stopping` and exits before accessing the supply.
- Probe setup creates the timeout workqueue and wake source before registering the supply and callbacks; it registers the notifier last.
- The probe worker exits when teardown is active. Device removal sets the stop flag before synchronously cancelling the probe worker.
- The retry path uses the existing stop flag. It does not import `enable_delayed_work`, which is absent from the target `Module.symvers`.

## KMI integration correction

The original 2026-11-10 candidate (`a94a1e26…`) imported `zte_misc_register_callback` with the stock CRC `0x9bec046c`. The reconstructed `zte_misc` provider exports that symbol with CRC `0x61afab7e`, so the pair had a module-version mismatch. I added the candidate CRC to `vendor.Module.symvers` and synchronized the versioned source tree to Docker curated. The rebuilt consumer imports both `zte_misc_register_callback` and `zte_misc_unregister_callback` with CRC `0x61afab7e`, matching the candidate provider. The namespace is empty for both exports.

This verifies the callback KMI pairing offline. It does not claim that either module was loaded on the phone.

## Validation

- Source SHA-256: `ef0ff259425e6851d48f0be467eff7c004f0d13ea2aa3fec35ab60c18c98091d`.
- Candidate SHA-256: `2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec` (331368 bytes).
- Two clean canonical Docker builds produced the same hash. Candidate hash, runtime section contents/layout, modinfo, target kernel identity, vermagic, AArch64 relocatable ELF, aliases, namespaces, and function traceability pass.
- The current candidate was re-extracted and compared with stock: 3/38 functions are instruction/relocation exact; the other 35 remain reviewed with declared deviations. KCFI type and section checks pass for the five teardown-related functions.
- The overall validator remains `incomplete_or_failed` only at `undefined_symbols_match`. The declared hardening removes `devm_kfree` and `devm_power_supply_register` imports and adds `alarm_cancel`, `cancel_delayed_work_sync`, `destroy_workqueue`, `power_supply_register`, `power_supply_unregister`, and `zte_misc_unregister_callback`.
- Source-to-Docker synchronization receipts are `source_sync_kmi_fix.json` and `source_sync_kmi_fix_final.json`.

## Limits

The host harness was not rerun for this candidate; the 2026-11-04 harness report belongs to the previous candidate. No charger-policy-specific phone test or module load was performed. Hardware validation and independent human review remain pending. This candidate is not marked `static_verified` and is not claimed to be fully equivalent to stock.

## Evidence

- `docker_validation.json` and `docker_validation.md`: final canonical build and parity report.
- `docker_work_crc_final/`: two clean Docker build cycles used by that report.
- `docker_validation_crc_probe.json` and `docker_work_crc_probe/` are the pre-rebind audit/build outputs; the report records the old candidate failing runtime-content equality against the corrected CRC build. Use `docker_validation.json` for final status.
- `source_sync_kmi_fix_dryrun.json` is the initial source-sync preflight; applied state is recorded by `source_sync_kmi_fix.json` and `source_sync_kmi_fix_final.json`.
- `assembly_comparison.json` and `candidate_assembly/`: current-candidate AArch64 comparison against stock.
- `stock_kcfi.json`, `candidate_kcfi.json`, and `kcfi_comparison.json`: KCFI evidence.
- `module_version_crc_audit.json`: provider and consumer CRC observations from their ELF sections and the target kernel `Module.symvers`.
- `attestation.json`: hashes and decisions bound to the artifacts above.