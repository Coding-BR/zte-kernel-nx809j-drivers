# `policy_psy_get_property` exact attestation

- Identity: `policy_psy_get_property@0x00103564`.
- Stock body: 272 bytes / 68 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `4b68b8bafb3d98b847243198e6a30686f7d7d16170a65a75e82bd941be38ba0f`.
- Candidate module size: 347424 bytes.
- KCFI: stock type-id `0xe8990cd3` was preserved in the candidate.
- Static assembly, external/local relocations, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves driver-data lookup, property dispatch, policy-state fields, local USB-presence callback, output writes, unsupported-property errors, and referenced `.rodata.str1.1` bytes.
- Host harness: two reproducible builds/runs, 38 covered functions, PASS.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
