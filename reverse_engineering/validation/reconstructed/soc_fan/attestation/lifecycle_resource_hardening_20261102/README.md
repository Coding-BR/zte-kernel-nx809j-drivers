# `soc_fan` lifecycle resource hardening (2026-11-02)

## Finding

The stock `nb_fan_gpio_proc` requests the tachometer GPIO with `gpio_request`, then registers `fan_speed_irq_proc` with `request_threaded_irq`. The stock 15-function call surface contains neither matching `gpio_free` nor `free_irq` calls. The probe decompilation shows that the IRQ receives the persistent `chip` pointer as `dev_id`; the handler dereferences that state. The stock `nb_fan_remove` only removes the sysfs group and clears driver data. The GPIO and IRQ therefore remain acquired on normal removal, and the same resources can survive probe failures after acquisition.

Evidence: `reverse_engineering/validation/reconstructed/soc_fan/offline_static/ghidra_stock/soc_fan.ko/decompiled/0001_0010052c_nb_fan_probe.c`, `0002_00100a54_nb_fan_remove.c`, `0004_00100dac_nb_fan_gpio_proc.c`, and `reverse_engineering/validation/reconstructed/soc_fan/attestation/initial_scope_plan_20261027/MP4_EVENT_CALLBACK_LIFETIME.json`.

## Correction

This isolated, non-stock variant changes only `nb_fan_gpio_proc`:

- `gpio_request` becomes `devm_gpio_request`.
- `request_threaded_irq` becomes `devm_request_threaded_irq`.
- Both use `context[0]`, which the stock probe passes to `devm_kmalloc` as `&pdev->dev`.

Device-managed resources unwind on failed probe and after `remove`. Because resources are released in reverse acquisition order, the IRQ is freed and synchronized before the GPIO is released; both are released before the earlier device-managed state allocation. The handler signature, flags, name, `dev_id`, disable call, and successful-path operations are retained.

The reconstructed canonical source and `.ko` remain unchanged. This hardened artifact is not an exact-stock reconstruction and must not replace the canonical module.

## Validation

- Reproduction command in the builder: `make -C /work/src/kernel/kernel_platform/common O=/work/kernel_out ARCH=arm64 LLVM=1 LLVM_IAS=1 M=/work/validation/cycle_N KCFLAGS="-ffile-prefix-map=/work/validation/cycle_N=/soc_fan -fdebug-prefix-map=/work/validation/cycle_N=/soc_fan" -j8 modules`. Two Docker builds with the NX809J kernel source and `clang-r536225` completed successfully and produced identical output SHA-256 `5547e8d2465f481bf9b2fa3d6a1425cb28bf783cb9b4a75e4fdbad66292b91ee` (283,432 bytes).
- AArch64 ELF64 and target vermagic match. `MODPOST` succeeded; the ABI/KMI audit found 40 imported CRCs and no missing or mismatched target CRCs.
- The raw stock-parity ABI audit reports the two intentional import removals and additions. All other ABI checks pass.
- Per-function assembly comparison: 14/15 functions are exact. Only `nb_fan_gpio_proc` changes, growing from 464 to 472 bytes and targeting the two managed APIs. The raw strict comparison correctly reports this declared difference.
- BTF generation was skipped because `vmlinux` is unavailable in the Docker image. No runtime or NX809J hardware validation was performed.

## Remaining work

This variant fixes the confirmed GPIO/IRQ lifetime defect only. The separate MP4 review still has open ownership questions for regulator handles, the sysfs kobject, the high-resolution timer, and conditional OF child references. Do not treat this artifact as complete lifecycle hardening for the entire driver.

See `build_audit.json`, `abi_audit.json`, `assembly/comparison.json`, `assembly/candidate/`, `build_logs/`, `source/`, and `source.diff` for the detailed evidence.
