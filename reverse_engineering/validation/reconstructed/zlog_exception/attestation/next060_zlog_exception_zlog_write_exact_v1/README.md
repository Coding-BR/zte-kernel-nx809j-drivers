# zlog_exception — zlog_write

Function-level offline exact attestation for `zlog_write` at `0x00100814`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 188 AArch64 instructions and 752 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0xc3d43b4d`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The dedicated host harness passed reproducibly with success, queue-limit and `copy_from_user`-failure tests.

This is static/offline evidence only. It does not claim hardware execution or prove live queue concurrency, user ABI or hardware behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
