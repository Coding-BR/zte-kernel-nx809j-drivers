# `soc_fan` sysfs state serialization — 2026-11-02

## Finding

The Ghidra stock bodies show a lost-update race between `fan_enable_store` and `fan_level_store`:

1. Starting with fan enabled at level 3, a disable write publishes `enabled=false` before taking the mutex.
2. A concurrent level write sees disabled and stores pending level 5 without the mutex.
3. The disable callback then takes the mutex and stores the previous current level 3 over the requested 5.

The reverse ordering can also apply a stale pending level after a newer level request. The exact ordered examples and stock evidence are in `sysfs_state_lock_review.json`.

## Change

- `fan_enable_store` locks before comparing or publishing enabled and holds the lock through the transition.
- `fan_level_store` locks before reading enabled and holds the lock for both the pending write and active PWM update.
- `fan_enable_show` and `fan_level_show` read under that mutex for a coherent snapshot.
- `fan_level_set` publishes the current level with `WRITE_ONCE`; the timer callback reads this diagnostic byte with `READ_ONCE`. The timer/IRQ sampling protocol itself was not changed.

Getters can wait behind `fan_speed_show`, which holds the mutex during a roughly one-second RPM sample.

## Validation

- Two clean Docker builds match: `05590b38635ef3c119e32414ec4084c2390023901d06a85f194814bba919caa6` (290024 bytes).
- Target: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`, source volume revision `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, image `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`, Clang `clang-r536225`.
- Function assembly: 15 compared; 6 remain exact, including `fan_hrtimer_hander`; 9 have intentional hardening deviations documented in `assembly_comparison.json`.
- KCFI: all 9 selected type IDs match stock.
- Curated `.ko` hash equals cycle 2; `candidate_sync.json` records the manual snapshot sync because the stock-parity promoter correctly refused intentional binary differences.

The whole-driver auditor remains `incomplete_or_failed` against the OEM baseline: imported symbols and executable sections intentionally differ, and independent review is pending. This batch does not claim stock equivalence or runtime correctness. No hardware/KCSAN validation was done.

## Evidence

- `driver_audit.json` / `driver_audit.md`
- `assembly_comparison.json` and `candidate_assembly/`
- `kcfi_stock.json`, `kcfi_candidate.json`, `kcfi_comparison.json`
- `sysfs_state_lock_review.json`
- `candidate_sync.json`
