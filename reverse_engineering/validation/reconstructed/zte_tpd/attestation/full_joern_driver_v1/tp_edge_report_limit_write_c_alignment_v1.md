# Alinhamento da vista C — `tp_edge_report_limit_write`

Estado: `C_VIEW_ALIGNED_HOST_VERIFIED` — não é promoção do módulo nem
aprovação de segurança.

## Mudança restrita

O C legível agora zera todos os 104 bytes do buffer local `s` antes da cópia,
alinhando a vista C com o prólogo stock observado em Ghidra e no assembly
exact. O harness ganhou um quinto caso: uma entrada nomeada de exatamente 100
bytes, sem NUL dentro do conteúdo, com espaços posteriores ao valor.

Esse caso verifica que a entrada limitada continua terminada antes de
`get_tp_algo_item_id`, `strchr` e `kstrtouint`. O `.S` exact, o Makefile e o
objeto ligado não foram alterados.

| Item | SHA-256 |
|---|---|
| C alinhado | `888bcd600d1b5c11f951547305baaf66ba540ec5b0eb901515a4f19d4d7a6237` |
| Harness alinhado | `b0491b587a25ac527d611b8f4794918d379b1829828140b6d1e8741146fa026d` |
| Assembly exact preservado | `14d992182ce68a221569602358eb81efb51656c3e281e907ef92a5f7893199ed` |

## Verificação Docker

Imagem: `nubia-sm8850-kernel-builder:latest`; compilador:
`clang-r536225`; flags: `-std=gnu11 -O1 -g -Wall -Wextra -Werror`, ASan e
UBSan, sem PIE, build-id desativado e `-fno-sanitize=alignment`.

O harness
`validation/zte_tpd/host/tp_edge_report_limit_write_host_test.c` compilou e
executou em dois ciclos independentes. Ambos produziram:

```text
PASS tp_edge_report_limit_write host tests (5 cases)
```

Os binários dos dois ciclos têm o mesmo SHA-256:
`2e5c9e5fc33cc54eaf710c9a22ba3fb98b043a83e4eb26dd783df5227d6269fe`.

## Limites preservados

Esta correção melhora somente a vista C e sua cobertura host. O comportamento
stock ainda mantém `strchr(s, ':') + 1` sem validação explícita, conversões
reconhecidas que ignoram erro e o contrato de retorno existente; esses pontos
continuam documentados como pendências porque alterá-los mudaria a
equivalência do objeto exact.

Não foram alterados `MICROTASKS`, `reconstruction_map`, `STATUS.md` ou o
assembly ligado. Hardware, Android input subsystem, firmware e rollback no
NX809J continuam pendentes.
