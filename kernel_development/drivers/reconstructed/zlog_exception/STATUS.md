# zlog_exception reconstruction status

- Target: `NX809J (RedMagic 11 Pro+)`
- Stock SHA-256: `30948fd9026aa0a33d5602c0a395f8bf89c9aaa717317c4c2866e29ab7cad372`
- Candidate SHA-256 (reconsolidated Docker cycle, 2026-09-04): `a38b3fccb92c47ab8203821ae7f9f67d5d1529577512cbafe61d2e6fa75038f5`
- Source SHA-256: `0aabf5ee8ae768c72a4935c209f5c1096a7e331c30dad2837fadf4faafeb5da5`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE - not authorized as a 100% reconstruction**

| Gate | Result | Current evidence |
|---|---|---|
| Stock/Ghidra corpus | PASS | 10 pseudocode exports, 10 P-Code streams and 10 stock assembly functions |
| Stock-to-source map | PASS | 10/10 reviewed mappings |
| Reproducible build | PASS | Two clean Docker builds produced the candidate SHA-256 above |
| ELF/KMI inventory | PASS | 10/10 text symbols and 27/27 undefined imports; no extra text/import symbol |
| Ghidra comparison | PASS | 10/10 function inventory and per-function call multiplicity |
| KCFI | PASS | 9/9 applicable type IDs, sections and exact symbol sizes; one direct-call N/A |
| Host harness | PASS | 10/10 functions covered; two runs and two host binaries are identical |
| Microtasks | PASS | 10/10 hash-backed compile/KCFI/test attestations |
| Strict assembly | PASS | 10/10 funções; instruções, sections, tamanhos e relocations equivalentes |
| Independent review | PENDING | No reviewer distinct from the implementer has signed this candidate hash |
| Controlled hardware | DEFERRED | No load, userspace ABI or concurrency test for this exact candidate |

As dez funções são strict matches. O comparador normaliza somente o sufixo
numérico do `lock_class_key` local de `zlog_init` (`.10` versus `.11`) quando o
par ADRP/ADD e os índices de instrução são idênticos. A regra foi adicionada à
pipeline com testes positivo/negativos; não há padding, shim Assembly ou
forçamento de símbolo para ocultar diferença de código.

A evidência final está em
`C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\zlog_exception_rechecked_20260828\`.

The `static_verified` build label proves build/KMI/traceability only. The
candidate must not be described as functionally equivalent until the residual,
independent review and controlled hardware gates are closed for this hash.
