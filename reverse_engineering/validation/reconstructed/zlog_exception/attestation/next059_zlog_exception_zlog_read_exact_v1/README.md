# zlog_exception — zlog_read

Function-level offline exact attestation for `zlog_read` at `0x0010056c`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 169 AArch64 instructions and 676 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0xf4e9d97c`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The dedicated host harness passed reproducibly with FIFO, interrupted-wait, copy-fault and empty-queue tests.

This is static/offline evidence only. It does not claim hardware execution or prove live blocking wakeups and concurrent queue behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
