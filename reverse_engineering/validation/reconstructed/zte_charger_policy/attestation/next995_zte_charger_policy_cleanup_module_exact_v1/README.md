# `cleanup_module` exact attestation

- Stock identity: `cleanup_module@0x001037a4` in `.exit.text`.
- Stock body: 36 bytes / 9 AArch64 instructions.
- Stock KCFI type ID: `0xe5c47d60`; candidate KCFI and symbol size match.
- The exact body preserves the `.data+0x178` driver-object relocation and `platform_driver_unregister` call.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including section/relocation assembly comparison, Docker reproducibility, Joern, KCFI and map identity.
- Host tests passed reproducibly in two Docker runs and covered 38 driver functions.

This is an offline static attestation and does not claim physical hardware verification.
