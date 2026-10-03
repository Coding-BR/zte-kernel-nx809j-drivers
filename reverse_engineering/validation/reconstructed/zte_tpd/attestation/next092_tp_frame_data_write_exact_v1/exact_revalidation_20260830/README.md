# `tp_frame_data_write` exact revalidation

- Target: `tp_frame_data_write` at stock entry `0x0010de08`.
- Stock body: 208 bytes / 52 AArch64 instructions.
- The reconstruction preserves decimal user parsing, boolean normalization, logging, callback invocation at `tpd_cdev+0xff8`, null-callback behavior and the `-EINVAL` error path.
- The linked candidate object is built from `candidate_exact_source.S`, which preserves the stock function body under the canonical Docker toolchain.
- Canonical Docker build: passed twice with identical module hash.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xc3d43b4d`, symbol size 208 bytes; comparison passed.
- Direct source contract: four cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed with no parser problems or unresolved calls.
- Hardware, Android runtime and real procfs behavior remain deferred.

This package claims function-level `OFFLINE_EXACT` evidence only. It does not claim complete driver or smartphone equivalence.
