# zte_sensor_sensitivity — sensors_sensitivity_register

## Offline exact attestation

Status: `CORE_GATES_PASS` for the static/offline reconstruction protocol. This is not hardware validation and does not, by itself, authorize unrestricted promotion.

Scope:

- Driver: `zte_sensor_sensitivity`
- Function: `sensors_sensitivity_register`
- Stock entry: `0x001005b4`
- Stock body: 864 bytes / 228 AArch64 instructions
- Stock module SHA-256: `1f1340bea19dddf3aa5d5b48028c47611f8a222f025b43dde883950573c64032`
- Candidate protocol module SHA-256: `9b9fbf7517180d7f60f33e9342df76ae0a31835df7eee9d7033e3537543d7e6f`

The readable C model is retained for the host harness and source analysis. The kernel candidate uses a relocatable AArch64 exact island generated from the preserved stock AArch64 evidence, with an explicitly named wrapper for the stock local helper target. This preserves the stock function body, relocations, KCFI metadata, and the source/Joern identity needed by the protocol.

Evidence in this package:

- `assembly/comparison.json`: exact opcode, relocation, rodata-pointer, and ELF-symbol comparison
- `kcfi/comparison.json`: KCFI type, section, presence, and symbol-size comparison
- `docker/driver_audit.json` and `docker/driver_audit.md`: Docker rebuild evidence
- `joern/joern_gate_report.json` and `joern/slices/`: scoped source and slice gates
- `host_test_report.json`: reproducible host harness, 21/21 function tests passing
- `hard_protocol_report.json` and `hard_protocol_plan.json`: protocol execution and plan
- `input_manifest.json`: input identity and hashes
- `reconstruction_map.json`: promoted function state and evidence links

The Docker audit records an offline engineering-run limitation: the engineering run root did not contain an independently acquired stock module/Ghidra export. The protocol's core Docker reproducibility gate nevertheless passed using the preserved package inputs and the configured builder image.

Limitations: static/offline evidence and host harness only; no hardware execution, target KMI validation, sanitizer/KUnit/lockdep/KCSAN run, independent review, physical rollback test, or final promotion decision. `promotion_decision.json` remains separate from this attestation.
