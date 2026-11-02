# `aw_i2c_suspend` reconstruction attestation

## Stock behavior

The callback at `0010ec50` is `int (struct device *)`, matching the pinned Linux 6.12 `dev_pm_ops.suspend` declaration and the stock KCFI ID `0x2a703c0b`. It reads `dev->driver_data` at offset `0x98`, locks the haptic mutex at `+0x2f0`, loads the operations table at `+0x5c8`, calls the `+0x38` slot, unlocks, and returns zero. A mismatched target KCFI ID traps with `BRK #0x8228`; there is no null check or error return.

The stock ELF relocation for `aw8693x_func_list + 0x38` resolves to `aw8693x_stop`. The target callback type ID is `0x847a0830`. `aw8693x_stop` has no nested mutex operation; it performs I2C calls and waits for standby while the suspend callback holds the haptic mutex. The pre-candidate MP0–MP6 packet and the compact ELF relocation evidence record these findings.

## Candidate and validation

The candidate uses `dev_get_drvdata`, preserves the observed offsets and lock/callback/unlock sequence, types the callback as `void (struct aw_haptic *)`, and returns zero. The first Docker rebuild produced the same 2,531,752-byte module in two clean cycles, SHA-256 `def0d87c62c1f87194c8338063eb2b19c07507def9f67c85dcb86a13e192f785`. Its Ghidra export has the same module MD5 and reports a 96-byte function body. The ASan/UBSan harness passed the lock/callback contract and rejected four seeded mutants.

The final function-scoped protocol result is recorded in [the hard-protocol report](../awisus_core_runnerbound/hard_protocol_report.json). Its KCFI gate is required because this is a PM callback and the job sets `kcfi_required: true`. Joern, strict assembly/relocation, Ghidra/P-Code, and two fresh Docker builds pass. The input manifest binds the run to the SHA-256 of each selected runner script and the report records that those hashes were unchanged after execution. The host harness result and stock callback relocation are hash-bound in the same manifest.

The host-only test procedure and its limits are documented in [the harness README](../awisus/host_harness/README.md). The core runner does not consume evidence as an automatic promotion; `HOST_HARNESS` remains an evidence-review item even though the recorded harness passed.

## Status and limits

The reconstruction map remains `candidate_under_static_validation` and `semantic_equivalence` remains `NOT_ESTABLISHED`. Promotion is not authorized. No device runtime or hardware validation was performed. Independent review, lockdep/KCSAN evidence, and hardware runtime validation remain open. The full haptic module remains incomplete, with 122 stock functions still `NOT_STARTED`; full-module vermagic, aliases, undefined symbols, callback inventory, and KMI parity remain unresolved.
