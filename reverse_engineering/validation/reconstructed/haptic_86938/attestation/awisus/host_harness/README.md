# `aw_i2c_suspend` host harness

Run from the repository root with Docker available:

```powershell
python .\reverse_engineering\validation\reconstructed\haptic_86938\attestation\awisus\host_harness\run_harness.py `
  --repo-root .
```

The script compiles the candidate in the pinned `nubia-sm8850-kernel-builder:latest` image with AddressSanitizer and UndefinedBehaviorSanitizer. It checks the baseline lock → callback → unlock sequence and rejects four seeded changes: remove the lock, move the callback after unlock, pass the wrong callback argument, or return the wrong value. The generated `harness_result.json` records the candidate and harness source hashes, Docker image ID, and each case result.

This is a host-only contract check. It does not execute the kernel module, validate kernel KCFI, or exercise I2C hardware, device-tree state, suspend/resume races, lockdep, or KCSAN. Its result is supporting evidence and does not authorize promotion.
