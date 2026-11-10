# `gpio_keys_nubia` shutdown-window review

Date: 2026-11-10. Static review bound to candidate SHA-256 `71e0d676926830b9c108ef11172057405dfce9dee88d96717630d8381b035fdf` and stock SHA-256 `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.

## Finding

Stock Ghidra decompilation, P-Code, and AArch64 assembly show that `gpio_keys_shutdown` calls `gpio_keys_suspend` and logs an error if it fails. It does not disable the button IRQs or call `gpio_keys_quiesce_key`. The current candidate's shutdown function passes the strict stock comparison: instructions, relocations, section, and symbol size all match.

`gpio_keys_suspend` marks buttons suspended and configures wake IRQs; it does not itself drain asynchronous callbacks. The GPIO ISR still reaches `mod_delayed_work_on` after its suspended-state check, and the IRQ-only ISR can still arm its release timer. A pending or newly queued callback can therefore run after the driver's shutdown callback begins.

This is a **low-severity late-event window**, not evidence of a use-after-free. In the pinned kernel, `device_shutdown()` dispatches device shutdown callbacks and drops temporary device references; it does not run devres cleanup. The devres cleanup path is in `device_unbind_cleanup()`. For detach or probe unwind, the driver's managed IRQ release precedes the registered quiesce action; that action synchronously cancels delayed work or deletes the timer while the input device is still alive.

Calling the quiesce action alone from shutdown would not close the window because an IRQ could queue work again. Disabling IRQs first would alter the wake behavior configured by the suspend callback. The static evidence does not justify that behavior change, so the finding remains recorded as an open shutdown behavior observation. No shutdown action was triggered on the phone.

## Validation boundary

The stock and candidate `gpio_keys_shutdown` bodies compare exactly in the fresh candidate comparison. The review is static only: no shutdown/reboot cycle or late-event reproduction was run. No source or module changed, so no new Docker build was needed. The pinned kernel source is from commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55` in volume `nubia_sm8850_kernel_src_nx809j_oout_20261030`.

Machine-readable evidence and hashes are in `shutdown_window_review_20261110.json`.
