# `tp_palm_mode_write` exact revalidation

- Target: `tp_palm_mode_write` at stock entry `0x0010cddc`.
- Stock body: 208 bytes / 52 AArch64 instructions.
- Canonical Docker build: passed twice with the pinned Android 16 / arm64 LLVM pipeline.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xc3d43b4d`, comparison passed.
- Direct source contract: three cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed.
- Hardware, Android runtime and real procfs behavior remain deferred.
