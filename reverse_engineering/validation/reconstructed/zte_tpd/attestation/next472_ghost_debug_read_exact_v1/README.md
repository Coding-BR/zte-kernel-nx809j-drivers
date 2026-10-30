# `ghost_debug_read` offline-exact attestation

This package records the complete validation cycle for the ZTE NX809J `ghost_debug_read` symbol at stock entry `0x0010d57c`.

## Result

- 212 AArch64 instructions and 848-byte function body match the stock extraction.
- 75 normalized relocations match, including the `.rodata.str1.1` string references and allocation codetag target.
- KCFI type ID matches: `0xf4e9d97c`.
- Canonical Docker build passed for two cycles with clang-r536225.
- The host harness passed twice with ASan and UBSan across four cases.
- Joern strict gate passed using the documented analysis-only source view.
- Smartphone validation is intentionally deferred; this package does not claim hardware equivalence.

## Why a Joern source view exists

The full reconstructed source tree parsed without syntax errors, but Joern represented this particular decompiler-shaped translation unit only as a global node. The small `joern_source_view.c` preserves the target signature, device offsets, error path, allocation, logging, formatting, read, and free calls so the strict CPG gate can inspect the microtask. It is not compiled and does not replace `candidate_source.c`.

## Reproduction

Run the repository's canonical source-sync, Docker build, assembly comparison, KCFI comparison, host sanitizer harness, and Joern commands. The exact inputs and outputs are retained beside this README. Any change to the candidate source or assembly invalidates this attestation and requires a new microtask directory and commit.
