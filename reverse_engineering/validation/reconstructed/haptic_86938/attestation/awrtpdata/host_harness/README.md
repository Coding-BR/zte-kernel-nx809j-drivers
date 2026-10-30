# `aw8693x_set_rtp_data` host harness

From the repository root, run:

```powershell
python .\reverse_engineering\validation\reconstructed\haptic_86938\attestation\awrtpdata\host_harness\run_harness.py `
  --repo-root .
```

The harness compiles the candidate inside the pinned Docker image with AddressSanitizer and UndefinedBehaviorSanitizer. The baseline checks one call to `i2c_w_bytes` with the original haptic pointer, register `0x32`, data pointer, and length. Four mutants remove the call or alter the register, pointer, or length; each must fail with its expected contract diagnostic.

This is a host-only forwarding check. It does not execute the kernel callback, prove KCFI on-device, validate I2C bus timing, or exercise the physical AW8693x device. The result supports static review and does not authorize promotion.
