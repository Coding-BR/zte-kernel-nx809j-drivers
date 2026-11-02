# `zlog_register_work_init` — exact offline revalidation

This package records the versioned evidence for microtask `004_zlog_register_work_init`.

- Stock entry: `0x001077c8`
- Stock ELF symbol/body: 120 bytes
- Stock/candidate AArch64 comparison: pass; 30 instructions and 120 bytes
- KCFI: pass; stock and candidate type ID `0xe5c47d60`
- Canonical build: pass, two Docker cycles, using the curated `zte_tpd` snapshot
- Direct host contract harness: pass, four cases, built and executed twice in Docker with ASan/UBSan
- Joern strict gate: pass; no unresolved review findings

The direct harness checks the printk format/argument, device selection, delayed-work address and callback, including repeatability. The implementation remains synchronized with the main reconstruction tree and the Docker curated snapshot. Android runtime and NX809J hardware behavior remain deferred.

The package is an offline exact promotion, not a claim of device-level validation.
