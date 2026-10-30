# zte_misc — zte_misc_remove

Function-level offline exact attestation for `zte_misc_remove` at `0x0010182c`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 1 AArch64 instruction and 4 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x24a11bb9`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.

This is static/offline evidence only. The target has no dedicated host harness; live platform-device teardown and hardware behavior remain unverified.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
