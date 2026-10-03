# zlog_test — zlog_test5_thread

Function-level offline exact attestation for `zlog_test5_thread` at `0x00100bc0`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 59 AArch64 instructions and 236 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0xa607748c`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The preserved direct host-test receipt records record, notify and reschedule behavior.

This is static/offline evidence only. Live kthread scheduling, workqueue ordering and hardware behavior remain unverified.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
