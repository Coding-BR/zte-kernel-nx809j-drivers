# `tpd_zlog_check` — exact offline revalidation

This package records the versioned evidence for microtask `003_tpd_zlog_check`.

- Stock entry: `0x00107718`
- Stock ELF symbol/body: 172 bytes
- Stock/candidate AArch64 comparison: pass; 43 instructions and 172 bytes
- KCFI: pass; stock and candidate type ID `0xc3c3f247`
- Canonical build: pass, two Docker cycles, using the curated `zte_tpd` snapshot
- Host contract harness: pass, five cases, built and executed in Docker with ASan/UBSan
- Joern strict gate: pass; zero unresolved calls

The candidate source and module are synchronized with the main reconstruction tree and the Docker curated snapshot. The invalid-index branch is the observed non-returning `brk #0x5512` path and is covered by static evidence; Android runtime and NX809J hardware behavior remain deferred.

The package is an offline exact promotion, not a claim of device-level validation.
