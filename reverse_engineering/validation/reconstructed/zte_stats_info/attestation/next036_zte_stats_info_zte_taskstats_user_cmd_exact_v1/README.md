# zte_stats_info — zte_taskstats_user_cmd

Function-level offline exact attestation for the stock Genetlink callback `zte_taskstats_user_cmd` at `0x00100344`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 473 AArch64 instructions and 1892 bytes.
- The assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x9a5b8f4f` at the callback boundary.
- Docker hard protocol returned `CORE_GATES_PASS` with two clean builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Both Docker builds produced SHA-256 `51894b326a94465c3189fff6f3c1c72b409f4e9eb23e950ab8654478f1c7cd54`.
- Joern strict scope and usage slice passed with zero parse problems and zero unresolved calls.
- The host harness passed reproducibly, including command dispatch, replies, listener handling and taskstats error paths.

This is static/offline evidence only. It does not claim hardware execution or prove live Genetlink registration, task lifetime, namespace or scheduler behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root JSON files preserve the plan, input manifest, report and promotion decision.
