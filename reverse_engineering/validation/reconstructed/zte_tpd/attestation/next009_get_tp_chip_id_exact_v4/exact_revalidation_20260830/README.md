# `get_tp_chip_id` — exact offline revalidation

This package records the versioned evidence for microtask `009_get_tp_chip_id`.

- Stock entry: `0x00107aec`
- Stock ELF symbol/body: 496 bytes
- Stock/candidate AArch64 comparison: pass; 124 instructions and 496 bytes
- KCFI: pass; stock and candidate type ID `0x6fbb3035`
- Canonical build: pass, two Docker cycles, using the curated `zte_tpd` snapshot
- Direct host contract harness: pass, 13 cases, run inside Docker with GCC and ASan/UBSan
- Joern strict gate: pass; zero unresolved calls and no review findings

The direct harness checks the panel-name selection chain, ID writes at the observed offset, no-match `-EIO`, printk paths and the stock `Unknown_lcd` behavior. Android runtime, panel integration and NX809J hardware behavior remain deferred.

The package is an offline exact promotion, not a claim of device-level validation.
