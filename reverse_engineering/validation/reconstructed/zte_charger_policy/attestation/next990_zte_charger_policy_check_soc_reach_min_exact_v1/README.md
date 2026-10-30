# `charger_policy_check_soc_reach_min` exact attestation

- Identity: `charger_policy_check_soc_reach_min@0x00102224`.
- Stock body: 452 bytes / 113 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `a35943dc6dfedfbc94be7fe46ea8e9d32ab6a6d212b318edb5e9f268884a205b`.
- Candidate module size: 326168 bytes.
- KCFI: stock and candidate both have no valid preamble; the stock extractor records the overlap with `zte_charger_policy_set_prop_by_name`.
- Static assembly, local-call relocation, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves the capacity threshold branches, logging gates, local getter call, stack-canary path, and referenced `.rodata.str1.1` bytes.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
