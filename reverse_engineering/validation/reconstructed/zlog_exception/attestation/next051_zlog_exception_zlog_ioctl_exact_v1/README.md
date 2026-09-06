# zlog_exception — zlog_ioctl

Function-level offline exact attestation for `zlog_ioctl` at `0x00100ba4`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 2 AArch64 instructions and 8 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x2af6cdbb`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The Docker host-audit auxiliary command returned `1` because it has no hardware-verification record; the canonical offline gates passed.
- The dedicated Docker host harness passed reproducibly, including the direct zero-return ioctl test.

This is static/offline evidence only. It does not claim hardware execution or prove live character-device ioctl behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
