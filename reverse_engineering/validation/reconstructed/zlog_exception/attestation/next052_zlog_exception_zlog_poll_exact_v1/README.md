# zlog_exception — zlog_poll

Function-level offline exact attestation for `zlog_poll` at `0x00100b08`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 38 AArch64 instructions and 152 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x0b7841ca`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The dedicated host harness passed reproducibly, including the direct `FMODE_READ` and `EPOLLIN|EPOLLRDNORM` mask test.

This is static/offline evidence only. It does not claim hardware execution or prove live waitqueue wakeups or concurrent character-device behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
