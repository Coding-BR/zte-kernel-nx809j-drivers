# Revisão estática — `tpd_touch_press`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança, equivalência
semântica integral nem validação em hardware.

## Evidência cruzada

O alvo stock é `0010e254`, com `2116` bytes e `529` instruções AArch64. A
materialização ligada continua em `tpd_touch_press_exact.S`; o C é uma vista
legível para auditoria. A atestação `next821_tpd_touch_press_exact_v3` registra
paridade AArch64, KCFI, Ghidra/P-Code, Joern estrito, build Docker reproduzível
e harness ASan/UBSan em dois ciclos.

O assembly e o C coincidem nos caminhos de:

1. normalização de coordenadas e seleção do slot;
2. primeira impressão, atualização e filtragem de movimento;
3. limites de tela/edge area e flags de ghost/edge;
4. debounce com chamada a `tpd_touch_release`;
5. publicação do evento, `usleep_range_state` e atualização final do ponto.

A repetição vinculada a esta revisão está preservada em
`tpd_touch_press_host_current_v4.json` (SHA-256
`c183a6309243345827bf861897ac808f96d8e5f70ce68682b091533070e86a1d`).

## Cobertura host reproduzida

O harness cobre quatro contratos: entrada inválida, primeiro contato/movimento,
limite de área e liberação por debounce. A execução Docker usa o mesmo
`nubia-sm8850-kernel-builder:latest` e `clang-r536225`, com ASan/UBSan; o
relatório registra dois binários idênticos e `PASS tpd_touch_press host tests
(4 cases)` em cada ciclo.

## Pontos que permanecem abertos

O stock termina em breakpoint não-retornável quando um índice/offset interno
excede o limite comprovado pelo assembly (`brk #0x1`). O harness usa um stub
host determinístico para permitir testes; isso não modela o comportamento real
do kernel.

Os fluxos dependem de `tpd_cdev`, `point_report_info`, `jiffies`,
`point_is_in_limit_area`, `tpd_touch_report` e `tpd_touch_release`. Joern não
substitui a revisão humana do ciclo de vida desses objetos, nem prova que o
estado de input e os callbacks permanecem válidos durante teardown.

## Decisão

Não há divergência objetiva nova que justifique alterar a implementação exact.
O objeto permanece elegível somente para a alegação offline já registrada. A
revisão independente, scheduler/input Android, firmware, rollback e execução
no NX809J continuam pendentes.
