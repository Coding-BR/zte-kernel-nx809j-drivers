# `aw8693x_set_rtp_aei` host harness

Run from the repository root with:

```powershell
python .\reverse_engineering\validation\reconstructed\haptic_86938\attestation\aw8693x_set_rtp_aei\host_harness\run_harness.py --repo-root .
```

The harness builds the host C fallback in the pinned Docker image with ASan and UBSan. It verifies that the wrapper passes register `0x03`, mask `0xffffffef`, and value `0x10` when flag bit 0 is clear or zero when it is set. Four seeded mutants change the register, mask, polarity, or bit test; each must be rejected.

The KCFI oracle identifies `void (struct aw_haptic *, bool/u8)`; the aliases produce the same stock type ID. The implementation uses `u8` to retain the stock function's bit-0 behavior for byte values. This harness is host-only and does not exercise kernel KCFI or physical hardware.
