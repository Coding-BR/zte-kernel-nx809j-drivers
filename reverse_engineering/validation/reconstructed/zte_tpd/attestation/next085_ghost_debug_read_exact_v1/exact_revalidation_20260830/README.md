# `ghost_debug_read` exact revalidation

- Target: `ghost_debug_read` at stock entry `0x0010d57c`.
- Stock body: 848 bytes / 212 AArch64 instructions.
- The reconstruction preserves the offset-zero-only read contract, 3520-byte allocation, device offsets, report literals, `snprintf` sequence, partial-read cursor behavior, cleanup and `-ENOMEM` path.
- The linked candidate object is built from `candidate_exact_source.S`, which preserves the stock function body under the canonical Docker toolchain.
- Canonical Docker build: passed twice with identical module hash.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xf4e9d97c`, symbol size 848 bytes; comparison passed.
- Direct source contract: four cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed with no parser problems or unresolved calls.
- Hardware, Android runtime and real procfs behavior remain deferred.

This package claims function-level `OFFLINE_EXACT` evidence only. It does not claim complete driver or smartphone equivalence.
