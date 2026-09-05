# `charger_policy_remove` exact attestation

- Identity: `charger_policy_remove@0x00102b90`.
- Stock body: 108 bytes / 27 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `716434f46f8aefaca42ae80b078328d08e268cc07f7744ecf32b4fbbb2043e89`.
- Candidate module size: 337056 bytes.
- KCFI: stock type-id `0x24a11bb9` was preserved in the candidate.
- Static assembly, external relocations, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves notifier unregistration, wakeup-source lifetime release, `devm_kfree`, and the referenced `.rodata.str1.1` bytes.
- Host harness: two reproducible builds/runs, 38 covered functions, PASS.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
