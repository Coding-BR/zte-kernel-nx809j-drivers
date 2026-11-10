# Revisão do retry de `probe_work` — 2026-11-10

## Conclusão

A hipótese de que `cancel_delayed_work_sync()` permite que o retry ativo de `probe_work` escape durante a remoção não se confirmou no kernel fixado para o NX809J.

No código do kernel, `__cancel_work_sync()` chama `__cancel_work()` com `WORK_CANCEL_DISABLE`, drena a execução por `__flush_work()` e só então reabilita o trabalho quando o chamador não pediu desativação permanente. `cancel_delayed_work_sync()` usa esse caminho. Assim, uma tentativa de retry feita pelo próprio worker enquanto a remoção o drena não é enfileirada.

A auditoria da fonte encontrou dois pontos que enfileiram `probe_work`: o agendamento inicial no probe e o reenvio do próprio worker após falha. Não foi encontrado outro produtor concorrente. A hipótese específica desta revisão, portanto, não justifica trocar o cancelamento por `disable_delayed_work_sync()`.

## Decisão

Nenhuma alteração de código ou de candidato foi mantida neste lote. A tentativa temporária de usar `disable_delayed_work_sync()` foi revertida. Fonte e módulo permanecem nos hashes já atestados pelo lote `lifetime_sync_hardening_20261110`.

## Evidência

- `kernel_workqueue_sync_excerpt.txt`: implementação fixada de `__cancel_work()`, `__cancel_work_sync()`, `cancel_delayed_work_sync()` e `disable_delayed_work_sync()`, mais o CRC exportado no `Module.symvers` do alvo.
- `review.json`: decisão e hashes da fonte, candidato e trecho do kernel.

Esta é uma conclusão de revisão estática. O módulo não foi carregado no smartphone neste lote; a validação dinâmica e a revisão humana independente continuam pendentes.
