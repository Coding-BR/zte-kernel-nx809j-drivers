# `syna_dev_isr` exact offline attestation

Target `171_syna_dev_isr`, stock entry `0x001141b4`, is promoted as `PROMOTED_OFFLINE_EXACT`.

- The candidate uses the materialized stock AArch64 body in `candidate_exact.S` and the recovered `.rodata.str1.1` literals in `candidate_exact.inc`.
- Fresh assembly comparison passes at 56 instructions and 224 bytes.
- KCFI type `0xd2f00be1`, strict Joern, the two-cycle canonical Docker build and the reproducible ASan/UBSan host harness pass.
- The candidate module SHA-256 is `2d96523932cc47cd1a852f8cb0bba8e0806d12313277253bcf11c1f80f76ef2b` and its size is 20,303,488 bytes.
- Android interrupt scheduling, GPIO state and NX809J hardware behavior remain unverified.
