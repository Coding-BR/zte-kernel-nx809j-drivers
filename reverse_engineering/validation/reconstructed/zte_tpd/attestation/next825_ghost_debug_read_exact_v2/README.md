# `ghost_debug_read` — offline-exact promotion v2

This package records the repaired reconstruction of stock entry `0010d57c`.

The previous exact assembly artifact stopped at 182 instructions/728 bytes. The
candidate was regenerated from the preserved stock AArch64 assembly and now
matches the stock body at 212 instructions/848 bytes and 52 normalized
relocations. KCFI type `0xf4e9d97c` matches as well.

Validation gates passed:

- canonical Docker build in two cycles;
- AArch64 instruction, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan host harness;
- strict Joern function gate;
- curated-source synchronization.

Hardware validation remains deferred. The claim is limited to the preserved
stock artifacts and offline validation evidence in this directory.
