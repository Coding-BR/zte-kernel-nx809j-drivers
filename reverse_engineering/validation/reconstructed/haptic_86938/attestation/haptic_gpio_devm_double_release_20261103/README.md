# Haptic GPIO devres release versus stock `gpio_free` calls — 2026-11-03

**Disposition:** the candidate's missing `gpio_free` import is an intentional lifecycle hardening deviation. Stock requests both GPIOs with `devm_gpio_request_one` and also calls `gpio_free` manually on probe-error and remove paths. The pinned target kernel later releases the same managed requests through devres. C6 leaves each GPIO to that single managed release. This resolves the meaning of the missing import; full stock import parity remains false for other candidate-only lifetime imports.

## Stock call paths

Stock Ghidra and assembly show `aw_i2c_probe` requesting the reset GPIO at `state+0x5c` and interrupt GPIO at `state+0x50` with `devm_gpio_request_one`. Its error cleanup calls `gpio_free` for those same fields. Stock `aw_remove` calls `devm_free_irq`, then manually calls `gpio_free` for `state+0x50`; after the remaining teardown it calls `gpio_free` for `state+0x5c`.

## Pinned target-kernel lifetime

At kernel commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, `devm_gpio_request_one` allocates and registers a devres record whose release callback calls `gpio_free`. On normal unbind, the device core runs the driver's remove callback first and then `device_unbind_cleanup`, which calls `devres_release_all`. On probe failure, `really_probe` also reaches `device_unbind_cleanup` after the probe callback returns.

The legacy `gpio_free` calls `gpiod_free`. `gpiod_free_commit` clears the GPIO's requested flag only when it is still set, but `gpiod_free` calls `module_put` and `gpio_device_put` on every invocation. The manual `gpio_free` does not remove the existing devres record. Therefore stock's manual free plus later devres release can unbalance the module/device reference counts even though the second GPIO-chip free callback is skipped.

## Candidate disposition

C6 still requests both GPIOs with `devm_gpio_request_one`, and `aw_remove` calls `devm_free_irq` while the GPIO descriptor is still managed. It does not issue the stock's manual `gpio_free` calls; devres releases the GPIOs once after remove returns or after probe fails. The current candidate's undefined-import inventory has `devm_gpio_request_one` and `devm_free_irq`, but no `gpio_free`. This is a deliberate hardening deviation, not a missing release path.

The function map remains unchanged: `aw_i2c_probe` and `aw_remove` are `reviewed` with `NOT_ESTABLISHED_HARDENED_DEVIATION`; no promotion is made. The module still has 93 undefined imports versus 85 in stock, including nine candidate-only lifetime-support symbols, so strict module import parity remains unresolved. This review is static only; it does not reproduce a reference-count warning or unload failure on hardware. Hashes and excerpt files are in `gpio_devm_double_release_review.json`.
