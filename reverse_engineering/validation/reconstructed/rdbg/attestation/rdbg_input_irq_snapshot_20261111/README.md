# RDBG input IRQ identity snapshot (2026-11-11)

## Result

The offline candidate now pairs the IRQ requested by each open file with cleanup of that same IRQ value. Two clean canonical Docker builds completed with identical bytes: SHA-256 `468b8d09e6f269d57571551fe4c5764d0799cee804347f0e2be2cbf7d58f8981` (789,728 bytes). The driver remains incomplete; this is static evidence, not a phone test.

## Static issue and correction

Stock `rdbg_probe` gets the input IRQ with `of_irq_get_byname()` and publishes it in the client record. `rdbg_open` passes that field to `request_threaded_irq()`. The candidate's cleanup path had been rereading the same mutable field. If a later probe updated it before release, `free_irq()` could receive an IRQ number different from the one requested for that open. This is a statically possible identity race; it has not been reproduced on hardware.

The candidate protects publication of `in.irq_base_id` with `rdbg_input_irq_lock`. Open copies the value into `file_context->requested_irq` under that lock and uses the snapshot for both `request_threaded_irq()` and open-failure cleanup. Release uses the same per-open snapshot for `free_irq()`.

This addresses IRQ identity pairing. It does not establish safe platform unbind/rebind: the driver still has no per-device `.remove` callback, and an open file can outlive probe state changes.

## Validation

- Canonical Docker validator: two clean builds succeeded and reproduced the candidate SHA exactly; the repository module and curated module match the fresh build.
- Stock assembly comparison selected all 8 stock functions. `on_interrupt_from` is exact; the other 7 functions are declared hardening deviations. Strict whole-function parity therefore remains false.
- KCFI IDs match for 8/8 functions.
- Target vermagic, module metadata, aliases, dependency set, exports, and imported symbol CRCs match the target. Strict stock import parity remains incomplete because the candidate adds `free_irq`, `platform_driver_unregister`, and `qcom_smem_state_put`.
- The overall validator reports `incomplete_or_failed`: `undefined_symbols_match` is false for those three imports, and the independent mapping review gate is pending for the 7 hardening deviations. `static_verified` and `hardware_verified` are both false.
- `adb devices -l` found no attached device. No module-load, unbind/rebind, phone hardware, or host-harness test was run.

Machine-readable details: [review.json](review.json), [docker_validation_final.json](docker_validation_final.json), [assembly_comparison.json](assembly_comparison.json), [kcfi_comparison.json](kcfi_comparison.json), and [abi_surface.json](abi_surface.json).
