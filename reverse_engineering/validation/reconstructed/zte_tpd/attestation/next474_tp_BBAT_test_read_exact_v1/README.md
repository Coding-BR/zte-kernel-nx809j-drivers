# `tp_BBAT_test_read` offline-exact attestation

This package records the complete validation cycle for the ZTE NX809J `tp_BBAT_test_read` symbol at stock entry `0x0010da90`.

## Result

- 65 AArch64 instructions and 260-byte function body match the stock extraction.
- Six normalized relocations match, including the device global, BBAT diagnostic strings, formatter, read helper, and stack-failure path.
- KCFI type ID matches: `0xf4e9d97c`.
- Canonical Docker build passed for two cycles with clang-r536225.
- The host harness passed twice with ASan and UBSan across callback success, callback error, fallback, and EOF cases.
- Joern strict gate passed using the documented analysis-only source view.
- Smartphone validation is intentionally deferred; this package does not claim hardware equivalence.

## Why a Joern source view exists

The full reconstructed source tree parsed without syntax errors, but Joern represented this decompiler-shaped translation unit only as a global node. The small `joern_source_view.c` preserves the target signature, callback path, fallback byte offset, formatting, read helper, and EOF behavior so the strict CPG gate can inspect the microtask. It is not compiled and does not replace `candidate_source.c`.

## Reproduction

Run the repository's canonical source-sync, Docker build, assembly comparison, KCFI comparison, host sanitizer harness, and Joern commands. The exact inputs and outputs are retained beside this README. Any change to the candidate source or assembly invalidates this attestation and requires a new microtask directory and commit.
