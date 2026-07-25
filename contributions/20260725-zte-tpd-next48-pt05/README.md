# zte_tpd Next48 PT05 contribution evidence

This bundle records the bounded reconstruction and offline validation of
`syna_testing_pt05_zte` from the stock NX809J `zte_tpd.ko`.

## Result

- Microtask 219: `PASS_OFFLINE`.
- Candidate module SHA-256:
  `18665cfcaa9dc4c090deb9cd3a30048e61d07d61c5471bcde6147aebd1005719`.
- Direct host harness: 12 cases, two sanitizer cycles, reproducible.
- KCFI: stock and candidate type ID `0xae20471c`.
- Ghidra bounded semantic comparison: pass; strict instruction/P-Code order
  differences remain disclosed.
- Joern v4.0.548 function gate: pass with zero parser problems, zero unresolved
  calls, and zero mapped-call deltas.
- Full `zte_tpd` reconstruction: `INCOMPLETE`; 196 microtasks remain and
  hardware validation is deferred.

Joern is an additional graph oracle. It does not replace stock assembly,
relocations, Ghidra P-Code, KCFI, reproducible builds, sanitizer harnesses, or
controlled hardware validation. See
`workspace_tools/reconstruction_pipeline/JOERN_RUNTIME_GATE.md`.

## Evidence

The `reports` directory contains the hash-bound PT05 attestation, strict and
bounded comparisons, KCFI, host harness, function-scoped Joern summary, two
clean-build reports, decomposition audit, and the full-driver cycle result.

Run `reproduce.ps1` on Windows or `reproduce.sh` on Linux. The optional Joern
mode reruns the function-scoped graph gate and requires Java 21 plus the pinned
Joern runtime. The scripts never use GitHub Actions and do not access a device.
