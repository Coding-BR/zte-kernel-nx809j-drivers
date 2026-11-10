# zlog_test reconstruction status

- Target: `NX809J (RedMagic 11 Pro+)`
- Stock SHA-256: `e595c91cb5ef517c620d362c82eb05bca98cd5726757b9a6cb7cb96a788747e1` (`reference_modules/full_vendor_boot/zlog_test.ko`)
- Candidate SHA-256: `5c761945f2206ea9ad941a1a95eccb71477d9db9862905ff7ba1d92cf1bd9944` (166,904 bytes; two canonical Docker builds)
- Primary source SHA-256 (`zlog_test_main.c`): `e78d87dcccc731630dc478e1039ecffe19b499782ace5e8a8de4d57dd003c0a8`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE — hardening deviations, independent review and controlled hardware validation remain open**

| Gate | Result | Evidence and limit |
|---|---|---|
| Stock/Ghidra corpus | PASS | 11 stock function identities with preserved Ghidra exports |
| Stock-to-source map | PASS | 11/11 identities mapped; changed lifecycle functions are marked as deviations |
| Reproducible Docker build | PASS | Two clean builds produced the same 166,904-byte candidate |
| Target module metadata | PASS | Target source identity and vermagic match; modpost accepts imports |
| Candidate/fresh runtime | PASS after promotion | Canonical candidate is bound to the reproducible artifact |
| Strict import-set parity | INTENTIONAL DELTA | Adds mutex/spinlock helpers, `destroy_workqueue`, `disable_delayed_work_sync`, and `zte_misc_unregister_callback`; removes `flush_delayed_work` |
| `zte_misc` dependency | CANDIDATE REQUIRED | Requires reconstructed `zte_misc.ko` SHA-256 `4397e8fcd4880b10e2af32a32d361708f2c227c2c135840750061730f4ea8f8c`; callback API CRC is `0x61afab7e`, while stock uses `0x9bec046c` and has no unregister API |
| KCFI | PASS | 11/11 stock identities match type and section; changed symbol sizes are expected |
| Strict assembly | 3/11 exact | Eight declared deviations cover setter, five workers, init and exit |
| Host harness | PASS | Two identical Docker-built host binaries pass; report covers enable/disable, failure unwind, worker requeue and exit |
| Independent human review | PENDING | No second reviewer has signed this candidate hash |
| Controlled hardware | DEFERRED | No module load, sysfs action or phone behavior is claimed |

The shared [callback-lifetime attestation](../../../../reverse_engineering/validation/reconstructed/zlog_common/attestation/zlog_callback_lifetime_20261110/README.md) contains the Docker, assembly, KCFI, source-sync and host-harness reports. The code changes are deliberate safety deviations and are not described as exact stock semantics.

## Lifetime and failure handling — 2026-11-10

`zlog_test` registers `dump` as a `zlog_common` callback and owns five delayed works that requeue themselves. Stock `cleanup_module` only logged a message. The candidate now unregisters the `zte_misc` callback and waits for SRCU readers, sets the enable flag to zero under the queue gate, drains and permanently disables each delayed work, unregisters registered clients, and destroys the workqueues. `zlog_common` now serializes callback dispatch with client removal so unload waits for an in-flight `dump` call.

The setter serializes concurrent enable/disable calls, gates worker requeues against the stop transition, and rolls back partial client registration. Initialization checks all five workqueue allocations and callback registration, unwinding earlier allocations on failure.

The new `zte_misc_unregister_callback` API exists only in the reconstructed `zte_misc` candidate. The `zlog_test` candidate is not loadable against stock `zte_misc`; device validation must use the matching reconstructed provider. No hardware test has yet been performed.
