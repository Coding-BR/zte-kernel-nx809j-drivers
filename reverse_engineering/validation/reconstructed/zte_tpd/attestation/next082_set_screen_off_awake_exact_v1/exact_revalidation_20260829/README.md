# `set_screen_off_awake` exact revalidation

- Target: `set_screen_off_awake` at stock entry `0x0010d334`.
- Stock body: 208 bytes / 52 AArch64 instructions.
- The C reconstruction was corrected from callback offset `0xe28` to the stock offset `0xfe0`; the Docker exact assembly source remains included as the canonical code-generation input.
- Canonical Docker build: passed twice with the pinned Android 16 / arm64 LLVM pipeline.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xc3d43b4d`, comparison passed.
- Direct source contract: four cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed.
- This target is distinct from the internal `tpd_set_screen_off_awake` helper.
- Hardware, Android runtime and real procfs behavior remain deferred.
