# `charger_policy_check_usb_present` exact attestation

- Identity: `charger_policy_check_usb_present@0x00103294`.
- Stock body: 576 bytes / 144 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `19a4d8338481a8ffdc8a95f5e85030905a5c2a55e9dcf93718d8d1199cd6e2bd`.
- Candidate module size: 346224 bytes.
- KCFI: stock and candidate preserve the same no-valid-preamble state; the stock extractor excludes this function because the candidate preamble overlaps the neighboring function body.
- Static assembly, external relocations, input identity, Joern scope/slice, KCFI state, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves USB online, USB suspend/present, wireless online, property-helper calls, power-supply reference release, logging branches, and referenced `.rodata.str1.1` bytes.
- Host harness: two reproducible builds/runs, 38 covered functions, PASS.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
