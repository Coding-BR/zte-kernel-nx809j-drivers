# `tpd_zlog_init` — exact offline revalidation

This package records the versioned evidence for microtask `007_tpd_zlog_init`.

- Stock entry: `0x001078c8`
- Stock ELF symbol/body: 184 bytes
- Stock/candidate AArch64 comparison: pass; 46 instructions and 184 bytes
- KCFI: pass; stock and candidate type ID `0xe5c47d60`
- Canonical build: pass, two Docker cycles, using the curated `zte_tpd` snapshot
- Direct host contract harness: pass, four cases, built and executed twice in Docker with ASan/UBSan
- Joern strict gate: pass; zero unresolved calls and no review findings

The direct harness checks buffer and registration-flag clearing, `jiffies` assignment, current-device selection and all 19 zlog timer entries, including reinitialization and zero-jiffies cases. Android runtime and NX809J hardware behavior remain deferred.

The package is an offline exact promotion, not a claim of device-level validation.
