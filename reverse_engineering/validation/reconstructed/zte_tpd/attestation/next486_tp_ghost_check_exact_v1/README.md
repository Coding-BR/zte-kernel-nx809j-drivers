# `tp_ghost_check` exact offline attestation

Target: `zte_tpd::tp_ghost_check` at stock entry `0x0010f400`.

The AArch64 candidate preserves the stock instruction body, KCFI preamble, ELF relocations, allocation-tag section and `.rodata.str1.1` bytes. The reviewed C reconstruction and the Joern source view are retained beside the exact assembly for traceability.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict gate: PASS, with no target parse or unresolved-call blockers.
- Canonical Docker build: PASS, two independent cycles, identical SHA-256.
- AArch64 assembly and relocations: PASS, exact 1312-byte function.
- KCFI: PASS, matching type ID `0x2fad8a96`.
- Host ASan/UBSan harness: PASS, four cases and two reproducible binaries.
- Smartphone/hardware validation: deferred by protocol.

This is an offline exact-function attestation and does not claim physical hardware equivalence until the controlled runtime stage is executed.
