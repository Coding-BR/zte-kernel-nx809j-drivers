# zte_misc — zte_timezone_setup

Function-level offline exact attestation for `zte_timezone_setup` at `0x00101834`.

## Result

- Ghidra stock pseudocode/P-Code was reviewed.
- Stock and reconstructed candidate matched at 26 AArch64 instructions and 104 bytes.
- Assembly comparison passed, including relocation normalization.
- Stock and candidate matched KCFI type ID `0x7bff871d`.
- Docker hard protocol returned `CORE_GATES_PASS` with two reproducible builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225`.
- Joern strict scope and usage slice passed.
- The setup-callback ABI was corrected from `const char *` to `char *`, matching the stock KCFI type.
- The preserved direct host-test receipt covers valid and invalid `kstrtoll` paths.

The earlier v1 run is intentionally not promoted: it exposed the KCFI mismatch (`0x7d0afc77` versus stock `0x7bff871d`). This final v2 attestation is static/offline evidence only; live boot-argument execution and hardware behavior remain unverified.

The copied `assembly`, `docker`, `joern`, `kcfi` and `logs` directories contain the final protocol evidence. Root files preserve the plan, input manifest, report, source reconstruction and promotion decision; `ghidra` preserves the reviewed stock pseudocode and P-Code.
