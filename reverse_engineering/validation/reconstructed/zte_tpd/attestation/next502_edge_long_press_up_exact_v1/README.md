# `edge_long_press_up` exact offline attestation

This package records the exact offline reconstruction of `edge_long_press_up` for the ZTE NX809J `zte_tpd` module.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict source gate: PASS, zero parse problems and no unresolved calls.
- Canonical Docker build: PASS in two cycles with the same artifact SHA-256.
- AArch64 function comparison: PASS, 156 instructions and 624 bytes with all stock relocations preserved.
- KCFI: PASS, both stock and candidate have no valid KCFI preamble; no type ID was invented.
- Host contract: PASS in two reproducible ASan/UBSan cycles covering inactive, last-active and other-active event paths.

The exact Assembly was materialized by `materialize_stock_function_assembly.py` from the extracted stock dump. The stock string table dependency is retained in `ghost_check_area_rodata.inc`; the C source remains the Joern and review view.

Hardware and smartphone runtime validation remain intentionally deferred. This is an offline reconstruction attestation, not a claim of proven device behavior.
