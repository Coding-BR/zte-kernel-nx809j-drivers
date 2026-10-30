# `zlog_register_work_deinit` — exact offline revalidation

This package records the versioned evidence for microtask `006_zlog_register_work_deinit`.

- Stock entry: `0x00107874`
- Stock ELF symbol/body: 80 bytes
- Stock/candidate AArch64 comparison: pass; 20 instructions and 80 bytes
- KCFI: pass; stock and candidate type ID `0xe5c47d60`
- Canonical build: pass, two Docker cycles, using the curated `zte_tpd` snapshot
- Direct host contract harness: pass, four cases, built and executed twice in Docker with ASan/UBSan
- Joern strict gate: pass; zero unresolved calls and no review findings

The direct harness checks cancellation, freeing of the log buffer, NULL clearing, device selection and repeated teardown. Android runtime and NX809J hardware behavior remain deferred.

The package is an offline exact promotion, not a claim of device-level validation.
