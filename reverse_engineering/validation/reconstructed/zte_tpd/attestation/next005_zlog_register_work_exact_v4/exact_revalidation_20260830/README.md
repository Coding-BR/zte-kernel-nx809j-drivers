# `zlog_register_work` — exact offline revalidation

This package records the versioned evidence for microtask `005_zlog_register_work`.

- Stock entry: `0x00107844`
- Stock ELF symbol/body: 44 bytes
- Stock/candidate AArch64 comparison: pass; 11 instructions and 44 bytes
- KCFI: pass; stock and candidate type ID `0xa607748c`
- Canonical build: pass, two Docker cycles, using the curated `zte_tpd` snapshot
- Direct host contract harness: pass, four cases, built and executed twice in Docker with ASan/UBSan
- Joern strict gate: pass; zero unresolved calls and no review findings

The direct harness checks both the registered and unregistered branches, device selection, the register callback argument and the fact that the incoming work pointer is not used. Android runtime and NX809J hardware behavior remain deferred.

The package is an offline exact promotion, not a claim of device-level validation.
