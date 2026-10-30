# zte_check_xbl_log_lines@001004fc — offline exact attestation

- Status: CORE_GATES_PASS
- Scope: static/offline reconstruction; hardware behavior remains unvalidated.
- Stock function: zte_check_xbl_log_lines, entry 0x001004fc.
- Candidate function: zte_check_xbl_log_lines implemented as an assembly island derived from the preserved stock instruction layout.
- Assembly parity: 110 AArch64 instructions, 440-byte symbol in .text, exact opcode/control-flow parity and equivalent relocations.
- KCFI parity: candidate and stock both expose type 0x3d9079e2; section, symbol size and presence match.
- Docker reproducibility: two clean builds with identical candidate module SHA-256 a4d20bc40f609a09524f339dce06f9736b41f04c771b899b9464df10c46aa076 and size 220680 bytes.
- Joern: scoped function and slice gates pass with no unresolved calls or parser blockers.
- Host harness: the preserved driver host test report is included as host_test_report.json.

The authoritative protocol outputs are preserved in hard_protocol_report.json, assembly/comparison.json, kcfi/comparison.json, joern/joern_gate_summary.json, and docker/driver_audit.json.
