# zlog_common reconstruction status

- Stock SHA-256: `cc84a3119927bc189fb60a2d2d5e339e93e5ab0bb127316a1fd4f4ccfcad8da0`
- Candidate SHA-256 (canonical Docker rebuild, 2026-11-10): `717730eb013be53ebeef1f8cc4a4be473c5c0e52f4efd2bac352179eaac69119` (247,056 bytes)
- Source SHA-256 (`zlog_common.c`): `dcb63f027ecb0ce12a3894ab7939d8373b33c430f82abd7b3cdfd41f7b4af636`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE - not authorized as a 100% reconstruction**

| Gate | Result | Current evidence |
|---|---|---|
| Stock/Ghidra corpus | PASS | 13 pseudocode exports, 13 P-Code streams and 13 stock assembly functions |
| Stock-to-source map | PASS | 13/13 reviewed mappings |
| Canonical static pipeline | PASS | `static_verified`; build, KMI, hash, map and source-identity checks pass; no hardware claim |
| Reproducible build | PASS | Dois containers Docker limpos produziram `717730…` (247.056 bytes; hashes idênticos) |
| ELF/KMI inventory | PASS | Imports/exports/aliases/dependências/modversions/vermagic compatíveis; imports indefinidos iguais ao stock |
| KCFI | PASS | 13/13 identificadores de tipo KCFI coincidem com stock; tamanhos desconsiderados por desenho |
| Host harness | NOT RUN for this hardening candidate | Prior host results are bound to the older candidate hash |
| Microtasks | PARTIAL | Prior attestations are hash-bound to the older candidate; refresh the six changed functions |
| Strict assembly | 7/13 exact | Six lifetime/registration functions intentionally differ; the stock registration helper remains exact |
| Second-pass offline mapping review | STALE FOR CURRENT HASH | Prior review is bound to the older candidate; current hardening needs an independent review |
| Independent human review | PENDING | No second human peer reviewer has signed this candidate hash |
| Controlled hardware | DEFERRED | No `insmod`, userspace ABI or worker-path execution for this exact candidate |

A atestação `zlog_common_exact_promoted_20260828` documenta o baseline anterior; o candidato atual contém seis desvios de hardening declarados nas atestações de 2026-11-04 e 2026-11-10.

O resultado prova paridade estática forte para este candidato; não prova por si
só semântica não observável, concorrência em produção ou comportamento de
hardware. O código C continua presente para o harness host e para auditoria do
contrato fonte.
The `static_verified` build label proves build/KMI/traceability only; it does not
override the partial assembly, review or hardware gates.

## Concurrent registration audit — 2026-11-10

The stock `zlog_register_client` at `00100644` checks for an existing client, searches for a free slot, releases each per-client mutex, then reacquires the selected slot and publishes without rechecking `registered`. Two simultaneous callers can select the same slot; the second can overwrite the first `record_buffer` and module identity, leaking the first allocation and aliasing both callers to one slot. This is a statically derived interleaving, not a runtime-reproduced failure. The Ghidra pseudocode, P-Code and stock assembly references, hashes and interleaving are recorded in `attestation/zlog_register_serialization_20261110/register_race_review.json`.

The public C wrapper now takes `zlog_lifetime_lock` across the stock registration body. This serializes duplicate detection, slot selection, allocation and publication against concurrent registration, unregister and report work. The original 207-instruction/828-byte body is retained exactly under the internal name `zlog_register_client_stock`; the 19-instruction wrapper is a deliberate deviation. Its KCFI type ID matches stock, and two clean Docker builds produce the candidate hash above. The complete module has 7/13 stock-exact functions and six declared deviations. No host concurrency test or device runtime test was run. Independent review and controlled hardware validation remain pending.

## Lifetime/synchronization risk audit — 2026-11-03

A static review found a potential stock-inherited write-after-free: `zlog_handle_work` drops `client_lock` around `zlog_write_internal` and calls `zlog_reset_client` afterwards. Concurrent `zlog_unregister_client` can free `record_buffer` in that gap without clearing the pointer; `zlog_reset_client` then memsets 0x800 bytes through the freed pointer. Ghidra and exact stock/candidate assembly confirm the sequence. This is not reproduced at runtime. Source/map remain unchanged to preserve exact-stock status; see the [lifetime/synchronization audit](../../../../reverse_engineering/validation/reconstructed/zlog_common/attestation/lifetime_sync_risk_audit_20261103/README.md). A correction must synchronize in-flight worker ownership before freeing the buffer, then be rebuilt and reviewed as a declared hardening deviation. Independent review and controlled hardware validation remain pending.


## Lifetime hardening — 2026-11-04

The prior static audit identified a possible write-after-free when `zlog_handle_work` returned from `zlog_write_internal` and then reset a buffer concurrently freed by `zlog_unregister_client`. The current candidate serializes the complete report worker and unregister path with `zlog_lifetime_lock`; unregister closes record/notify producers under `client_lock`, clears the pending notify bit, frees and nulls the buffer, then marks the slot reusable. Record, notify and reset now guard registration, capacity and buffer state. The worker releases the lifetime mutex on normal exit. The final Docker pipeline reports `static_verified`, with all build, KMI, hash, map and source-identity checks passing; this label does not mark the five deviations stock-exact. This is an intentional deviation from stock in five functions and has not been reproduced or exercised on device. Two clean canonical Docker builds, all-13-function stock/candidate assembly comparison and all-13 KCFI comparison are recorded in the [hardening attestation](../../../../reverse_engineering/validation/reconstructed/zlog_common/attestation/lifetime_sync_hardening_20261104/README.md). Independent review, refreshed host and microtask checks for the five changed functions, and controlled hardware validation remain pending.
