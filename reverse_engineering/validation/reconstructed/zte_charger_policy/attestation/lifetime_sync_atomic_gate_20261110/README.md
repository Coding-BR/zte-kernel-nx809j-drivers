# Corrida de teardown e gate atomico — `zte_charger_policy`

## Achado

O setter da power supply (`policy_psy_set_property_model`) pode enfileirar `timeout_work`. No teardown, a primeira drenagem de `timeout_work` ocorre antes de `power_supply_unregister()`. Um callback sysfs que ja estava ativo pode enfileirar o trabalho depois dessa primeira drenagem; o segundo cancelamento, depois do unregister, e necessario para drenar esse trabalho tardio antes de destruir a workqueue ou liberar o estado.

Antes deste lote, os handlers consultavam `runtime_stopping` por `READ_ONCE` enquanto o teardown escrevia com `WRITE_ONCE`. Isso nao dava uma unica ordem atomica entre a verificacao do worker e a transicao para parada. Um handler poderia observar um valor antigo e prosseguir no intervalo do teardown.

## Correcao

- `runtime_stopping` agora e `atomic_t`, no espaco de quatro bytes que ja existia no layout. O campo continua no offset 532 e `struct charger_policy_info` continua com 544 bytes, ambos protegidos por `static_assert`.
- A inicializacao usa `atomic_set`. Os gates de `timeout_work`, `probe_work` e do callback de alarme usam `atomic_cmpxchg(&runtime_stopping, 0, 0)`; as transicoes de parada/retry usam `atomic_xchg`.
- Assim, cada leitura de gate e ordenada atomicamente contra a transicao do teardown. Um trabalho que ja passou pelo gate e sincronizado pelos cancelamentos sincronos; um trabalho enfileirado depois da parada retorna no gate inicial, e a segunda drenagem continua cobrindo o setter sysfs em voo.
- A ordem de teardown existente foi mantida: marcar parada, desregistrar produtores/notifier, cancelar alarme e trabalho, desregistrar a power supply, drenar novamente e destruir os recursos.

Esta e uma mitigacao baseada na ordem observada no codigo do kernel fixado. Nao e evidencia de uma falha reproduzida em runtime nem prova de que todas as corridas do driver foram eliminadas.

## Evidencia do kernel fixado

Fontes lidas no volume `nubia_sm8850_kernel_src_nx809j_oout_20261030` usado pelo Docker NX809J:

| Fonte | SHA-256 | Papel na analise |
| --- | --- | --- |
| `drivers/power/supply/power_supply_core.c` | `e02c8813380a478a00665788c28c0f0ca09f349e57213d61efe765b14101afb2` | `power_supply_unregister()` cancela o `changed_work` e remove o device; a implementacao tambem controla `use_cnt`. |
| `drivers/power/supply/power_supply_sysfs.c` | `aee8b63fda8ee81719a45e3676fdeb3e4ac0f2e7645fe6c6942c32fa8b683f26` | Caminho do setter sysfs ate `power_supply_set_property()` e o callback do driver. |
| `kernel/notifier.c` | `1f4a1b2384a8751d780d39a748ef5beda21149f6e715af54df131ff9add2c44e` | Sincronizacao do unregister do blocking notifier com callbacks ativos. |
| `kernel/time/alarmtimer.c` | `37900e979556d1db91ca0050b2dc190ace04eecb7690d076dacfa2890d2086d2` | `alarm_cancel()` espera a execucao do callback do alarme terminar. |
| `kernel/workqueue.c` | `192be8175ff7fed8445758f98a18fc67e88245801ee75f84378af82fda3dd46e` | `cancel_delayed_work_sync()` drena o trabalho e impede requeue durante a drenagem. |

## Validacao

- Snapshot curado do Docker sincronizado com a fonte do repositorio. A primeira sincronizacao copiou `zte_charger_policy.c` e `tests/host_stubs.h`; apos atualizar este status, a sincronizacao final copiou `STATUS.md`. A verificacao posterior passou sem copiar/remover arquivos. Recibos: `source_sync_dryrun.json`, `source_sync_applied.json`, `source_sync_final_dryrun.json`, `source_sync_final_applied.json` e `source_sync_postverify.json`.
- Duas builds limpas no container `nubia-sm8850-kernel-builder:latest`, usando o volume de fonte/toolchain NX809J, terminaram com codigo 0 e produziram o mesmo ELF AArch64 relocavel: SHA-256 `08cb726c96f9a822c5d3fa8acb3ead9e67abd1d79a42efcd417128af4f6e602c`, 337.144 bytes.
- Identidade do kernel/toolchain, `vermagic`, aliases, namespaces, rastreabilidade e reprodutibilidade passaram no auditor. O auditor estrito continua `incomplete_or_failed`: o candidato ativo e anterior ao build novo, ha diferencas de conteudo/layout runtime e de imports, e tres entradas do mapa ainda nao tem revisao independente. Portanto `static_verified` e vazio.
- KCFI: os cinco IDs/tipos dos simbolos publicos coincidem com o stock; a comparacao ignora o tamanho do corpo, que mudou com a extracao dos modelos e o hardening.
- Assembly: 5 funcoes comparadas; as 5 permanecem diferentes em instrucoes e tamanho; as secoes correspondem e relocations correspondem em 1/5. O gate estrito falha, como esperado para estas alteracoes, e nao se afirma equivalencia exata.
- O `.ko` novo ficou preservado como `fresh_candidate_unpromoted.ko`. O `.ko` ativo e o hash do mapa nao foram alterados.
- Nao foram executados harness de host, teste de hardware ou carregamento de modulo. Revisao independente pendente.

## Arquivos de evidencia

- `attestation.json`: hashes e conclusoes do lote.
- `driver_audit.json` / `driver_audit.md`: build Docker e auditoria estrita.
- `assembly_comparison.json`: comparacao stock/candidato para as cinco funcoes afetadas.
- `stock_kcfi.json`, `candidate_kcfi_public.json` e `kcfi_comparison.json`: tipos KCFI.
- Recibos `source_sync_*.json`: sincronizacao do snapshot curado, incluindo a sincronizacao e verificacao final do `STATUS.md`.

