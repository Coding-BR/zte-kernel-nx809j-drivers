# `accel_enable_show` exact attestation

- Stock identity: `accel_enable_show@0x00100afc`.
- Stock body: 128 bytes / 32 AArch64 instructions.
- Stock KCFI type ID: `0xae84bcd4`; candidate KCFI and symbol size match.
- The exact body preserves the driver-data offset, enable-byte read, log-level branch, four rodata pointers, `sprintf` call and signed return conversion.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including assembly relocations, Docker reproducibility, Joern, KCFI and map identity.
- The existing host harness passed reproducibly in two Docker runs.

This is an offline static attestation and does not claim physical hardware verification.
