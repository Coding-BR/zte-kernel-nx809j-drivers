# Revisão inicial — `tpd_report_work_deinit`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança nem revisão independente.

## Escopo e evidência

O alvo é a função stock `0010fe60`, com corpo de 140 bytes, microtarefa
`115_tpd_report_work_deinit`. O C é mantido como vista legível de revisão; o
objeto final usa `tpd_report_work_deinit_exact.S`.

| Item | SHA-256 |
|---|---|
| C reconstruído | `c13353dba6aeaded0e352f119eda144f654b81dd53401dc224eb4cc8fb2e9ab9` |
| Assembly exact | `2c73f231e7eed7b47d09def03b301c01da4c986a9cec2a53b5e58129308c0874` |
| Decompilação Ghidra | `6a12a1fa1545897ddd15d84d35b8c80263021572a6ff7d098f57fd3f520848b0` |
| P-Code Ghidra | `d57a4525aadde3de9c973974e566f612f6995ab51b9e5e2e723848d37f4b7b5c` |
| Joern full-driver | `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56` |
| Joern summary da atestação | `4f5f26ea2e66b22b2cc212fe79b448ec958e6bfe3622ed4099aea52b6e3dc35f` |

## Resultado da triagem

O full-driver registra 20 achados de sincronização, mas são 10 chamadas
reais de `cancel_delayed_work_sync`, duplicadas pelo modelo Joern nas formas
com cast e sem cast. Não há alocação, cópia userspace, callback indireto ou
liberação explícita nesta função.

Os dez offsets são preservados em ambas as vistas:

| C | Ghidra |
|---:|---:|
| `tpd_cdev + 1216` | `tpd_cdev + 0x4c0` |
| `+1320` | `+0x528` |
| `+1424` | `+0x590` |
| `+1528` | `+0x5f8` |
| `+1632` | `+0x660` |
| `+1736` | `+0x6c8` |
| `+1840` | `+0x730` |
| `+1944` | `+0x798` |
| `+2048` | `+0x800` |
| `+2152` | `+0x868` |

O espaçamento constante de `0x68` e a ordem de cancelamento coincidem com o
decompilado e com o assembly exact. Não foi observada divergência estática
nova.

## Interpretação de ciclo de vida

`cancel_delayed_work_sync` é compatível com o objetivo de impedir que cada
work item continue executando antes do teardown prosseguir. Entretanto, a
função assume `tpd_cdev` válido e work items inicializados. O relatório
estático não prova que todos os chamadores respeitam essa pré-condição, que a
função não é chamada duas vezes em corrida, nem que nenhum produtor agenda um
work item depois do cancelamento.

Essas propriedades dependem dos chamadores de init/remove/shutdown e da ordem
de teardown do driver. Não devem ser “corrigidas” adicionando checks ou
refatoração, pois isso mudaria o comportamento stock sem evidência.

## Gates offline

A atestação `next815_tpd_report_work_deinit_exact_v3` registra 35/35
instruções, 140/140 bytes e KCFI `0xe5c47d60` coincidente, além de source sync,
Joern estrito, build Docker em dois ciclos e harness ASan/UBSan em dois ciclos.
Execução Android e hardware NX809J permanecem deferidos.

## Decisão e pendências

Decisão: **não há divergência estática nova comprovada**, mas os 20 registros
do full-driver permanecem `OPEN`. Não houve alteração no C, no assembly, no
status da microtarefa ou no mapa.

Pendências:

1. revisão independente da ordem de init/remove/shutdown e dos dez work items;
2. teste de chamada repetida e concorrente, dentro de um harness controlado;
3. validação no Android/NX809J para confirmar que não há re-agendamento após o
   início do teardown;
4. registro da decisão do revisor independente.

`PROMOTED_OFFLINE_EXACT` continua significando apenas equivalência
estática/offline do objeto, não autorização de uso em hardware.
