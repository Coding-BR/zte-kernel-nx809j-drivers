# zlog_test — zlog_enable_test_set

Function-level offline exact attestation for `zlog_enable_test_set` at `0x0010036c`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 209 AArch64 instructions and 836 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x4cf999cb`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The preserved direct host-test receipt covers invalid, idempotent, enable, partial-registration-failure and disable paths.

This is static/offline evidence only. Live sysfs behavior, kthread scheduling and hardware execution remain unverified.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
