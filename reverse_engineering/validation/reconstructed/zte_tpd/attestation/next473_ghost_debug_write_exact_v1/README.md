# `ghost_debug_write` offline-exact attestation

This package records the complete validation cycle for the ZTE NX809J `ghost_debug_write` symbol at stock entry `0x0010d8d0`.

## Result

- 111 AArch64 instructions and 444-byte function body match the stock extraction.
- The normalized relocation comparison passes, including the CSV delimiter, error string, device global, and helper-call references.
- KCFI type ID matches: `0xc3d43b4d`.
- Canonical Docker build passed for two cycles with clang-r536225.
- The host harness passed twice with ASan and UBSan across four cases: full CSV, count cap, null user buffer, and copy failure.
- Joern strict gate passed using the documented analysis-only source view.
- Smartphone validation is intentionally deferred; this package does not claim hardware equivalence.

## Relocation detail

The stock disassembly contains a fixed-encoded branch to `_inline_copy_from_user` without an emitted ELF relocation. The exact assembly keeps the stock opcode and adds an explicit `R_AARCH64_CALL26` relocation for that helper, so the branch destination is preserved when the external module is linked at a different `M=` path. The comparison treats call relocations as branch-target evidence and still reports the same normalized instruction stream.

## Why a Joern source view exists

The full reconstructed source tree parsed without syntax errors, but Joern represented this decompiler-shaped translation unit only as a global node. The small `joern_source_view.c` preserves the target signature, CSV parser, user-copy failure path, device offsets, logging, and return behavior so the strict CPG gate can inspect the microtask. It is not compiled and does not replace `candidate_source.c`.

## Reproduction

Run the repository's canonical source-sync, Docker build, assembly comparison, KCFI comparison, host sanitizer harness, and Joern commands. The exact inputs and outputs are retained beside this README. Any change to the candidate source or assembly invalidates this attestation and requires a new microtask directory and commit.
