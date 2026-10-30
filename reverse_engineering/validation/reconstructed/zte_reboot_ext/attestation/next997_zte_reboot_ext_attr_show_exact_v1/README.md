# `attr_show` exact attestation

- Stock identity: `attr_show@0x001010fc`.
- Stock body: 68 bytes / 17 AArch64 instructions.
- Stock KCFI type ID: `0x618e6a55`; candidate KCFI and symbol size match.
- The exact body preserves the null callback return (`-EIO`), KCFI type check, breakpoint path and indirect `show` callback ABI.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including assembly relocations, Docker reproducibility, Joern, KCFI and map identity.
- The existing host harness passed reproducibly in two Docker runs.

This is an offline static attestation and does not claim physical hardware verification.
