# `accel_enable_store` exact attestation

- Stock identity: `accel_enable_store@0x00100b80`.
- Stock body: 240 bytes / 60 AArch64 instructions.
- Stock KCFI type ID: `0x95c41a97`; candidate KCFI and symbol size match.
- The exact body preserves `kstrtoint`, log-level behavior, 0/1 validation, mutex lock/unlock, enable-byte write, stack guard and error returns.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including assembly relocations, Docker reproducibility, Joern, KCFI and map identity.
- The existing host harness passed reproducibly in two Docker runs.

This is an offline static attestation and does not claim physical hardware verification.
