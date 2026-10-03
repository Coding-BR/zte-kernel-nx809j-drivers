# `charger_policy_timeout_handler_work` exact attestation

- Identity: `charger_policy_timeout_handler_work@0x00102f34`.
- Stock body: 864 bytes / 216 instructions.
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- Candidate module SHA-256: `b5ad899823b2ec690d7ab647e62eac066aa94bc6e9e1e6a5a120847b726dfa77`.
- Candidate module size: 343296 bytes.
- KCFI: stock type-id `0xa607748c` was preserved in the candidate.
- Static assembly, external/local relocations, input identity, Joern scope/slice, KCFI, map identity, and Docker reproducibility gates: PASS.
- The exact inline assembly preserves battery-status and temperature checks, status-change notification, USB/policy branches, alarm scheduling/cancellation, wake-lock balancing, status-handler dispatch, charging reset, CAS disable, retry-independent logger state, and referenced `.rodata.str1.1` bytes.
- The stock static logger counter identity `charger_policy_logger_limit.time_pre.0` is preserved through an explicit ELF alias.
- Host harness: two reproducible builds/runs, 38 covered functions, PASS.
- Docker used `nubia-sm8850-kernel-builder:latest`, volumes `nubia_sm8850_kernel_src` / `nubia_sm8850_kernel_toolchains`, and `clang-r536225`.
- Hardware/runtime validation remains intentionally outside this offline promotion.
