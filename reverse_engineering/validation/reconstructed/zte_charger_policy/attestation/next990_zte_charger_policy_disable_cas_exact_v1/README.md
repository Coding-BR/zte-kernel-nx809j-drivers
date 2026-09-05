# `charger_policy_disable_cas` exact attestation

- Identity: `charger_policy_disable_cas@0x00101cdc`.
- Stock body: 300 bytes / 75 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `2894cab92da98d61a7474a42d6f8fc8e85ae5a5fcb198c003cab7f05bf116db3`.
- Candidate module size: 319864 bytes.
- KCFI: stock and candidate both have no valid preamble; the stock extractor records the overlap with `charger_policy_get_prop_by_name`.
- Static assembly, relocation, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves the stock calls, control flow, stack-canary path, and referenced `.rodata.str1.1` bytes.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
