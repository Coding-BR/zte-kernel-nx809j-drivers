# `zte_reboot_ext_panic` exact attestation

- Stock identity: `zte_reboot_ext_panic@0x001010bc`.
- Stock body: 60 bytes / 15 AArch64 instructions.
- Stock KCFI type ID: `0xd5127a3b`; candidate KCFI and symbol size match.
- The exact body preserves the notifier offset (`nb - 0x68`), `saved_nvmem_buf` byte store, `get_ss_panic_buf_byte` call, local `save_panic_buf_data_to_nvmem` call and `NOTIFY_OK` return.
- Docker image: `nubia-sm8850-kernel-builder:latest` with `clang-r536225`.
- All automated protocol gates passed, including assembly relocations, Docker reproducibility, Joern, KCFI and map identity.
- The existing host harness passed reproducibly in two Docker runs.

This is an offline static attestation and does not claim physical hardware verification.
