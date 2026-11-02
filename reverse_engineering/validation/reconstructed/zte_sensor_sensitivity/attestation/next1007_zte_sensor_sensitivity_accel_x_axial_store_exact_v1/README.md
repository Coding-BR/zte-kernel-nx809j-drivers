# Offline exact attestation: `accel_x_axial_store`

This package records the offline-static promotion of `accel_x_axial_store` at Ghidra stock entry `0x00100cf8` from `reference_modules/stock/zte_sensor_sensitivity.ko`.

The reconstructed callback preserves the stock AArch64 body, 59 instructions, 236-byte symbol size, KCFI type ID `0x95c41a97`, section, stack-canary path, input conversion, range check, stores, call sites, relocation targets, and referenced rodata strings. The source keeps a host-test model while the non-host build includes `accel_x_axial_store_exact.inc`.

Evidence gates passed for this target: assembly/relocation comparison, KCFI comparison, input identity, map identity, Joern scoped analysis/slice, two pinned Docker builds with identical candidate bytes, and the deterministic host harness. The host report covers success, invalid input, range boundary, and teardown scenarios for the reconstructed driver.

The Docker auditor remains offline-only and reports no hardware verification; its acquisition/Ghidra run-root limitations are preserved verbatim in `docker/driver_audit.json`. This attestation therefore makes no runtime or hardware-equivalence claim.
