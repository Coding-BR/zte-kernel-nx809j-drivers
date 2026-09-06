# `tpd_report_work_init` exact offline attestation

Target: `zte_tpd::tpd_report_work_init` at stock entry `0x0010fa04`.

The candidate preserves the stock AArch64 body, KCFI preamble, workqueue setup, ten callback symbols, timer initialization calls and original `.rodata.str1.1` bytes. The named callback relocations are retained explicitly so the module links against the reconstructed work functions rather than anonymous `.text` offsets.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict gate: PASS.
- Canonical Docker build: PASS, two independent cycles, identical SHA-256.
- AArch64 assembly and relocations: PASS, exact 672-byte function.
- KCFI: PASS, matching type ID `0x6fbb3035`.
- Host ASan/UBSan harness: PASS, two cases and two reproducible binaries.
- Smartphone/hardware validation: deferred by protocol.

This is an offline exact-function attestation and does not claim physical hardware equivalence until controlled runtime validation is performed.
