# `tpd_sysfs_fwimage_store` — offline-exact promotion v2

This package records the validated reconstruction of stock entry `0010dff0`.

The candidate matches the stock body at 56 AArch64 instructions/224 bytes and
8 normalized relocations. KCFI type `0x30c400c0` also matches. The preserved
ASan/UBSan host report covers missing firmware, invalid size, bounded writes,
chunked writes and end-of-firmware position reset in two runs.

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
