# `tpd_id6_report_work` exact offline attestation

This package records the reconstruction of `tpd_id6_report_work` for the ZTE NX809J `zte_tpd` module.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict source gate: PASS, zero parse problems and no unresolved calls.
- Canonical Docker build: PASS in two cycles with the same artifact SHA-256.
- AArch64 function comparison: PASS, 10 instructions and 40 bytes, including the `point_report_info+0x3b0` relocations and the `edge_long_press_up` call target.
- KCFI: PASS, exact type ID `0xa607748c` and 40-byte symbol.
- Host contract: PASS in two reproducible ASan/UBSan cycles, two cases per cycle.

The exact assembly body is retained in `tpd_id6_report_work_exact.S`. The C source is retained as the Joern and review view; the assembly is the gated implementation for this target.

Hardware and smartphone runtime validation remain intentionally deferred. This is an offline reconstruction attestation, not a claim of proven device behavior.
