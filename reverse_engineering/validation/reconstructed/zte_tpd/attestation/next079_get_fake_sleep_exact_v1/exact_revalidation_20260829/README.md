# `get_fake_sleep` exact revalidation

- Target: `get_fake_sleep` at stock entry `0x0010d078`.
- Stock body: 240 bytes / 60 AArch64 instructions.
- The C reconstruction was corrected from callback offset `0xe10` to the stock offset `0xfc8`; the Docker exact assembly source remains included as the canonical code-generation input.
- Canonical Docker build: passed twice with the pinned Android 16 / arm64 LLVM pipeline.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xf4e9d97c`, comparison passed.
- Direct source contract: four cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed.
- This target is distinct from the internal `tpd_get_fake_sleep` state-copy helper.
- Hardware, Android runtime and real procfs behavior remain deferred.
