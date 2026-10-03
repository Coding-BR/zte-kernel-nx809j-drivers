# `get_tp_algo_item_id` — exact offline revalidation

This package records the versioned evidence for microtask `008_get_tp_algo_item_id`.

- Stock entry: `0x00107984`
- Stock ELF symbol/body: 356 bytes
- Stock/candidate AArch64 comparison: pass; 89 instructions and 356 bytes
- KCFI: pass; stock and candidate type ID `0x7bff871d`
- Canonical build: pass, two Docker cycles, using the curated `zte_tpd` snapshot
- Direct host contract harness: pass, nine cases, run inside Docker with GCC and ASan/UBSan
- Joern strict gate: pass; zero unresolved calls and no review findings

The direct harness checks all seven table keywords, first-match priority, the unmatched `-EIO` path and the printk result. Android runtime and NX809J hardware behavior remain deferred.

The package is an offline exact promotion, not a claim of device-level validation.
