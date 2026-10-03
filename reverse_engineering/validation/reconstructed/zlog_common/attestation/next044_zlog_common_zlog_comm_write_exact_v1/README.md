# zlog_common — zlog_comm_write

Function-level offline exact attestation for the stock character-device callback `zlog_comm_write` at `0x00100f9c`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 116 AArch64 instructions and 464 bytes.
- The assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0xc3d43b4d`.
- The reconstructed callback ABI retains type `0xc2a6c845` as `int (void *, int)`.
- Docker hard protocol returned `CORE_GATES_PASS` with two clean builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Both Docker builds produced SHA-256 `f8666e5c1cbbf446407c5488074fa33f973e206e02a7d54bf6e14a1f5b642457`.
- Joern strict scope and usage slice passed with zero parse problems and zero unresolved calls, including the indirect callback path.
- The host harness passed reproducibly, including count, copy and callback paths.

This is static/offline evidence only. It does not claim hardware execution or prove live character-device I/O, callback lifetime or scheduler behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision.
