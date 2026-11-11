# RDBG shared-memory error-pointer handling (2026-11-11)

## Result

`rdbg_open` now rejects error pointers returned by both common and device-specific `qcom_smem_get()` lookups before publishing or dereferencing the SMEM address. Two clean canonical Docker builds succeeded and produced identical SHA-256 `3090b8ef5015294ddafdb9ffea6fdfd7c67444ab42fe11b67d66bdefbf4f3b30` (790,056 bytes). The final canonical validator also confirmed both builds reproduced this SHA and matched the curated candidate.

## Finding and correction

The stock Ghidra decompilation and assembly show this sequence: call `qcom_smem_get()` for the common region; if the return is an error pointer, use the device-specific fallback only when the error is `-ENOENT`; then test only for `NULL` before the address is passed to `check_subsystem_debug_enabled()`.

The pinned kernel implementation initializes the result to `ERR_PTR(-EPROBE_DEFER)` when `__smem` is unavailable and returns `ERR_PTR(-EINVAL)` for an out-of-range item. Therefore a non-`-ENOENT` error can pass the stock NULL-only check and be dereferenced. The source excerpt is preserved in [kernel_smem_get_error_contract.txt](kernel_smem_get_error_contract.txt).

The candidate keeps the result in a local pointer, performs the fallback only for `-ENOENT`, checks `IS_ERR()` after either lookup, returns the original `PTR_ERR()`, handles `NULL`, and assigns `rdbgdata->smem_addr` only after validation. This changes `rdbg_open` from stock and is recorded as a hardening deviation.

## Validation

- Final canonical validator: two clean cycles succeeded, produced the same candidate SHA, and matched the curated candidate.
- Assembly comparison covers all 8 stock functions. `on_interrupt_from` remains exact; the other 7 are declared hardening deviations. `rdbg_open` is not stock-exact.
- KCFI type IDs match for 8/8 functions.
- Target CRCs, target vermagic, metadata, aliases, dependencies, and exports match. Strict stock import parity remains incomplete because of `free_irq`, `platform_driver_unregister`, and `qcom_smem_state_put`.
- Overall validation remains `incomplete_or_failed`: `undefined_symbols_match` and `mapping_review` are false, so `static_verified` and `hardware_verified` are false. The source-to-stock identity map is complete; independent review of the seven hardened deviations remains pending. The 2026-11-02 review covers candidate SHA `6a25975d...` and explicitly says no second human peer review was done, so it cannot attest this candidate.
- No runtime or phone test was run; ADB found no attached device.

The final validator report and machine-readable review are linked in [review.json](review.json) and `docker_validation_final.json`.
