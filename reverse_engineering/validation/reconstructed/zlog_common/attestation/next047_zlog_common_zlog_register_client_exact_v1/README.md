# zlog_common — zlog_register_client

Function-level offline exact attestation for the stock client registration helper `zlog_register_client` at `0x00100644`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 207 AArch64 instructions and 828 bytes.
- The historical 816-byte candidate discrepancy is not present in the current source build.
- The assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x09fbc74f`.
- Docker hard protocol returned `CORE_GATES_PASS` with two clean builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Both Docker builds produced SHA-256 `f8666e5c1cbbf446407c5488074fa33f973e206e02a7d54bf6e14a1f5b642457`.
- Joern strict scope and usage slice passed with zero parse problems and zero unresolved calls.
- The host harness passed reproducibly, including duplicate registration, allocation failure and 32-slot-limit paths.

This is static/offline evidence only. It does not claim hardware execution or prove live mutex, client lifetime or concurrent registration behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision.
