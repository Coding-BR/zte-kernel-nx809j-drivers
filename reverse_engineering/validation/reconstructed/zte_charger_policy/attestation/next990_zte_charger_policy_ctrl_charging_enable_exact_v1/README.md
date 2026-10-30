# `charger_policy_ctrl_charging_enable` exact attestation

- Identity: `charger_policy_ctrl_charging_enable@0x00101e08`.
- Stock body: 536 bytes / 134 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `f5c565e28d7b41424002b40cd36d6dba5a2e44803ba1339077cf9e47b4bd1f38`.
- Candidate module size: 322408 bytes.
- KCFI: stock and candidate both have no valid preamble; the stock extractor records the overlap with `charger_policy_disable_cas`.
- Static assembly, local-call relocations, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- Local helper calls to `charger_policy_get_prop_by_name`, `zte_charger_policy_get_prop_by_name`, and `zte_charger_policy_set_prop_by_name` are retained as explicit `CALL26` relocations.
- The exact inline assembly preserves the stock control flow, state decisions, stack-canary path, and referenced `.rodata.str1.1` bytes.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
