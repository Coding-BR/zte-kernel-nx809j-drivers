# zte_charger_policy — charger_policy_status_disable

Status: `CORE_GATES_PASS`; host harness passed and was reproducible. Hardware remains deferred and this package is an offline/static attestation, not authorization for loading the module.

- Identity: `charger_policy_status_disable@0x00101378`
- Stock body: 76 bytes / 19 AArch64 instructions
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`
- Candidate module SHA-256: `3b4a003d5ee99f635abb9bef49a871420fac79d5f2b55eb9b741643ea93f0cd7`
- Candidate module size: 309144 bytes
- KCFI: both stock and candidate have no valid KCFI preamble for this direct-call helper, and the comparison passed.

Assembly, relocations, KCFI, Joern scope/slice, Docker reproducibility, and map identity passed in `hard_protocol_report.json`. Joern required the explicit controlled `__used` preprocessor define because the source declaration uses that kernel annotation; no source semantics were relaxed.

The Docker audit uses the pinned image `nubia-sm8850-kernel-builder:latest`, source volume `nubia_sm8850_kernel_src`, toolchain volume `nubia_sm8850_kernel_toolchains`, and `clang-r536225`. Hardware testing remains `DEFERRED`.
