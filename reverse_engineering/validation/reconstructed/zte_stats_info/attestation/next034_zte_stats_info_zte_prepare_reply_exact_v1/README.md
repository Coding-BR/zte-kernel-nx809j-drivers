# zte_stats_info — zte_prepare_reply

Function-level offline exact attestation for the stock symbol `zte_prepare_reply` at `0x00100e20`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 67 AArch64 instructions and 268 bytes.
- The assembly comparison passed, including relocation normalization.
- Stock and candidate both reported `NO_VALID_KCFI_PREAMBLE`; this direct helper has no indirect callback boundary, so no callback KCFI type-ID claim is made.
- Docker hard protocol returned `CORE_GATES_PASS` with two clean builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Both Docker builds produced SHA-256 `51894b326a94465c3189fff6f3c1c72b409f4e9eb23e950ab8654478f1c7cd54`.
- Joern strict scope and usage slice passed with zero parse problems and zero unresolved calls. The job explicitly defines `__used`, which is required for Joern to retain this annotated helper in its source CPG.
- The host harness passed reproducibly, including direct netlink reply allocation and error paths.

This is static/offline evidence only. It does not claim hardware execution or prove live-kernel netlink allocator/message behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root JSON files preserve the plan, input manifest, report and promotion decision.
