# `point_is_in_limit_area` exact offline attestation

This package records the exact offline reconstruction of `point_is_in_limit_area` for the ZTE NX809J `zte_tpd` module.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict source gate: PASS, zero parse problems and no unresolved calls.
- Canonical Docker build: PASS in two cycles with the same artifact SHA-256.
- AArch64 function comparison: PASS, 112 instructions and 448 bytes with all stock relocations preserved.
- KCFI: PASS, both stock and candidate have no valid KCFI preamble; no type ID was invented.
- Host contract: PASS in two reproducible ASan/UBSan cycles covering mode-3 boundaries, normal limits and the ghost-flag printk path.

The exact assembly body is retained in `point_is_in_limit_area_exact.S`; the stock string table dependency is retained in `ghost_check_area_rodata.inc`. The C source remains the Joern and review view.

Hardware and smartphone runtime validation remain intentionally deferred. This is an offline reconstruction attestation, not a claim of proven device behavior.
