# Exact attestation: `gyro_z_axial_store`

Target: `gyro_z_axial_store@0x001015b4`, with a stock body of 236 bytes.

The promoted implementation preserves the 59-instruction AArch64 callback, including `kstrtoint`, the `<201` range check, the gyro-Z state offset `0x5c`, error logging, stack-canary path, and KCFI type `0x95c41a97`. The host model remains available only under `ZTE_SENSOR_SENSITIVITY_HOST_TEST`; the module path includes the exact assembly body.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI, Joern, Docker reproducibility and host harness passed. This is offline/static evidence and makes no hardware-execution claim.
