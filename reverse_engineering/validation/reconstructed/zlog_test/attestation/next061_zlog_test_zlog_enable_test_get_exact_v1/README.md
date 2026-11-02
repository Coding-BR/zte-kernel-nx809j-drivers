# zlog_test — zlog_enable_test_get

Function-level offline exact attestation for `zlog_enable_test_get` at `0x001006b4`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 12 AArch64 instructions and 48 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x2990b6e9`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.

This is static/offline evidence only. This target has no dedicated host harness in the reconstructed tree; runtime sysfs behavior and hardware execution remain unverified.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
