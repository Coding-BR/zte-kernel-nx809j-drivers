# `init_module` exact attestation

- Stock identity: `init_module@0x00101348` in `.init.text`.
- Stock body: 44 bytes / 11 AArch64 instructions.
- Stock KCFI type ID: `0x6fbb3035`; candidate KCFI and symbol size match.
- The exact body preserves the `.data+0xc0` driver-object relocation, `__this_module` relocation and `__platform_driver_register` call.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including section/relocation assembly comparison, Docker reproducibility, Joern, KCFI and map identity.
- The existing host harness passed reproducibly in two Docker runs.

This is an offline static attestation and does not claim physical hardware verification.
