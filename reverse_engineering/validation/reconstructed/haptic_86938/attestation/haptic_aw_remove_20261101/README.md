# aw_remove reconstruction (2026-11-01)

The missing lifecycle callback `aw_remove@0010823c` is now reconstructed and bound in the function map. The stock ELF confirms the `i2c_client *` callback ABI, ordered cancellation of six work/timer objects, unconditional reset-GPIO-to-IRQ conversion and release, two conditional GPIO frees, buffer/page cleanup, and `misc_deregister(&richtap_misc)`.

## Verification

- `protocol_core_v3/hard_protocol_report.json`: all applicable automated core gates pass (map/input identity, Joern and usage slice, two reproducible Docker builds, assembly/relocations, and KCFI).
- `binary_body_equivalence.json`: all 75 instructions and all 300 function bytes match stock; the function-body SHA-256 is identical, and the relocation-aware comparator passes. KCFI type `0xa8cfcee2` matches.
- `host_harness/host_harness_report.json`: three GPIO branch scenarios pass under ASan/UBSan, including exact teardown order and page-bit preservation.
- The Docker candidate module builds reproducibly twice with SHA-256 `802f1c8a1bad99411d0a8e37308fc2cdfe6f6a0133227bf7fb818ba8166c03b1`.

## Integration status

The full driver remains incomplete and promotion is not authorized. The candidate `richtap_misc` object has the stock dynamic minor, `awinic_haptic` name, and `left_fops` pointer, but its `unlocked_ioctl` and `mmap` slots are still null because those stock functions are not reconstructed yet. The independent full-driver audit also still reports missing module parity/traceability items. No hardware test or independent reviewer sign-off was performed. See `richtap_misc_candidate_data_audit.json` and the Docker audit for the precise gaps.
