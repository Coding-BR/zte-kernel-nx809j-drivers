# `zte_charger_policy_set_prop_by_name` exact attestation

- Identity: `zte_charger_policy_set_prop_by_name@0x00102124`.
- Stock body: 256 bytes / 64 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `e00d9e2f36f09ca41af99f9fcfed257dd412b8a2b0962431b3958698d24f3918`.
- Candidate module size: 324424 bytes.
- KCFI: stock and candidate both have no valid preamble; the stock extractor records the overlap with `zte_charger_policy_get_prop_by_name`.
- Static assembly, relocation, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves the ZTE power-supply setter calls, error paths, stack-canary path, and referenced `.rodata.str1.1` bytes.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
