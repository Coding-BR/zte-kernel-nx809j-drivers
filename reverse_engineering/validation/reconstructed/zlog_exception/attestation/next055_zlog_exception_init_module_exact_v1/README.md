# zlog_exception — init_module

Function-level offline exact attestation for the generated module-init symbol `init_module` at `0x00100ca4`, mapped from source function `zlog_init`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 38 AArch64 instructions and 152 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x6fbb3035`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The dedicated host harness passed reproducibly, including miscdevice, waitqueue, mutex, list and atomic initialization checks.
- The `module_init(zlog_init)` to stock `init_module` symbol mapping was reviewed.

This is static/offline evidence only. It does not claim hardware execution or prove live registration, teardown or concurrent device behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
