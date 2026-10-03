# `charger_policy_notifier_switch` exact attestation

- Identity: `charger_policy_notifier_switch@0x001034d8`.
- Stock body: 136 bytes / 34 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `7771fee0a2d7ff3e29234af52c33d68d38f7c28b27ab02f9c695ccb533a8c141`.
- Candidate module size: 346664 bytes.
- KCFI: stock type-id `0xd5127a3b` was preserved in the candidate.
- Static assembly, external relocations, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves action filtering, notifier/workqueue state checks, battery/USB name comparisons, delayed-work scheduling, and the referenced `.rodata.str1.1` bytes.
- Host harness: two reproducible builds/runs, 38 covered functions, PASS.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
