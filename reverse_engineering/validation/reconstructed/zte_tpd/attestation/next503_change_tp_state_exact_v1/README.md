# `change_tp_state` exact offline attestation

This package records the exact offline reconstruction of `change_tp_state` for the ZTE NX809J `zte_tpd` module.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict source gate: PASS, zero parse problems and no unresolved calls.
- Canonical Docker build: PASS in two cycles with the same artifact SHA-256.
- AArch64 function comparison: PASS, 94 instructions and 376 bytes with the stock `.rodata` and `.rodata.str1.1` relocation structure preserved.
- KCFI: PASS, exact type ID `0xf4d9b23e` and 376-byte symbol.
- Host contract: PASS in two reproducible ASan/UBSan cycles covering five valid/invalid LCD transitions, queue offsets and lock cleanup.

The exact Assembly was materialized from the stock dump by `materialize_stock_function_assembly.py`; the local `.rodata` pointer tables and stock string table dependency are retained in `change_tp_state_exact.S` and `ghost_check_area_rodata.inc`.

Hardware and smartphone runtime validation remain intentionally deferred. This is an offline reconstruction attestation, not a claim of proven device behavior.
