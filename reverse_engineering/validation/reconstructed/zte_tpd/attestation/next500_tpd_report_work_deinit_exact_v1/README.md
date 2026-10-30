# `tpd_report_work_deinit` exact offline attestation

This package records the reconstruction of `tpd_report_work_deinit` for the ZTE NX809J `zte_tpd` module.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict source gate: PASS, zero parse problems and no unresolved calls.
- Canonical Docker build: PASS in two cycles with the same artifact SHA-256.
- AArch64 function comparison: PASS, 35 instructions and 140 bytes, including all `tpd_cdev` and `.rodata.str1.1` relocations and ten `cancel_delayed_work_sync` call targets.
- KCFI: PASS, exact type ID `0xe5c47d60` and 140-byte symbol.
- Host contract: PASS in two reproducible ASan/UBSan cycles, two cases per cycle, checking printk and all ten cancellation offsets in order.

The exact assembly body is retained in `tpd_report_work_deinit_exact.S`; its stock string table dependency is retained in `ghost_check_area_rodata.inc`. The C source is retained as the Joern and review view.

Hardware and smartphone runtime validation remain intentionally deferred. This is an offline reconstruction attestation, not a claim of proven device behavior.
