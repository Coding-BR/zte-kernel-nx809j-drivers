# Exact revalidation: 040_inline_copy_from_user

This package records the Docker-based revalidation of stock `_inline_copy_from_user` against reconstructed `zte_inline_copy_from_user` at entry `0010a5c8`.

- Docker canonical build: 2 independent cycles, reproducible module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: 61/61 instructions, 244/244 bytes, and relocations equivalent.
- KCFI: both reports have no valid KCFI preamble; presence, section and size match exactly, with no type ID to compare.
- Joern strict: PASS with zero parse problems and one-to-one source/Ghidra coverage; no review findings were emitted.
- Dedicated ASAN/UBSAN contract: 5 cases in each of 2 reproducible cycles.

The host harness models normal success, masked success, access denial, partial copy and forced failure, including destination zeroing. It does not execute privileged AArch64 TTBR/DAIF instructions or hardware paths; those remain represented by the separate assembly comparison.
