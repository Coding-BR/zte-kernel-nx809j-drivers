# `tp_fold_state_write` exact revalidation

- Target: `tp_fold_state_write` at stock entry `0x0010cfa4`.
- Stock body: 208 bytes / 52 AArch64 instructions.
- The C reconstruction was corrected from callback offset `0xe08` to the stock offset `0xfc0`; the Docker exact assembly source remains included as the canonical code-generation input.
- Canonical Docker build: passed twice with the pinned Android 16 / arm64 LLVM pipeline.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xc3d43b4d`, comparison passed.
- Direct source contract: four cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed.
- Hardware, Android runtime and real procfs behavior remain deferred.
