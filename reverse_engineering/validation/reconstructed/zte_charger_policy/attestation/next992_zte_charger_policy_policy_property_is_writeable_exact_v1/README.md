# `policy_property_is_writeable` exact attestation

- Stock identity: `policy_property_is_writeable@0x00103758`.
- Stock body: 16 bytes / 4 AArch64 instructions.
- Stock KCFI type ID: `0x618f9ead`; candidate KCFI and symbol size match.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including assembly, Docker reproducibility, Joern, KCFI and map identity.
- The exact body preserves the stock unsigned range test for writable power-supply properties.
- Host tests passed reproducibly in two Docker runs and covered 38 driver functions.

This is an offline static attestation and does not claim physical hardware verification.
