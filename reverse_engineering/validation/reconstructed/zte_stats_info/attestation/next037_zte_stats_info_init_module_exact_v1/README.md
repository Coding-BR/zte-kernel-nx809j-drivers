# zte_stats_info — init_module

Function-level offline exact attestation for the generated module-init symbol `init_module` at `0x00101060`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 55 AArch64 instructions and 220 bytes.
- The assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x6fbb3035` at the module-init boundary.
- The source identity is `zte_taskstats_init_early`; `module_init(zte_taskstats_init_early)` generates the ELF symbol `init_module`.
- Docker hard protocol returned `CORE_GATES_PASS` with two clean builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Both Docker builds produced SHA-256 `51894b326a94465c3189fff6f3c1c72b409f4e9eb23e950ab8654478f1c7cd54`.
- Joern strict scope and usage slice passed with zero parse problems and zero unresolved calls.
- The host harness passed reproducibly, including per-CPU listener initialization and Genetlink registration paths.

This is static/offline evidence only. It does not claim hardware execution or prove live kernel registration, per-CPU state or scheduler behavior.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root JSON files preserve the plan, input manifest, report and promotion decision.
