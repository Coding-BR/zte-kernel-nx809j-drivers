# `tp_frame_data_read` exact revalidation

- Target: `tp_frame_data_read` at stock entry `0x0010dd14`.
- Stock body: 240 bytes / 60 AArch64 instructions.
- The reconstruction preserves the offset-zero-only read contract, optional indirect callback with `tpd_cdev`, frame-data offset `0x460`, logging, unsigned decimal formatting and partial-read behavior.
- The linked candidate object is built from `candidate_exact_source.S`, which preserves the stock function body under the canonical Docker toolchain.
- Canonical Docker build: passed twice with identical module hash.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xf4e9d97c`, symbol size 240 bytes; comparison passed.
- Direct source contract: four cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed with no parser problems or unresolved calls.
- Hardware, Android runtime and real procfs behavior remain deferred.

This package claims function-level `OFFLINE_EXACT` evidence only. It does not claim complete driver or smartphone equivalence.
