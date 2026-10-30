# Ampliação do harness — `tp_edge_report_limit_read`

Estado: `HOST_COVERAGE_EXPANDED` — não é promoção do módulo nem aprovação de
segurança.

## Mudança restrita

O harness host passou de três para cinco casos, sem alteração da
implementação C ou do assembly exact:

- buffer menor que a saída, verificando o retorno stock do comprimento total
  e o avanço do cursor somente pelos bytes copiados;
- cursor negativo, verificando EOF sem alocação;
- os três casos anteriores de leitura completa, cursor não nulo e falha de
  alocação permanecem ativos.

| Item | SHA-256 |
|---|---|
| Harness atualizado | `a1e6591d8b749999672db2940afb4732bb9f89349ce5e294e5df5d2b1e8db636` |
| Binário Docker ciclo 1 | `a11c91aeff6ae4e730a5d758e60c3932d5f6b02e7779546fce9809533c1784b0` |
| Binário Docker ciclo 2 | `a11c91aeff6ae4e730a5d758e60c3932d5f6b02e7779546fce9809533c1784b0` |

## Verificação

Imagem: `nubia-sm8850-kernel-builder:latest`; compilador:
`clang-r536225`; sanitizadores: ASan e UBSan. Os dois ciclos produziram:

```text
PASS tp_edge_report_limit_read host tests (5 cases)
```

O stderr `edge report allocation failed 0 0` ocorreu somente no caso
intencional de falha de alocação.

## Limites

O teste confirma o contrato observado no stock; não corrige o retorno baseado
no comprimento total. Continuam pendentes a concorrência real de procfs,
ciclo de vida de `tpd_cdev`, scheduler, firmware e hardware NX809J.

Não foram alterados `MICROTASKS`, `reconstruction_map`, `STATUS.md`, o C da
função ou o assembly ligado.
