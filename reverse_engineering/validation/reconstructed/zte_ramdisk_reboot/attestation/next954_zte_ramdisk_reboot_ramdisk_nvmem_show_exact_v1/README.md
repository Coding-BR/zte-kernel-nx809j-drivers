# `ramdisk_nvmem_show@00100d7c` — offline exact attestation

- Status: `CORE_GATES_PASS`
- Scope: static/offline reconstruction; hardware behavior remains unvalidated.
- Stock function: `ramdisk_nvmem_show`, entry `0x00100d7c`.
- Candidate function: `ramdisk_nvmem_show`.
- Assembly parity: 14 AArch64 instructions, 56-byte symbol, `.text`, and equivalent string/data relocations.
- KCFI parity: candidate and stock both expose type `0x618e6a55`; symbol size and presence match.
- Docker reproducibility: two clean builds with identical candidate module SHA-256 `abfb3ffdb312dbb4599b9838720dab7733ba7754c734e1417e16df09f84bc7e3` and size `222944` bytes.
- Joern: scoped function and slice gates pass with no unresolved calls or parser blockers.
- Host harness: the preserved driver host test report is included as `host_test_report.json`.

The authoritative protocol outputs are preserved in `hard_protocol_report.json`, `assembly/comparison.json`, `kcfi/comparison.json`, `joern/joern_gate_summary.json`, and `docker/driver_audit.json`.
