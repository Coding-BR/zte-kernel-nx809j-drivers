# `init_module` exact attestation

- Stock identity: `init_module@0x001016a4` in `.init.text`.
- Stock body: 84 bytes / 21 AArch64 instructions.
- Stock KCFI type ID: `0x6fbb3035`; candidate KCFI and symbol size match.
- The exact body preserves the log-level branch, three `.rodata` pointers, `_printk` call, `sensors_sensitivity_register` call and zero return.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including section/relocation assembly comparison, Docker reproducibility, Joern, KCFI and map identity.
- The existing host harness passed reproducibly in two Docker runs.

This is an offline static attestation and does not claim physical hardware verification.
