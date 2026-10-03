# `zte_charger_policy_get_prop_by_name` exact attestation

- Identity: `zte_charger_policy_get_prop_by_name@0x00102020`.
- Stock body: 260 bytes / 65 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `9f2079e1227ef6912144662fca723e1fd40026e766cca9d5c6f9a9a4eb431424`.
- Candidate module size: 323440 bytes.
- KCFI: stock and candidate both have no valid preamble; the stock extractor records the overlap with `charger_policy_ctrl_charging_enable`.
- Static assembly, relocation, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves the ZTE power-supply calls, error paths, stack-canary path, and referenced `.rodata.str1.1` bytes.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
