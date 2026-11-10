# zlog_common reconstruction status

- Stock SHA-256: `cc84a3119927bc189fb60a2d2d5e339e93e5ab0bb127316a1fd4f4ccfcad8da0`
- Candidate SHA-256: `75fefa2df68104316824fadc75a4c0153c9c8468795c5b2c5b9b9b60ed1d9d8e` (248,616 bytes; two canonical Docker builds)
- Source SHA-256 (`zlog_common.c`): `0d2d2aa5c2849bbe69e4c32a3ae02b666a7c166def366e41d38a2833c9736030`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE — not authorized as a 100% reconstruction**

| Gate | Result | Evidence and limit |
|---|---|---|
| Stock/Ghidra corpus | PASS | 13 pseudocode exports, P-Code streams and stock AArch64 identities |
| Stock-to-source map | PASS | 13/13 identities mapped; lifetime changes are identified as deviations |
| Canonical Docker rebuild | PASS | Two clean builds produced the same 248,616-byte candidate and target vermagic |
| Candidate/fresh runtime | PASS after promotion | Canonical candidate is bound to the reproducible build hash |
| Strict import-set parity | INTENTIONAL DELTA | Adds target-exported GPL `destroy_workqueue`, CRC `0xc3325950` |
| Overall static validator | INCOMPLETE | Import-set equality is false; all other recorded gates pass |
| KCFI | PASS | 13/13 stock identities match type and section; changed symbol sizes are expected |
| Strict assembly | 4/13 exact | Nine declared deviations include callback lifetime, init and client lifecycle changes |
| Registration stock body | PASS | Internal `zlog_register_client_stock` matches the 207-instruction/828-byte stock body |
| Host harness | NOT RUN for this module candidate | The zlog_test host harness does not validate zlog_common concurrency |
| Independent human review | PENDING | No second reviewer has signed this candidate hash |
| Controlled hardware | DEFERRED | No module load or smartphone behavior is claimed |

The detailed callback-lifetime evidence is in [the shared zlog callback attestation](../../../../reverse_engineering/validation/reconstructed/zlog_common/attestation/zlog_callback_lifetime_20261110/README.md). The candidate remains an offline hardening reconstruction, not a claim of exact stock semantics or runtime validation.

## Callback lifetime finding — 2026-11-10

Stock `zlog_comm_write` read the registered client's callback and invoked it without the lifetime mutex. `zlog_unregister_client` did take that mutex, so it could not wait for a callback already in progress. The candidate now holds `zlog_lifetime_lock` across callback dispatch. The observed reconstructed `zlog_test::dump` callback only records/notifies and does not recursively register or unregister clients. The assembly comparison records this as a hardening deviation.

The same attestation hardens `zlog_test` teardown so its callback and delayed work are removed before the module unloads. This source-level and Docker evidence does not demonstrate a device-side race or prove behavior under all vendor callers.

## Earlier initialization correction

The initialization-failure correction remains in the candidate: allocation and misc-device registration errors are propagated, failed registrations release the allocated device name, and the not-yet-queued workqueue is destroyed on failure. Its `destroy_workqueue` import remains the declared strict-parity delta.
