# `ufp_single_tap_work` — offline-exact promotion v2

This package records the validated reconstruction of stock entry `0011108c`.

The candidate matches the stock body at 3 AArch64 instructions/12 bytes and
2 normalized relocations. KCFI type `0xa607748c` also matches. The preserved
ASan/UBSan host report passed in two runs, and the canonical Docker build was
reproduced in two accepted cycles.

Validation gates passed:

- canonical Docker build in two cycles;
- AArch64 instruction, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan host harness;
- strict Joern function gate;
- curated-source synchronization.

The current host tree does not contain the source file for the preserved host
report; the report itself remains versioned here. Hardware validation remains
deferred. The claim is limited to the preserved stock artifacts and offline
validation evidence in this directory.
