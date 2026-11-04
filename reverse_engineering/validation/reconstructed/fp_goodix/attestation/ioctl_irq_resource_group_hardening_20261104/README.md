# fp_goodix lifecycle hardening — 2026-11-04

## Result

This is a static hardening candidate for the NX809J kernel. Two clean external-module builds in the canonical Docker environment produced the same `fp_goodix.ko` SHA-256: `756d2e48b902e85ca4e19e7281291ad2895def7922e86750fd2c220ffe030f3a` (723,560 bytes).

A fresh AArch64 comparison against `reference_modules/full_vendor_boot/fp_goodix.ko` checked all 30 stock function identities. Twenty-three match exactly in opcodes, relocations, section, and symbol size. Seven differences are classified hardening changes: `cleanup_module`, `gf_cleanup`, `gf_compat_ioctl`, `gf_open`, `gf_probe`, `gf_release`, and `gf_remove`. There are no unclassified differences. This does not establish full semantic equivalence.

## Changes

- Track IRQ ownership and quiesce/free the IRQ during platform removal.
- Serialize ioctl operations with removal and reject operations on a removing or inactive device.
- Make open/probe resource acquisition unwind on failure and publish the character device only after its input device is ready.
- Release devm GPIO/regulator/pinctrl resources through a devres group instead of manually freeing devm GPIOs.
- Drain delayed work before unregistering its panel notifier and preserve the existing platform-before-netlink module teardown order.

The target module symbol table exports `devres_open_group` and `devres_release_group`, but does not contain `devres_close_group`; a direct call fails `modpost`. The group is intentionally kept open until `gf_cleanup()` releases it. The inspected driver acquires its devm resources in `gf_parse_dts()`. Independent review must confirm no unrelated devres acquisitions are attached to this `platform_device` during the open group's lifetime.

## Evidence

- `hardening_attestation.json` records source/module hashes, Docker configuration, findings, and limitations.
- `docker_build_1.txt` and `docker_build_2.txt` are the two successful clean build logs.
- `stock_assembly/` and `candidate_assembly/` contain fresh AArch64 function extractions from the OEM and candidate modules.
- `assembly_comparison_stock.json` records the full 30-function comparison and the seven classified deviations.
- `assembly_comparison_previous_candidate.json` isolates the six functions changed in this batch against the preceding hardening candidate.
- The initial build attempt found the unavailable `devres_close_group` module symbol; that call was removed before the two successful builds.

## Validation status

`adb devices -l` returned no attached devices. No module was loaded or unloaded and no smartphone action was run. Host harnesses were not run in this batch. Dynamic NX809J validation and independent review remain pending; this candidate must not be described as fully reconstructed or hardware validated.
