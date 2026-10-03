# `policy_external_power_changed` exact attestation

- Stock identity: `policy_external_power_changed@0x0010376c`.
- Stock body: 4 bytes / 1 AArch64 instruction (`ret`).
- Stock KCFI type ID: `0x19768773`; candidate KCFI and symbol size match.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including assembly, Docker reproducibility, Joern, KCFI and map identity.
- The exact body preserves the stock no-op callback ABI.
- Host tests passed reproducibly in two Docker runs and covered 38 driver functions.

This is an offline static attestation and does not claim physical hardware verification.
