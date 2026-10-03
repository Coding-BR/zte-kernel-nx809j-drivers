# `charger_policy_probe_work` exact attestation

- Identity: `charger_policy_probe_work@0x00102c00`.
- Stock body: 816 bytes / 204 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `f4d6d32a5842197cc94983d302be0c6721583cf68f095de4ad70f99b06eec6de`.
- Candidate module size: 340208 bytes.
- KCFI: stock type-id `0xa607748c` was preserved in the candidate.
- Static assembly, external/local relocations, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves alarm/workqueue initialization, notifier and power-supply registration, all seven `zte_misc` node registrations, wakeup-source setup, retry accounting, cleanup paths, local helper pointers, and referenced `.rodata.str1.1` bytes.
- ELF aliases preserve the stock local-helper and retry-counter identities; node storage was aligned to the stock `.data` layout.
- Host harness: two reproducible builds/runs, 38 covered functions, PASS.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
