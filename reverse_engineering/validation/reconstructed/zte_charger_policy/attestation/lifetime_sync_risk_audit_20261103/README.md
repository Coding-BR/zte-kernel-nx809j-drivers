# zte_charger_policy lifetime and synchronization audit — 2026-11-03

## Result

Static review confirms a possible use-after-free when the platform device is unbound while delayed work is pending. The same teardown gap exists in the OEM stock driver. No runtime failure was reproduced.

## Evidence-bound candidate identity

The reconstructed C source SHA-256 is FDFBF6FA0E730B35623B38E69631A89F1F1C769053FEE2481A381EDA94CBB707; the reconstruction map is 1739E7111386A62AD3C5E39BC517F021849E1C8BD2B46B057535A03BFCD1F233. The current module is 344,928 bytes with SHA-256 1DC77EF1D5755FB218D9FCFFEFD6B078CA0FFCCA679CFFA6AFF4029C184442C4. The source, map, module, and lifecycle assembly include files match the Docker curated snapshot byte-for-byte.

The prior STATUS entry named a different module hash (04F4A2AEC2A9DCC1A98313E60EEDCBA05D34419EF82721BB8B7FECE9840A8D5B, 300,960 bytes). Existing exact-function promotion records also bind to older module hashes. This audit therefore does not transfer the historical full validation result to the current module image.

## Lifecycle finding

The probe initializes probe_work and schedules it five seconds later. On retryable errors, probe_work schedules itself again. The remove callback unregisters the power-supply notifier, unregisters the wakeup source when present, and frees the policy structure with devm_kfree. It does not cancel or drain probe_work or destroy probe_wq.

After successful asynchronous initialization, timeout_work is queued and can requeue itself. Remove also does not cancel or drain timeout_work or destroy timeout_wq before freeing policy. A device unbind during either pending-work window can leave a callback dereferencing the freed policy object.

Stock Ghidra decompilation and stock assembly confirm the same queue/free ordering. The reconstructed source preserves this behavior. The evidence supports a static lifetime risk; it does not prove that the race has occurred on hardware.

## Validation limits

This was an evidence-only review. No reconstruction source was changed and no build or runtime test was run. Current source/map/module bytes match the Docker curated snapshot, but the current module hash has not been rebound to a fresh full set of build and assembly gates. Hardware validation and independent review remain pending.