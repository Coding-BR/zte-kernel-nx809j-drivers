# `i2c_w_bits` host harness

Run from the repository root with:

```powershell
python .\reverse_engineering\validation\reconstructed\haptic_86938\attestation\i2c_w_bits\host_harness\run_harness.py --repo-root .
```

The harness builds the candidate in the pinned Docker image with ASan and UBSan. It checks the two-message one-byte read, the register and adapter, the mask update, the one-byte write, return values, and error logging for failed or short reads and failed writes. Four seeded mutants alter the read register, mask expression, write call, or short-transfer handling; each must be rejected with its expected diagnostic.

This is a deterministic host contract check. It does not exercise a kernel KCFI trap, bus timing, device-tree configuration, or physical AW8693x hardware and does not authorize promotion.
