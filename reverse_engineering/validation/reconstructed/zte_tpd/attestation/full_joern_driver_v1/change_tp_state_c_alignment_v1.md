# Alinhamento da vista C — `change_tp_state`

Estado: `C_VIEW_ALIGNED_HOST_VERIFIED` — não é promoção do módulo nem
aprovação de segurança.

## Mudança restrita

Este bloco corrige somente a representação C e o harness host da função
`change_tp_state`:

- o caminho `screen_on -> screen_off` agora zera
  `ufp_tp_ops.gesture_complete.done`, correspondente ao store stock em
  `ufp_tp_ops + 0x80`;
- o caminho de estado inválido usa o `brk #0x5512` stock quando compilado
  fora do harness e mantém uma saída determinística apenas sob
  `ZTE_TPD_HOST_TEST`;
- o fixture host inicializa `gesture_complete.done` com valor não nulo e
  verifica que ele é zerado.

O arquivo `change_tp_state_exact.S`, que continua sendo o objeto ligado pelo
Makefile, não foi alterado.

| Item | SHA-256 |
|---|---|
| C alinhado | `e465f10f60cc7c3a60f740a646075edb3961ebd917998c998e67e36c16c9eb9d` |
| Harness alinhado | `11fdc2b76e2486744fdec99b67b362bf87cd6fd5b841fae4d05412b182719d63` |
| Assembly exact preservado | `5a5f180d48909715569fc37d5b711675cc1d8509c1d73ac5191e64fd7ab9743e` |

## Verificação Docker

Imagem: `nubia-sm8850-kernel-builder:latest`; compilador:
`clang-r536225`; flags: `-std=gnu11 -O1 -g -Wall -Wextra -Werror`, ASan e
UBSan, sem PIE e com build-id desativado.

O comando compilou e executou
`validation/zte_tpd/host/change_tp_state_host_test.c` em dois ciclos
independentes. Ambos produziram:

```text
PASS change_tp_state host tests (5 cases)
```

Os binários dos dois ciclos têm o mesmo SHA-256:
`63db49f64b7397695418227bb5ad95073085252ec0b7c0f0810e59c4b32ee109`.

O caso existente de entrada inválida continua sendo host-only: ele registra o
breakpoint e libera o lock para permitir que o processo de teste prossiga;
no caminho de produção C, o `brk` é não-retornável como no stock.

## Limites

O módulo continua usando o assembly exact e seus gates offline anteriores:
AArch64/KCFI, Joern estrito, build canônico Docker e validações host. Esta
mudança não prova que a completion é inicializada corretamente em todos os
ciclos de vida, nem testa o scheduler real, firmware, Android input
subsystem ou hardware NX809J.

Não foram alterados `MICROTASKS`, `reconstruction_map`, `STATUS.md` ou o
assembly ligado. A decisão de substituir o objeto exact por uma compilação C
continua separada e exige nova comparação completa.
