# `attr_store` exact attestation

- Stock identity: `attr_store@0x00101144`.
- Stock body: 68 bytes / 17 AArch64 instructions.
- Stock KCFI type ID: `0x7a5b5d2f`; candidate KCFI and symbol size match.
- The exact body preserves the null callback return (`-EIO`), KCFI type check, breakpoint path and indirect `store` callback ABI.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including assembly relocations, Docker reproducibility, Joern, KCFI and map identity.
- The existing host harness passed reproducibly in two Docker runs.

This is an offline static attestation and does not claim physical hardware verification.
