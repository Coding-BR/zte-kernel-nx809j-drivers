# extract_ocp_info@001006b8 — offline exact attestation

- Status: CORE_GATES_PASS
- Scope: static/offline reconstruction; hardware behavior remains unvalidated.
- Stock function: extract_ocp_info, entry 0x001006b8.
- Candidate function: extract_ocp_info implemented as an assembly island derived from the preserved stock instruction layout.
- Assembly parity: 60 AArch64 instructions, 240-byte symbol in .text, exact opcode/control-flow parity and equivalent relocations.
- KCFI parity: candidate and stock both expose type 0x89b3e352; section, symbol size and presence match.
- Docker reproducibility: two clean builds with identical candidate module SHA-256 c936467ab781270de456c58ae86de55adee8a7a1b82be9f54d85c6f130fdbe73 and size 219968 bytes.
- Joern: scoped function and slice gates pass with no unresolved calls or parser blockers.
- Host harness: the preserved driver host test report is included as host_test_report.json.

The authoritative protocol outputs are preserved in hard_protocol_report.json, assembly/comparison.json, kcfi/comparison.json, joern/joern_gate_summary.json, and docker/driver_audit.json.
