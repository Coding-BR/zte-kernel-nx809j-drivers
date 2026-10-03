# `ufp_get_lcdstate` — offline-exact promotion v2

This package records the validated reconstruction of stock entry `00110868`.

The candidate matches the stock body at 3 AArch64 instructions/12 bytes and
2 normalized relocations. KCFI type `0x6fbb3035` matches in reports regenerated
directly from the bundled candidate and stock modules. The preserved ASan/UBSan
harness passed, and the canonical Docker build was reproduced in two accepted
cycles.

Validation gates passed:

- canonical Docker build in two cycles;
- AArch64 instruction, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan host harness;
- strict Joern function gate;
- curated-source synchronization.

Hardware validation remains deferred. The claim is limited to the preserved
stock artifacts and offline validation evidence in this directory.
