# zlog callback lifetime hardening

This shared static attestation covers the interaction between `zlog_common`,
`zlog_test`, and the reconstructed `zte_misc` callback registry.

## Finding

Stock `zlog_comm_write` reads a registered client's callback and invokes it
without the lifetime mutex. The reconstructed `zlog_unregister_client` uses
that mutex to remove the callback, so the old write path could still be running
module code while `zlog_test` was being unloaded. Stock `zlog_test` also
requeued five delayed works indefinitely, did not unwind partial initialization,
and did not remove its callback or clients in `cleanup_module`.

## Changes

- Serialize `zlog_comm_write` callback dispatch with `zlog_lifetime_lock`, the
  same lock used by client registration and removal.
- Serialize sysfs enable/disable operations in `zlog_test`; gate every worker
  requeue under a spinlock so cancellation cannot race a self-requeue.
- Unregister the `zte_misc` callback and drain delayed work before removing
  clients or destroying their workqueues at module exit.
- Check all five workqueue allocations and callback registration, unwind on
  failure, and roll back partial client registration.
- Use the reconstructed `zte_misc_unregister_callback` export. The zlog_test
  candidate therefore requires the reconstructed `zte_misc` provider and is
  not loadable against stock `zte_misc`. The current provider candidate is
  `zte_misc.ko` SHA-256 `4397e8fcd4880b10e2af32a32d361708f2c227c2c135840750061730f4ea8f8c`.

## Validation state

The host harness and canonical Docker build reports, module hashes, assembly
comparison, KCFI comparison, source synchronization receipts, and remaining
limits are recorded alongside this file. These checks are static/offline; they
do not claim that these modules have been loaded or exercised on the phone.

## Results

| Module | Candidate SHA-256 | Reproducible builds | Exact stock functions | KCFI type/section matches |
|---|---|---:|---:|---:|
| `zlog_common` | `75fefa2df68104316824fadc75a4c0153c9c8468795c5b2c5b9b9b60ed1d9d8e` | 2/2 | 4/13 | 13/13 |
| `zlog_test` | `5c761945f2206ea9ad941a1a95eccb71477d9db9862905ff7ba1d92cf1bd9944` | 2/2 | 3/11 | 11/11 |

The `zlog_common` registration wrapper differs from stock, while its internal
`zlog_register_client_stock` body matches the original 207 instructions and
828 bytes. The candidate `zlog_comm_write` is a declared deviation because it
now holds the lifetime mutex around callback dispatch. `zlog_test` deviations
are its setter, five worker callbacks, init and exit functions.

The pre-promotion Docker audit is retained as
`docker_rebuild_audit_pre_promotion.json`; it detected the stale curated `.ko`
files. Those files were replaced by the reproducible artifacts, and
`docker_rebuild_audit_final.json` confirms the promoted candidates match both
fresh builds. The report's `fresh_promoted: false` means the validator's
optional promotion switch was not used; the artifacts were copied after the
two clean builds. Static validation remains incomplete
because strict import-set equality is false: `zlog_common` adds
`destroy_workqueue`; `zlog_test` adds `mutex_lock`, `mutex_unlock`,
`_raw_spin_lock_irqsave`, `_raw_spin_unlock_irqrestore`,
`destroy_workqueue`, `disable_delayed_work_sync`, and
`zte_misc_unregister_callback`, while removing `flush_delayed_work`. The
final report records only this import-set check as an error for each driver.
Target vermagic, source identity, mapping, KCFI, reproducibility and
candidate-to-fresh artifact checks pass.

The zlog_test host harness passed twice with identical binaries. No phone test,
runtime race reproduction, independent human review, or 100% reconstruction
claim is present.
