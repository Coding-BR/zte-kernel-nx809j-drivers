# `tp_BBAT_test_read` exact revalidation

- Target: `tp_BBAT_test_read` at stock entry `0x0010da90`.
- Stock body: 260 bytes / 65 AArch64 instructions.
- The reconstruction preserves the offset-zero-only read contract, indirect BBAT callback, callback result/printk path, no-callback fallback, decimal formatting and partial-read behavior.
- The readable lift initializes two unused lifted `printk` varargs to zero to satisfy strict host compilation; the linked candidate object is built from `candidate_exact_source.S` and remains byte-for-byte function-equivalent to stock.
- Canonical Docker build: passed twice with identical module hash.
- Function assembly comparison: passed with normalized relocations.
- KCFI: stock and candidate type ID `0xf4e9d97c`, symbol size 260 bytes; comparison passed.
- Direct source contract: four cases, two repetitions, ASan and UBSan, passed.
- Joern strict reconstruction gate: passed with no parser problems or unresolved calls.
- Hardware, Android runtime and real procfs behavior remain deferred.

This package claims function-level `OFFLINE_EXACT` evidence only. It does not claim complete driver or smartphone equivalence.
