# `tp_zlog_debug_read` exact revalidation

- Target: `tp_zlog_debug_read` at stock entry `0x0010d408`.
- Stock body: 156 bytes / 39 AArch64 instructions.
- The reconstruction preserves the stock literal `this no use`, one-shot read behavior and EOF for nonzero offsets.
- Canonical Docker build: passed twice with the pinned Android 16 / arm64 LLVM pipeline.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xf4e9d97c`, comparison passed.
- Direct source contract: four cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed.
- Hardware, Android runtime and real procfs behavior remain deferred.
