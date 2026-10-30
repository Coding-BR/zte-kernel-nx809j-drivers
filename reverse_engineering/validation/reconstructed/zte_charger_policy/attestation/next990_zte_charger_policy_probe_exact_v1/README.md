# `charger_policy_probe` exact attestation

- Identity: `charger_policy_probe@0x001023ec`.
- Stock body: 1952 bytes / 488 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `4232e2b6fce97a37388339e96c132cab7f2fbf3fc1143853f1cf49c99bf73a4e`.
- Candidate module size: 336408 bytes.
- KCFI: stock type-id `0xc7f8c87c` was preserved in the candidate.
- Static assembly, external/local relocations, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves Device Tree parsing, fallback defaults, workqueue/timer setup, `charger_policy_probe_work` pointer relocation, error cleanup, and referenced `.rodata.str1.1` bytes.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
