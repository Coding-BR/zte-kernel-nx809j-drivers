# `attr_store@00100d34` — offline exact attestation

- Status: `CORE_GATES_PASS`
- Scope: static/offline reconstruction; hardware behavior remains unvalidated.
- Stock function: `attr_store`, entry `0x00100d34`.
- Candidate function: `attr_store`.
- Assembly parity: 17 AArch64 instructions, 68-byte symbol, `.text`, relocations equivalent.
- KCFI parity: candidate and stock both expose type `0x7a5b5d2f`; symbol size and presence match.
- Docker reproducibility: two clean builds with identical candidate module SHA-256 `abfb3ffdb312dbb4599b9838720dab7733ba7754c734e1417e16df09f84bc7e3` and size `222944` bytes.
- Joern: scoped function and slice gates pass with no unresolved calls or parser blockers.
- Host harness: the preserved driver host test report is included as `host_test_report.json`.

The authoritative protocol outputs are preserved in `hard_protocol_report.json`, `assembly/comparison.json`, `kcfi/comparison.json`, `joern/joern_gate_summary.json`, and `docker/driver_audit.json`.
