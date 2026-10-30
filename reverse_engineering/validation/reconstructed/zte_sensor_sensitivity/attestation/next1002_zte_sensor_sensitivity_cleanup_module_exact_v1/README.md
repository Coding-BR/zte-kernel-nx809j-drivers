# `cleanup_module` exact attestation

- Stock identity: `cleanup_module@0x001016fc` in `.exit.text`.
- Stock body: 28 bytes / 7 AArch64 instructions.
- Stock KCFI type ID: `0xe5c47d60`; candidate KCFI and symbol size match.
- The exact body preserves the `sensors_sensitivity_unregister` call and module cleanup section.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including section/relocation assembly comparison, Docker reproducibility, Joern, KCFI and map identity.
- The existing host harness passed reproducibly in two Docker runs.

This is an offline static attestation and does not claim physical hardware verification.
