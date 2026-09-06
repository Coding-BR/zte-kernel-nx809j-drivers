# zlog_common — zlog_handle_work

Function-level offline exact attestation for the stock workqueue handler `zlog_handle_work` at `0x00100b80`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 259 AArch64 instructions and 1036 bytes.
- The assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0xa607748c`.
- Docker hard protocol returned `CORE_GATES_PASS` with two clean builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Both Docker builds produced SHA-256 `f8666e5c1cbbf446407c5488074fa33f973e206e02a7d54bf6e14a1f5b642457`.
- Joern strict scope and usage slice passed with zero parse problems and zero unresolved calls.
- The host harness passed reproducibly, including serialized-event and allocation-failure paths.

This is static/offline evidence only. It does not claim hardware execution or prove live workqueue ordering, client lifetime or concurrent execution.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision.
