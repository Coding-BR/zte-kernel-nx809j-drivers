# `suspend_tp_need_awake` exact revalidation

This package converts the temporary offline work from
`.tmp_suspend_tp_need_awake_exact` into a versioned attestation for the ZTE
NX809J / RedMagic 11 Pro+ `zte_tpd` reconstruction.

## Decision

`PROMOTED_OFFLINE_EXACT` at function level.

The candidate and stock functions both contain 20 AArch64 instructions and
80 bytes. The comparison preserves the two `tpd_cdev` relocations:

- `R_AARCH64_ADR_PREL_PG_HI21 tpd_cdev`
- `R_AARCH64_LDST64_ABS_LO12_NC tpd_cdev`

The candidate also matches the stock KCFI preamble, symbol size and type ID
`0x6fbb3035`. The exact linked implementation is `candidate_exact.S`; the
readable source model is `candidate_source.c`.

## Evidence

- Docker image: `nubia-sm8850-kernel-builder:latest`
- Docker image ID: `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`
- Toolchain volume: `nubia_sm8850_kernel_toolchains`
- Clang revision: `clang-r536225`
- Canonical build: two accepted, byte-reproducible cycles
- Candidate module SHA-256: `cde17ecf4a56d898acce6f0efd65754ce0c560f5bb45546cf5159a039adf96a4`
- Candidate module size: `20,234,792` bytes
- Stock module SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- Strict Joern gate: PASS, one requested function, zero parse problems and
  zero unresolved calls
- Host harness: PASS in two Docker cycles, ASan/UBSan enabled, 3 cases

The canonical candidate module is intentionally not copied into this
attestation. Its hash, source-tree manifest and reproducible Docker build
are preserved in `canonical_build_report.json`; it can be regenerated from
the committed curated source tree.

Ghidra stock evidence remains preserved at
`reverse_engineering/validation/reconstructed/zte_tpd/offline_static/ghidra_stock`.
This exact-island revalidation uses the stronger function-level AArch64/ELF
relocation comparison and does not claim a separate fresh candidate Ghidra
semantic report.

## Scope and limitations

This is an offline function-level equivalence claim, not a claim that the
complete driver or NX809J hardware behavior is equivalent. Hardware loading,
runtime callback behavior on the phone and integration validation remain
outside this package.

The older temporary `manifest_validation.json` was a dry-run/stale report and
is deliberately excluded from the decision. The evidence copied here is the
current `*_current`/`fresh_gate` result set used for this revalidation.
