# `tpd_clean_all_event` exact offline attestation

Target: `zte_tpd::tpd_clean_all_event` at stock entry `0x0010f95c`.

The candidate preserves the stock AArch64 body, KCFI preamble and relocation to `point_report_info+0x50`. The reviewed C source resets the same 30 state fields with the types recorded in `globals.h`; the host contract checks both reset repetitions under ASan/UBSan.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict gate: PASS.
- Canonical Docker build: PASS, two independent cycles, identical SHA-256.
- AArch64 assembly and relocations: PASS, exact 164-byte function.
- KCFI: PASS, matching type ID `0xe5c47d60`.
- Host ASan/UBSan harness: PASS, two cases and two reproducible binaries.
- Smartphone/hardware validation: deferred by protocol.

This is an offline exact-function attestation and does not claim physical hardware equivalence until controlled runtime validation is performed.
