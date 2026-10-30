# zlog_common — init_module

Function-level offline exact attestation for the generated module-init symbol `init_module` at `0x00101268`, mapped from source function `zlog_common_init`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 65 AArch64 instructions and 260 bytes.
- The assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x6fbb3035`.
- Docker hard protocol returned `CORE_GATES_PASS` with two clean builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Both Docker builds produced SHA-256 `f8666e5c1cbbf446407c5488074fa33f973e206e02a7d54bf6e14a1f5b642457`.
- Joern strict scope and usage slice passed.
- The host harness passed reproducibly, including direct 32-mutex, misc-device, workqueue and delayed-work checks.
- The `module_init(zlog_common_init)` to stock `init_module` symbol mapping was reviewed.

This is static/offline evidence only. It does not claim hardware execution or prove live registration, delayed-work ordering, concurrency or teardown behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision.
