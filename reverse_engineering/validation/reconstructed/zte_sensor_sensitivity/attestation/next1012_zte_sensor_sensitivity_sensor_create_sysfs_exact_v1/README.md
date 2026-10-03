# Offline exact attestation: `sensor_create_sysfs_interfaces`

This package records the offline-static promotion of `sensor_create_sysfs_interfaces` at Ghidra stock entry `0x00100944` from `reference_modules/stock/zte_sensor_sensitivity.ko`.

The reconstructed callback preserves the stock AArch64 body, 63 instructions, 252-byte symbol size, section, four ordered `device_create_file` calls, failure cleanup order, error return, call sites, relocation targets, and referenced rodata strings. The source keeps a host-test model while the non-host build includes `sensor_create_sysfs_interfaces_exact.inc`.

The stock KCFI extractor explicitly reports `NO_VALID_KCFI_PREAMBLE` because the candidate preamble overlaps `sensors_sensitivity_register`; this target is therefore non-KCFI and no type ID is asserted. The compatibility stub embedded in `sensors_sensitivity_register_exact.inc` was removed because the exact callback now supplies the single global symbol; the register function body remains independently preserved and its prior assembly evidence is included in this package.

Evidence gates passed for this target: assembly/relocation comparison, input identity, map identity, Joern scoped analysis/slice, two pinned Docker builds with identical candidate bytes, and the deterministic host harness. The Docker auditor remains offline-only and reports no hardware verification; its acquisition/Ghidra run-root limitations are preserved verbatim in `docker/driver_audit.json`.
