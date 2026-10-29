# `richtap_clean_buf` host harness

Run from the repository root:

```powershell
python reverse_engineering/validation/reconstructed/haptic_86938/attestation/cleanfix/host_harness/run_harness.py --repo-root .
```

The runner compiles the checked-in candidate source inside the pinned `nubia-sm8850-kernel-builder:latest` Docker image with AddressSanitizer and UndefinedBehaviorSanitizer. It checks a 16-node chain, each 1000-byte data area, the `0xff` state writes, link/root preservation, reserved bytes, and that node 17 remains untouched. Three source mutants remove a clear, remove a sentinel store, or break a link step; the harness must reject each.

The generated `harness_result.json` records the source hash, Docker image ID, compiler version, sanitizer configuration, and all case outputs. This is a bounded host test; it does not execute kernel code or validate device behavior.
