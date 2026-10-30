# `ghost_check_area` exact offline attestation

Target: `zte_tpd::ghost_check_area` at stock entry `0x0010f2ac`.

The candidate is the AArch64 instruction body materialized from the stock disassembly, with the original `.rodata.str1.1` bytes and ELF relocations preserved. The C reconstruction remains available as the reviewed source contract and Joern input; the exact assembly is the compiled target for this attestation.

## Gates

- Ghidra pseudocode and P-Code: present and reviewed.
- Joern strict gate: PASS, zero parse problems and zero unresolved calls for the target.
- Canonical Docker build: PASS, two independent cycles, identical SHA-256.
- AArch64 assembly: PASS, 84 instructions and 336 bytes.
- Relocations and string references: PASS after normalized comparison.
- KCFI: PASS, both stock and candidate have no valid KCFI preamble for this symbol; no type ID was invented.
- Host ASan/UBSan harness: PASS, four cases and two reproducible binaries.
- Smartphone/hardware validation: deferred by protocol.

This is an offline exact-function attestation, not a claim of physical hardware equivalence. Runtime validation remains a separate controlled stage.
