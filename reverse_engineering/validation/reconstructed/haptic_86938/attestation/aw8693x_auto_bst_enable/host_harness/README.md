# `aw8693x_auto_bst_enable` host harness

Run from the repository root with:

```powershell
python .\reverse_engineering\validation\reconstructed\haptic_86938\attestation\aw8693x_auto_bst_enable\host_harness\run_harness.py --repo-root .
```

The harness builds the host implementation in the pinned Docker image with ASan and UBSan. It verifies the byte stored at `haptic + 0x18`, then checks register `0x08`, mask `0xffffffef`, and value `0x10` for any nonzero byte. Five seeded mutants change the stored offset, register, mask, boolean test, or shift; each must be rejected.

KCFI matches `void (struct aw_haptic *, bool/char/u8)` aliases for the stock type ID. The candidate uses `u8` to retain the byte value stored in the structure. This is host-only and does not exercise kernel KCFI or hardware.
