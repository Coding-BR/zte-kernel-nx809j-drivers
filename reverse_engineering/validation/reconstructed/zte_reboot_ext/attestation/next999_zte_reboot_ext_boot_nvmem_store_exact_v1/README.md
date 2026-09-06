# `boot_nvmem_store` exact attestation

- Stock identity: `boot_nvmem_store@0x0010131c`.
- Stock body: 40 bytes / 10 AArch64 instructions.
- Stock KCFI type ID: `0x7a5b5d2f`; candidate KCFI and symbol size match.
- The exact body preserves the stock `.rodata` diagnostic string, `_printk` call and `-EINVAL` return.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including assembly relocations, Docker reproducibility, Joern, KCFI and map identity.
- The existing host harness passed reproducibly in two Docker runs.

This is an offline static attestation and does not claim physical hardware verification.
