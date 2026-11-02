# `syna_mmap` exact offline attestation

Target `176_syna_mmap`, stock entry `0x001147ec`, is promoted as `PROMOTED_OFFLINE_EXACT`.

- The candidate uses the materialized stock AArch64 body in `candidate_exact.S` and the recovered `.rodata.str1.1` literals in `candidate_exact.inc`.
- Fresh assembly comparison passes at 44 instructions and 176 bytes.
- KCFI type `0x7de14acc`, strict Joern, the two-cycle canonical Docker build and the four-case ASan/UBSan host harness pass.
- The candidate module SHA-256 is `b3960a91bc2edeeafc45a146e40c37b2616cb451a03ae8c9c70ae8026877dd19` and its size is 20,401,400 bytes.
- Android runtime, MMU mapping and NX809J hardware behavior remain unverified.
