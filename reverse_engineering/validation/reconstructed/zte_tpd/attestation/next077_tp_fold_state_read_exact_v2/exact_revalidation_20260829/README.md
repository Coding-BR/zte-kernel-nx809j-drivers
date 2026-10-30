# `tp_fold_state_read` exact revalidation

- Target: `tp_fold_state_read` at stock entry `0x0010ceb0`.
- Stock body: 240 bytes / 60 AArch64 instructions.
- The C reconstruction was corrected from callback offset `0xe00` to the stock offset `0xfb8`; the Docker exact assembly source remains included as the canonical code-generation input.
- Canonical Docker build: passed twice with the pinned Android 16 / arm64 LLVM pipeline.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xf4e9d97c`, comparison passed.
- Direct source contract: four cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed.
- Hardware, Android runtime and real procfs behavior remain deferred.
