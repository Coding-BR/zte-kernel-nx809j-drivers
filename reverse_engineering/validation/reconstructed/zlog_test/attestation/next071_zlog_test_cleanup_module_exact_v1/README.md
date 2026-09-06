# zlog_test — cleanup_module

Function-level offline exact attestation for the generated module-exit symbol `cleanup_module` at `0x00100f1c`, mapped from source function `zlog_test_exit`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 11 AArch64 instructions and 44 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0xe5c47d60`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The preserved direct host-test receipt records stock log-only exit behavior.

This is static/offline evidence only. Live unload, workqueue teardown and hardware behavior remain unverified.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
