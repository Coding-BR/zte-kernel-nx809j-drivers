# `syna_sysfs_info_show` — offline exact revalidation

This package records the independent offline revalidation of stock function
`syna_sysfs_info_show` at `0011a5a0` (1020 bytes) for `zte_tpd`.

The exact AArch64 `.S` reconstruction and Docker-curated Kbuild snapshot were
verified byte-identical before the canonical build. The module was built in
the pinned `nubia-sm8850-kernel-builder:latest` environment, in two
independent container filesystems and with deliberately different module
paths. Both cycles produced identical `zte_tpd.ko` bytes and passed the
no-warning/error acceptance rule.

Gates recorded here:

- Docker-backed host harness: 8 cases, two ASan/UBSan cycles, reproducible,
  PASS. Cases cover disconnected, bare, connected firmware modes, metadata
  formatting and controlled formatter failures.
- AArch64 exact assembly comparison: 255 instructions, 1020 bytes, all
  compared string/data relocations and calls match, PASS.
- KCFI comparison: PRESENT in both modules, type ID `0x4e31a072`, section and
  symbol size match, PASS.
- Joern strict reconstruction gate: one requested function, 312 calls, 34
  control structures, no unresolved calls and no CPG gap, PASS.

The host harness models kobject/tcm/scnprintf behavior and does not claim
hardware, Android sysfs, or module-loading validation. This is an offline
exact function-level promotion; device validation remains deferred.
