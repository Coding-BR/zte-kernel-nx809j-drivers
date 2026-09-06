# zlog_common — zlog_comm_read

Function-level offline exact attestation for the stock character-device callback `zlog_comm_read` at `0x00100f90`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 2 AArch64 instructions and 8 bytes.
- The assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0xf4e9d97c`.
- Docker hard protocol returned `CORE_GATES_PASS` with two clean builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Both Docker builds produced SHA-256 `f8666e5c1cbbf446407c5488074fa33f973e206e02a7d54bf6e14a1f5b642457`.
- Joern strict scope and usage slice passed with zero parse problems and zero unresolved calls.
- The host harness passed reproducibly, including the direct count-passthrough path.

This is static/offline evidence only. It does not claim hardware execution or prove live character-device I/O behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision.
