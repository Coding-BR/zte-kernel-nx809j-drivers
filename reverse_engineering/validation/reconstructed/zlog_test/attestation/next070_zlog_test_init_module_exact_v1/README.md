# zlog_test — init_module

Function-level offline exact attestation for the generated module-init symbol `init_module` at `0x00100cb0`, mapped from source function `zlog_test_init`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 154 AArch64 instructions and 616 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x6fbb3035`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The preserved direct host-test receipt records five workqueues, five callbacks and misc callback registration.
- The `module_init(zlog_test_init)` to stock `init_module` symbol mapping was reviewed.

This is static/offline evidence only. Live kthread/workqueue ordering, device behavior and hardware execution remain unverified.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
