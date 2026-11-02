# tpd_get_singleaodgesture — exact offline revalidation

This attestation closes the KCFI-sensitive exact reconstruction of
`tpd_get_singleaodgesture` at stock entry `0x0012bccc` and stock size `96`
bytes.

The candidate is the AArch64 instruction island in `candidate_exact.S`,
selected by the zte_tpd Kbuild. The KCFI type ID is `0x73fc0d79`, matching the
stock module. The Docker snapshot and the versioned candidate tree were
manifest-identical before the build (`848` Kbuild inputs).

Validation performed on 2026-09-01:

- two independent canonical Docker builds with
  `nubia-sm8850-kernel-builder:latest` and `clang-r536225`;
- relocation-aware AArch64 body comparison: `96/96` bytes and `24/24`
  instructions;
- KCFI presence, section, size and type-ID comparison;
- scoped Joern identity/call/slice gates;
- fresh Ghidra 12.1.2 export of the candidate module, with the ELF-bounded
  body repaired to `96` bytes; the narrow P-Code-authoritative fallback is
  recorded because Ghidra inferred the imported `_printk` as no-return;
- two Docker ASan/UBSan contract cycles, both passing with identical binary
  SHA-256.

The fresh protocol report is in `exact_revalidation_20260901/`. This is
offline/static evidence only. It does not prove Android module insertion,
transport, IRQ, MMIO, printk or physical NX809J hardware behavior.
