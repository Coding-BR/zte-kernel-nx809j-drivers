# `policy_psy_set_property` exact attestation

- Stock identity: `policy_psy_set_property@0x00103678`.
- Ghidra body reviewed: `decompiled/0033_00103678_policy_psy_set_property.c`.
- Stock body: 220 bytes / 55 AArch64 instructions.
- Stock KCFI type ID: `0x719ad693`; candidate KCFI and symbol size match.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed: assembly relocations, Docker reproducibility, input identity, Joern scope/slice, KCFI and map identity.
- The exact body preserves the driver-data lookup, ONLINE/PRESENT dispatch, state writes, logging strings, error returns and delayed-work scheduling.
- Host tests passed reproducibly in two Docker runs and covered 38 driver functions.

This is an offline static attestation. It does not claim physical hardware verification.
