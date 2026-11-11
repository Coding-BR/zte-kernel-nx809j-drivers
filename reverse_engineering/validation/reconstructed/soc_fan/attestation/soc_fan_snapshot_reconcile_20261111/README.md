# SOC fan snapshot and stock evidence reconciliation — 2026-11-11

## Result

The repository source snapshot and Docker curated snapshot are synchronized. The stock Ghidra export was regenerated from the exact stock module because the preserved `ghidra_stock_repaired_20261027` export was incomplete. A complete export now exists under `offline_static/ghidra_stock/soc_fan.ko/`; the older repaired export was preserved.

## Ghidra evidence

- Stock module: `reference_modules/full_vendor_boot/soc_fan.ko`, SHA-256 `4da6fb10051f99abf84552f6f0dd7ef2dc21f331871ec9988ce2e922e0012793`.
- Ghidra manifest MD5: `705dc868b1e35c2708f7aad81695eacc`, equal to the stock module's MD5.
- Ghidra 12.1.2 headless export: 15 function records, 15 P-Code files, 15 decompilation files, zero decompilation failures, and all eight validator-required top-level files.
- Per-file SHA-256 inventory: `ghidra_export_verification.json`.
- Headless logs: `ghidra_refresh.log` and `ghidra_refresh_script.log`.

## Canonical Docker validation

`docker_validation_final.json` and `.md` record two clean reproducible builds from the canonical Docker workspace. Both fresh modules have SHA-256 `31f6aed35fec221986c7a081cb0d4702edbb74798fef8493e7ac6659e8493885` and size 290,368 bytes. Kernel identity, Ghidra export, function traceability, mapping review, runtime section contents/layout, and modinfo pass.

The overall result remains `incomplete_or_failed` because strict undefined-symbol parity does not pass. The current hardening candidate adds `devm_gpio_request`, `devm_regulator_get`, `devm_request_threaded_irq`, `hrtimer_cancel`, and `kobject_put`, while the stock module imports `gpio_request`, `regulator_get`, and `request_threaded_irq`. These differences are recorded in the reconstruction map as intentional hardening deviations; they do not count as stock-exact equivalence. The candidate's complete SHA also differs from the fresh build in build-id metadata and/or debug/BTF sections, although its runtime content, section layout, and modinfo match. No candidate promotion was made.

No hardware or KCSAN validation was performed. The driver's status remains a hardened build-verified candidate, not `static_verified` or `hardware_verified`.
