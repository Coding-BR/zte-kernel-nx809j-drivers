# extract_sn_info@001007ac — offline exact attestation

- Status: CORE_GATES_PASS
- Scope: static/offline reconstruction; hardware behavior remains unvalidated.
- Stock function: extract_sn_info, entry 0x001007ac.
- Candidate function: extract_sn_info implemented as an assembly island derived from the preserved stock instruction layout.
- Assembly parity: 57 AArch64 instructions, 228-byte symbol in .text, exact opcode/control-flow parity and equivalent relocations.
- KCFI parity: candidate and stock both expose type 0x89b3e352; section, symbol size and presence match.
- Docker reproducibility: two clean builds with identical candidate module SHA-256 855ea4f0d8cdcef3c0ea1a54d55b94f71b0a573521e7afbf484c918577452b8f and size 218456 bytes.
- Joern: scoped function and slice gates pass with no unresolved calls or parser blockers.
- Host harness: the preserved driver host test report is included as host_test_report.json.
- Note: the broader driver audit remains incomplete because its external acquisition/Ghidra evidence inputs are not present in this isolated protocol run; this does not invalidate the seven core gates recorded here.

The authoritative protocol outputs are preserved in hard_protocol_report.json, assembly/comparison.json, kcfi/comparison.json, joern/joern_gate_summary.json, and docker/driver_audit.json.
