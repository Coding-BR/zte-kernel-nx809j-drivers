# zte_charger_policy lifetime synchronization hardening — 2026-11-10

## Finding

Static review of stock Ghidra output and the candidate found that teardown could unregister policy_psy while timeout_work was still able to call power_supply_changed(policy->policy_psy). The retry probe also exposed callbacks before its wake source was initialized.

## Change

- charger_policy_stop_runtime() now marks runtime_stopping, unregisters misc callbacks and the power-supply notifier, cancels the alarm, and synchronously drains timeout_work while policy_psy is still registered.
- It cancels the alarm again after the first drain because a handler already in progress could have rearmed it.
- It unregisters policy_psy only after that work drain, then drains timeout_work a second time to catch a work item queued by a property setter that was already active during unregister. A work item entering after shutdown sees runtime_stopping and exits before accessing the supply.
- Probe setup creates the timeout workqueue and wake source before registering the supply and callbacks; it registers the notifier last.
- The probe worker exits when teardown is active. Device removal sets the stop flag before synchronously cancelling the probe worker.
- The retry path uses the existing stop flag. It does not import enable_delayed_work, which is declared by the pinned kernel headers but absent from the target Module.symvers.

## Validation

- Source SHA-256: ef0ff259425e6851d48f0be467eff7c004f0d13ea2aa3fec35ab60c18c98091d.
- Candidate SHA-256: a94a1e26ae3b424cc135b1ab0e3e378c4778dcd996a2b1e6ea64fd349862adbd (331368 bytes).
- Candidate, map, and canonical Docker curated source/module are synchronized.
- The pinned Docker validator completed two clean, byte-identical builds. The fresh module matches the candidate SHA-256, runtime section contents/layout, and modinfo.
- Kernel source identity, target vermagic, AArch64 relocatable ELF, aliases, and namespaces pass.
- Strict assembly comparison: 3/38 exact; 35 remain reviewed. KCFI type IDs match for the five checked functions.
- The overall validator remains incomplete_or_failed only at undefined_symbols_match. The declared teardown hardening removes devm_kfree and devm_power_supply_register imports and adds alarm_cancel, cancel_delayed_work_sync, destroy_workqueue, power_supply_register, power_supply_unregister, and zte_misc_unregister_callback.

## Limits

No host harness was rerun for this candidate. The 2026-11-04 harness result applies to the previous source and binary. No charger-policy-specific test or module load was performed on the NX809J; hardware validation and independent human review remain pending. This batch does not claim full semantic equivalence or static_verified.

## Evidence

- docker_validation.json and docker_validation.md: final canonical build and parity report.
- assembly_comparison.json and candidate_assembly/: current-candidate AArch64 comparison.
- candidate_kcfi.json and kcfi_comparison.json: current-candidate KCFI report.
- attestation.json: hashes and decision bound to the artifacts above.
