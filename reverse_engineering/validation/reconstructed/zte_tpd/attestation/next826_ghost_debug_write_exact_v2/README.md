# `ghost_debug_write` — offline-exact promotion v2

This package records the validated reconstruction of stock entry `0010d8d0`.

The candidate matches the stock body at 111 AArch64 instructions/444 bytes
and 8 normalized relocations. KCFI type `0xc3d43b4d` also matches.

Validation gates passed:

- canonical Docker build in two cycles;
- AArch64 instruction, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan host harness in two reproducible cycles;
- strict Joern function gate;
- curated-source synchronization.

Hardware validation remains deferred. The claim is limited to the preserved
stock artifacts and offline validation evidence in this directory.
