# `ghost_check_reset` exact offline attestation

Target: `zte_tpd::ghost_check_reset` at stock entry `0x0010f924`.

The candidate preserves the stock AArch64 body, KCFI preamble, global relocation to `point_report_info+0x5c`, and ten zeroing stores. Ghidra, P-Code, Joern and the source-level contract are retained for traceability.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict gate: PASS.
- Canonical Docker build: PASS, two independent cycles, identical SHA-256.
- AArch64 assembly and relocations: PASS, exact 52-byte function.
- KCFI: PASS, matching type ID `0xe5c47d60`.
- Host ASan/UBSan harness: PASS, two cases and two reproducible binaries.
- Smartphone/hardware validation: deferred by protocol.

This is an offline exact-function attestation and does not claim physical hardware equivalence until controlled runtime validation is performed.
