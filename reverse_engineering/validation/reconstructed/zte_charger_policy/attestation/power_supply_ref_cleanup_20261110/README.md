# Liberação de referências de power supply

Este lote corrige três saídas de erro que retinham uma referência obtida por `*_power_supply_get_by_name`. A alteração é uma correção de vida útil deliberada: ela diverge do comportamento stock nesse ramo, portanto não declara equivalência semântica nem conclusão da reconstrução do driver.

## Evidência do problema

O pseudocódigo Ghidra e a assembly stock mostram que as três funções chamam `power_supply_put`/`zte_power_supply_put` no caminho de sucesso, mas saem sem o `put` quando `*_power_supply_get_property` retorna erro. A documentação e a implementação do kernel fixado mostram que `power_supply_get_by_name` incrementa `use_cnt`, que o chamador deve chamar `power_supply_put`, e que o `put` reduz `use_cnt` e a referência do device. O unregister avisa quando ainda há referências retidas e libera recursos no último `put`.

| Função stock | Entrada | Referência | Saída de erro corrigida |
| --- | --- | --- | --- |
| `charger_policy_get_status` | `00101b04` | `power_supply_get_by_name` | `power_supply_put`; mantém o retorno `false` |
| `charger_policy_get_prop_by_name` | `00101bd8` | `power_supply_get_by_name` | `power_supply_put`; restaura e retorna o errno original |
| `zte_charger_policy_get_prop_by_name` | `00102020` | `zte_power_supply_get_by_name` | `zte_power_supply_put`; restaura e retorna o errno original |

O achado suportado é referência vazada em cada retorno negativo; isso pode reter recursos do provider e disparar o aviso de `use_cnt` no unregister. As evidências estáticas não provam use-after-free nem uma falha reproduzida em execução.

## Implementação

A alteração está no modelo C e nas três ilhas de assembly de produção. No assembly, os ramos de erro preservam o errno em registrador callee-saved durante a chamada do `put`; o status preserva o errno para o argumento do log e continua retornando `false`. Os ramos de sucesso mantêm um único `put`. Os desvios do stack protector e para o epílogo foram ajustados para manter os destinos após a inserção das instruções.

## Validação e limites

- Docker: duas compilações limpas do protocolo e duas do snapshot `engenharia\curated` produziram o mesmo SHA-256 `4465ab8dc3cc09335a0f361ce28e2d6f3fa1602e77d0d89960b647fc5d439760` (331.704 bytes). A identidade do kernel/toolchain e o `vermagic` alvo passaram.
- Joern v4.0.548 fixado: gate estrito e geração de slices passaram para as três funções.
- KCFI: os IDs/tipos comparados coincidem quando o tamanho do corpo é ignorado; o tamanho mudou porque o caminho de cleanup ganhou instruções. O relatório separado registra essa comparação.
- Assembly: seções e relocations passam nas três funções; opcodes e tamanhos de símbolo divergem intencionalmente. A comparação estrita é `FAIL` para 3/3.
- KMI do módulo inteiro segue incompleto: seis imports inesperados (`alarm_cancel`, `cancel_delayed_work_sync`, `destroy_workqueue`, `power_supply_register`, `power_supply_unregister`, `zte_misc_unregister_callback`) e dois ausentes (`devm_kfree`, `devm_power_supply_register`). A correção atual não adiciona novo import: ambos os `put` já eram chamados no caminho de sucesso stock.
- O `.ko` ativo do candidato continua no hash anterior `2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec`. O binário recém-compilado está preservado como `fresh_candidate_unpromoted.ko`; não foi promovido porque a paridade KMI do driver permanece incompleta. O mapa continua vinculado ao `.ko` ativo anterior.
- Revisão independente, harness de host e validação dinâmica no smartphone permanecem pendentes. Nenhum módulo foi carregado no aparelho.

Este lote cobre estas três funções de `zte_charger_policy`; não atesta a conclusão dos demais drivers.

## Artefatos

- `reference_lifetime_review.json`: hashes, funções, APIs, resultados e limitações.
- `hard_protocol_core_final/hard_protocol_report.json`: gates do protocolo após a sincronização final.
- `canonical_docker/driver_audit.json`: build duplo do snapshot curado e auditoria do módulo.
- `hard_protocol_core_final/assembly/comparison.json`: comparação de assembly stock/candidato.
- `hard_protocol_core_final/kcfi/comparison.json`: comparação de IDs KCFI sem usar o tamanho do corpo como gate.
- `hard_protocol_core_final/joern/joern_gate_summary.json` e `hard_protocol_core_final/joern/slices/slices.json`: Joern estrito e slices.
