# `soc_fan` timer and IRQ shared-state accesses — 2026-11-03

## Finding

The preserved Ghidra body for `fan_speed_irq_proc` increments the 32-bit tachometer counter at `fan_state + 0x04` through an exclusive-monitor loop. The stock hrtimer callback resets and reads that same counter with ordinary 32-bit loads/stores. The phase byte at `fan_state + 0x02` is also shared by the timer callback and the `fan_speed_show` sampling path, with no common lock between those contexts.

## Change

`fan_hrtimer_hander` now snapshots the phase with `READ_ONCE`, publishes phase and sample values with `WRITE_ONCE`, and uses `atomic_set`/`atomic_read` for the IRQ-shared counter. It keeps the stock phase values, timer intervals, rearming, IRQ enable/disable order, and callback flow.

## Validation

- Two clean builds in the canonical Docker workspace match: SHA-256 `65ee4afb56a9aa01c665fa33ba984d26683234e06cafae0b72e2eba9f6464076`, 290368 bytes.
- `fan_hrtimer_hander` matches stock at 70 instructions, 280 bytes, with identical instructions and relocations.
- Across 15 mapped functions, 6 are assembly-exact and the 9 existing deviations are the previously documented lifecycle/sysfs hardening functions.
- KCFI comparison passes for all 9 selected callback/function type IDs.
- The final driver audit confirms candidate hash binding, runtime content, runtime section layout, target kernel, modinfo, and reproducible build. It still reports `incomplete_or_failed` for `undefined_symbols_match`; this is expected for the declared hardening helpers, and the driver is not marked `static_verified`.
- The candidate `.ko`, source, and map were synchronized to both the repository artifact path and the canonical Docker curated tree after the two clean builds.

## Evidence

- `timer_state_access_review.json`
- `assembly_comparison.json` and `candidate_assembly/`
- `kcfi_stock.json`, `kcfi_candidate.json`, `kcfi_comparison.json`
- `driver_audit.json` and `driver_audit.md`
- `candidate_sync.json`

Independent review, KCSAN/runtime validation, and NX809J hardware validation remain pending.
