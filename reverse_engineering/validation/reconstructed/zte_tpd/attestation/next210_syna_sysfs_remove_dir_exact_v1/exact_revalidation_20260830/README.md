# `syna_sysfs_remove_dir` — offline exact revalidation

This package records the independent offline revalidation of stock function
`syna_sysfs_remove_dir` at `0011a518` (132 bytes) for `zte_tpd`.

The versioned reconstruction and the Docker-curated Kbuild snapshot were
verified byte-identical before the canonical build. The module was built in
the pinned `nubia-sm8850-kernel-builder:latest` environment with the pinned
Clang/toolchain configuration, in two independent container filesystems and
with deliberately different module paths. Both cycles produced the same
`zte_tpd.ko` bytes and passed the no-warning/error acceptance rule.

Gates recorded here:

- Docker-backed host harness: 4 cases, two ASan/UBSan cycles, reproducible,
  PASS.
- AArch64 section/size/opcode/relocation comparison: 33 instructions, 132
  bytes, 8 compared data relocations, PASS.
- KCFI comparison: PRESENT in both modules, type ID `0x3175607e`, size and
  section match, PASS.
- Joern strict reconstruction gate: one requested function, no unresolved
  calls, no CPG gap, PASS.

The harness stubs kernel kobject/sysfs/testing APIs and therefore does not
claim hardware, Android sysfs, or module-loading validation. This is an
offline exact function-level promotion; device validation remains deferred.
