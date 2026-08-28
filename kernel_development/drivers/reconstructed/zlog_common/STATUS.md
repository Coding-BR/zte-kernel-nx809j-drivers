# zlog_common reconstruction status

- Stock SHA-256: `cc84a3119927bc189fb60a2d2d5e339e93e5ab0bb127316a1fd4f4ccfcad8da0`
- Candidate SHA-256 (exact promoted Docker cycle, 2026-08-28): `4df05370ac748ab830a32b57029d7f3f8f2dda291718ab5be1c93d092a118297`
- Source SHA-256: `56079b4a64b5a0183bcb8286a72236030fc225a6cefbbc4eca1ed777c75f9145`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE - not authorized as a 100% reconstruction**

| Gate | Result | Current evidence |
|---|---|---|
| Stock/Ghidra corpus | PASS | 13 pseudocode exports, 13 P-Code streams and 13 stock assembly functions |
| Stock-to-source map | PASS | 13/13 reviewed mappings |
| Reproducible build | PASS | Dois containers Docker limpos produziram `4DF053…` (237.440 bytes) |
| ELF/KMI inventory | PASS | Imports/exports/aliases/dependências/modversions/vermagic e 13/13 símbolos passam |
| KCFI | PASS | 13/13 decisões KCFI, incluindo os quatro corpos materializados |
| Host harness | PASS | 13/13 functions covered; two runs and two host binaries are identical |
| Microtasks | PASS | 13/13 hash-backed compile/KCFI/test attestations |
| Strict assembly | PASS | 13/13 funções; corpos, tamanhos, instruções e relocations equivalentes |
| Independent review | PENDING | No reviewer distinct from the implementer has signed this candidate hash |
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
