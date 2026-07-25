# zte_tpd Next49 PT01 contribution evidence

This bundle records the bounded reconstruction and offline validation of
`syna_testing_pt01_zte` from the stock NX809J `zte_tpd.ko`.

## Result

- Microtask 220: `PASS_OFFLINE`.
- Candidate module SHA-256:
  `e0f09eed5f42dd45549911ac32a08c480095e081a362418d125804d0280aca30`.
- Direct host harness: 9 cases, two sanitizer cycles, reproducible.
- KCFI: stock and candidate type ID `0xae20471c`.
- AArch64 instruction sequence: exact, with only the two local lock-key
  relocation names accepted as a bounded exception.
- Ghidra bounded semantic comparison: pass; normalized decompiled-C
  inequality remains disclosed and the P-Code multiset is exact.
- Joern v4.0.548 function gate: pass with zero parser problems, zero unresolved
  calls and zero mapped-call deltas.
- Full `zte_tpd` reconstruction: `INCOMPLETE`; 195 microtasks remain and
  hardware validation is deferred.

Joern is an additional graph oracle. It does not replace stock assembly,
relocations, Ghidra P-Code, KCFI, reproducible builds, sanitizer harnesses or
controlled hardware validation. See
`workspace_tools/reconstruction_pipeline/JOERN_RUNTIME_GATE.md`.

## Evidence

The `reports` directory contains the hash-bound PT01 attestation, strict and
bounded comparisons, KCFI, host harness, function-scoped Joern summary, clean
build reports, decomposition audit and the full-driver cycle result.

Run `reproduce.ps1` on Windows or `reproduce.sh` on Linux. The optional Joern
mode reruns the function-scoped graph gate and requires Java 21 plus the pinned
Joern runtime. The scripts never use GitHub Actions and do not access a device.
