# zte_stats_info — zte_mk_reply

Function-level offline exact attestation for the stock symbol `zte_mk_reply` at `0x00100f2c`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 71 AArch64 instructions and 284 bytes.
- The assembly comparison passed, including relocation normalization.
- Stock and candidate both reported `NO_VALID_KCFI_PREAMBLE`; this direct helper has no indirect callback boundary, so no callback KCFI type-ID claim is made.
- Docker hard protocol returned `CORE_GATES_PASS` with two clean builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Both Docker builds produced SHA-256 `51894b326a94465c3189fff6f3c1c72b409f4e9eb23e950ab8654478f1c7cd54`.
- Joern strict scope and usage slice passed with zero parse problems and zero unresolved calls.
- The host harness passed reproducibly, including direct taskstats reply construction and error paths.

This is static/offline evidence only. It does not claim hardware execution or prove live-kernel netlink/taskstats behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root JSON files preserve the plan, input manifest, report and promotion decision.
