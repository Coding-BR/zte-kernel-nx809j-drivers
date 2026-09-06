# Repair attestation: sensor-create call relocations

This package records the layout-independent repair required after promoting
`sensor_create_sysfs_interfaces` as an exact inline-assembly body.

The previous `sensors_sensitivity_register_exact.inc` encoded the two calls to
`sensor_create_sysfs_interfaces` as raw `BL` words. That was only valid while a
compatibility stub happened to occupy the original relative address. The repair
adds explicit `R_AARCH64_CALL26` relocations at offsets `0x150` and `0x170`.

Validation performed:

- Docker hard-protocol core: `CORE_GATES_PASS`.
- `sensor_create_sysfs_interfaces`: instructions and relocations pass.
- `sensors_sensitivity_register` recheck after the repair: 228 instructions,
  912 bytes, instructions and relocations pass.
- The assembly comparator now canonicalizes all direct conditional branches by
  symbolic target, so moving an exact function does not create a false failure.
- No hardware execution claim is made; this is static/Docker/host evidence only.

The full target attestation remains in
`next1012_zte_sensor_sensitivity_sensor_create_sysfs_exact_v1`.
