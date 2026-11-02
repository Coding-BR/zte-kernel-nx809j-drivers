# zte_charger_policy — charger_policy_status_forcedischging

## Offline exact attestation

Status: \`CORE_GATES_PASS\` for the static/offline reconstruction protocol. This is not hardware validation and does not, by itself, authorize unrestricted promotion.

Scope:

- Driver: \`zte_charger_policy\`
- Function: \`charger_policy_status_forcedischging\`
- Stock entry: \`0x00101160\`
- Stock body: 164 bytes / 41 AArch64 instructions
- KCFI type ID: \`0xe1a9f482\`
- Stock module SHA-256: \`0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c\`
- Candidate protocol module SHA-256: \`3684ec095d4f562d735734897652e87148b702886c79834c99955321608d1d12\`

The readable C model remains available for host testing and Joern analysis. The kernel candidate uses an exact relocatable AArch64 island materialized from preserved stock assembly, including stock log strings in \`.rodata.str1.1\` and audited relocations to local policy helpers.

Evidence in this package:

- \`assembly/comparison.json\`: exact opcode, relocation, rodata-pointer, and ELF-symbol comparison
- \`kcfi/comparison.json\`: KCFI type, section, presence, and symbol-size comparison
- \`docker/driver_audit.json\` and \`docker/driver_audit.md\`: Docker rebuild evidence
- \`joern/joern_gate_report.json\` and \`joern/slices/\`: scoped source and slice gates
- \`host_test_report.json\`: reproducible host harness, 38 covered functions passing
- \`hard_protocol_report.json\` and \`hard_protocol_plan.json\`: protocol execution and plan
- \`input_manifest.json\`: input identity and hashes
- \`reconstruction_map.json\`: promoted function state and evidence links

The Docker audit records an offline engineering-run limitation: the engineering run root did not contain an independently acquired stock module/Ghidra export. The protocol core Docker reproducibility gate nevertheless passed using the repository stock module, preserved Ghidra export, and pinned builder image.

Limitations: static/offline evidence and host harness only; no hardware execution, target KMI validation, sanitizer/KUnit/lockdep/KCSAN run, independent review, physical rollback test, or final promotion decision. \`promotion_decision.json\` remains separate from this attestation.
