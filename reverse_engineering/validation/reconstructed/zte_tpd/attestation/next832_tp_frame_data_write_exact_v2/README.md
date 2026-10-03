# `tp_frame_data_write` — offline-exact promotion v2

This package records the validated reconstruction of stock entry `0010de08`.

The candidate matches the stock body at 52 AArch64 instructions/208 bytes and
6 normalized relocations. KCFI type `0xf4e9d97c` also matches. The host
harness covers callback/value, null-callback, EOF and short/zero-count cases
in two runs.

Validation gates passed:

- canonical Docker build in two cycles;
- AArch64 instruction, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan host harness;
- strict Joern function gate;
- curated-source synchronization.

Hardware validation remains deferred. The claim is limited to the preserved
stock artifacts and offline validation evidence in this directory.
