# `tp_BBAT_test_read` — offline-exact promotion v2

This package records the validated reconstruction of stock entry `0010da90`.

The candidate matches the stock body at 65 AArch64 instructions/260 bytes and
6 normalized relocations. KCFI type `0xf4e9d97c` also matches. The host
harness covers callback-zero, callback-nonzero, no-callback fallback and
nonzero-offset cases in two runs.

Validation gates passed:

- canonical Docker build in two cycles;
- AArch64 instruction, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan host harness;
- strict Joern function gate;
- curated-source synchronization.

Hardware validation remains deferred. The claim is limited to the preserved
stock artifacts and offline validation evidence in this directory.
