# Triagem semântica do zte_tpd — rodada 2

## Risco de lifetime confirmado

O work de ghost check ocupa `tpd_cdev + 0x938`. `tpd_touch_release` pode
enfileirá-lo com atraso de 500 jiffies. O callback `tp_ghost_check_work` chama
`tp_ghost_check`; no caminho em que há ghost point, `tp_ghost_check` grava no
buffer zlog (`tpd_cdev + 0xbe8`) e chama `tpd_zlog_record_notify`, que também
consulta e escreve nesse buffer.

Três caminhos de encerramento liberam o buffer antes de sincronizar esse work:

- `tpd_workqueue_deinit`: libera e zera o buffer em `tpd_workqueue_deinit.c:16-17`,
  depois chama `cancel_delayed_work_sync` para o work de ghost em `:18`.
- `zte_touch_shutdown`: mesma ordem em `zte_touch_shutdown.c:30-32`.
- `zte_touch_deinit`: há uma liberação antecipada antes de cancelar os trabalhos
  de report e, mais tarde, outra liberação/limpeza antes do cancelamento do work
  de ghost (`zte_touch_deinit.c:18-20, 32-34`).

Se o callback estiver executando e já tiver observado o ponteiro não nulo quando
o teardown libera o buffer, os acessos seguintes por `snprintf`, `strlen` ou
`tpd_zlog_record_notify` podem usar memória liberada. A documentação do kernel
define `cancel_delayed_work_sync` como cancelamento que espera o callback terminar;
nesses caminhos, essa espera acontece depois do `vfree`
([Workqueue — Linux Kernel documentation](https://docs.kernel.org/core-api/workqueue.html)).
Não reproduzi a corrida em hardware; a conclusão é uma confirmação estática da
janela condicional.

Esse comportamento também está no candidato reconstruído e tem evidência de
paridade offline no mapa. `tpd_workqueue_deinit` e `zte_touch_shutdown` têm
atestação de builds canônicos Docker de dois ciclos. Além disso, comparei o
snapshot do Docker com a árvore versionada: os 848 arquivos da allowlist Kbuild
estão idênticos. Não alterei o fonte reconstruído nesta rodada, pois isso
mudaria uma função promovida como `OFFLINE_EXACT`.

Uma correção de hardening precisa primeiro bloquear novas submissões e encerrar
todos os produtores de `tpd_touch_release`, incluindo caminhos de relatório de
toque e liberação de slots no remove/suspend. Apenas mover o cancelamento para
antes do `vfree` ainda não está provado suficiente.

## Gap do Joern em `syna_dev_helper_work`

O gate estrito é `PASS` e parse-clean, mas `graph.joern_cpg_gap` continua `true`.
Joern não emitiu a aresta esperada para `syna_tcm_get_boot_info`; o scanner de
fonte recuperou uma ocorrência em `syna_dev_helper_work.c:32`. O relatório mostra
zero chamadas mapeadas efetivamente ausentes e zero chamadas não resolvidas.
Isso recupera a cobertura exigida pelo gate, sem transformar o fallback em uma
aresta nativa do CPG. Mantive o gap explicitamente aberto para regressão do
parser/consulta.

## Escopo desta rodada

Classifiquei seis achados Joern de sincronização nos dois caminhos de teardown e
uma corrida de lifetime entre sete funções. Ainda não revisei todos os outros
achados. Esta rodada é uma análise estática, não uma revisão humana independente
nem validação de runtime.
