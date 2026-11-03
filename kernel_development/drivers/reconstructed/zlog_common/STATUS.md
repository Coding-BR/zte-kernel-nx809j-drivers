# zlog_common reconstruction status

- Stock SHA-256: `cc84a3119927bc189fb60a2d2d5e339e93e5ab0bb127316a1fd4f4ccfcad8da0`
- Candidate SHA-256 (reconsolidated Docker cycle, 2026-09-04): `f8666e5c1cbbf446407c5488074fa33f973e206e02a7d54bf6e14a1f5b642457`
- Source SHA-256: `56079b4a64b5a0183bcb8286a72236030fc225a6cefbbc4eca1ed777c75f9145`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE - not authorized as a 100% reconstruction**

| Gate | Result | Current evidence |
|---|---|---|
| Stock/Ghidra corpus | PASS | 13 pseudocode exports, 13 P-Code streams and 13 stock assembly functions |
| Stock-to-source map | PASS | 13/13 reviewed mappings |
| Reproducible build | PASS | Dois containers Docker limpos produziram `F8666E…` (237.440 bytes) |
| ELF/KMI inventory | PASS | Imports/exports/aliases/dependências/modversions/vermagic e 13/13 símbolos passam |
| KCFI | PASS | 13/13 decisões KCFI, incluindo os quatro corpos materializados |
| Host harness | PASS | 13/13 functions covered; two runs and two host binaries are identical |
| Microtasks | PASS | 13/13 hash-backed compile/KCFI/test attestations |
| Strict assembly | PASS | 13/13 funções; corpos, tamanhos, instruções e relocations equivalentes |
| Second-pass offline mapping review | PASS | Codex agent reviewed all 13 mappings against fresh candidate assembly; 21 relocation equivalences are documented; see reverse_engineering/validation/reconstructed/zlog_common/attestation/independent_mapping_review_20261102/ |
| Independent human review | PENDING | No second human peer reviewer has signed this candidate hash |
| Controlled hardware | DEFERRED | No `insmod`, userspace ABI or worker-path execution for this exact candidate |

As quatro funções que divergiam no baseline foram materializadas a partir da
evidência Assembly stock, mantendo preâmbulos KCFI, relocations de
`.codetag.alloc_tags`, `.data..percpu` e `__jump_table`. A evidência atual está
em `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\zlog_common_exact_promoted_20260828\`.

O resultado prova paridade estática forte para este candidato; não prova por si
só semântica não observável, concorrência em produção ou comportamento de
hardware. O código C continua presente para o harness host e para auditoria do
contrato fonte.
The `static_verified` build label proves build/KMI/traceability only; it does not
override the partial assembly, review or hardware gates.

## Lifetime/synchronization risk audit — 2026-11-03

A static review found a potential stock-inherited write-after-free: `zlog_handle_work` drops `client_lock` around `zlog_write_internal` and calls `zlog_reset_client` afterwards. Concurrent `zlog_unregister_client` can free `record_buffer` in that gap without clearing the pointer; `zlog_reset_client` then memsets 0x800 bytes through the freed pointer. Ghidra and exact stock/candidate assembly confirm the sequence. This is not reproduced at runtime. Source/map remain unchanged to preserve exact-stock status; see the [lifetime/synchronization audit](../../../../reverse_engineering/validation/reconstructed/zlog_common/attestation/lifetime_sync_risk_audit_20261103/README.md). A correction must synchronize in-flight worker ownership before freeing the buffer, then be rebuilt and reviewed as a declared hardening deviation. Independent review and controlled hardware validation remain pending.
