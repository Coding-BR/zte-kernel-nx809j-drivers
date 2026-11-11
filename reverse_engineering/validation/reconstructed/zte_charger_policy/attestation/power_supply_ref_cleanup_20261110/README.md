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

- Build atual: duas compilações limpas do validador canônico produziram o mesmo SHA-256 `915b27b135bdcbe1e61d6ba889fd4985e8562a652d23a773ef1faebee8496e58` (337.168 bytes), a partir da fonte sincronizada atual. Identidade do kernel e `vermagic` passaram.
- Joern v4.0.548 fixado: gate estrito e geração de slices passaram para as três funções.
- KCFI: os IDs/tipos comparados coincidem quando o tamanho do corpo é ignorado; o tamanho mudou porque o caminho de cleanup ganhou instruções. O relatório separado registra essa comparação.
- Assembly: extração nova do binário `915b…` cobriu 38 identidades; 30 são exatas e oito diferem. Nas três funções de cleanup, seções e relocations coincidem; opcodes e tamanhos de símbolo divergem pelo `put` adicional no erro. A comparação estrita do módulo é `FAIL` para 8/38.
- KMI do módulo inteiro segue incompleto: sete imports inesperados (`alarm_cancel`, `alt_cb_patch_nops`, `cancel_delayed_work_sync`, `destroy_workqueue`, `power_supply_register`, `power_supply_unregister`, `zte_misc_unregister_callback`) e dois ausentes (`devm_kfree`, `devm_power_supply_register`).
- Auditoria integral final: os dois builds Docker reproduziram o hash `915b…`, mas o resultado permanece `incomplete_or_failed`, com `static_verified=[]`. Falham `undefined_symbols_match`, `candidate_runtime_content_matches_fresh` e `candidate_runtime_section_layout_matches_fresh`; os mapeamentos 19, 20 e 23 aguardam revisão independente. Veja `validator_final_current_build_20261111.json` e `.md`.
- O `.ko` curado continua em `2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec`; o fresh `915b…` não foi promovido. O arquivo `fresh_candidate_unpromoted.ko` (`4465…`) é histórico e pertence a uma fonte anterior; veja a reconciliação atual antes de usar qualquer evidência daquele binário.
- O harness do modelo C passou em duas compilações e execuções limpas no Docker, cobrindo 39 funções. Os casos novos verificam `-EIO` preservado e exatamente um `put` nas três saídas de erro; falhas ao localizar a fonte não soltam referências, e os caminhos de sucesso continuam com um `put`. O harness seleciona o modelo C via `ZTE_CHARGER_POLICY_HOST_TEST`; ele não executa as ilhas AArch64 de produção.
- O mapa e o status foram sincronizados para o snapshot curado após a reconciliação final; o recibo mais recente é `source_sync_reconciled_docs_applied_20261111.json`.
- Revisão independente e validação dinâmica no smartphone permanecem pendentes. Nenhum módulo foi carregado no aparelho.

Este lote cobre estas três funções de `zte_charger_policy`; não atesta a conclusão dos demais drivers.

## Artefatos

- `reference_lifetime_review.json`: hashes, funções, APIs, resultados e limitações.
- `host_test_attestation_20261111.json` e `../../host_test_report.json`: teste focado e relatório completo das duas execuções reproduzíveis.
- `current_build_reconciliation_20261111.json`, `current_build_assembly_20261111/` e `current_build_assembly_comparison_20261111.json`: build e assembly atuais vinculados por hash.
- `validator_final_current_build_20261111.json` e `.md`: auditoria completa do build atual e gates pendentes.
- `source_sync_reconciled_docs_dryrun_20261111.json` e `source_sync_reconciled_docs_applied_20261111.json`: plano e recibo da sincronização final para Docker.
- `hard_protocol_core_final/hard_protocol_report.json`: gates do protocolo após a sincronização final.
- `canonical_docker/driver_audit.json`: build duplo do snapshot curado e auditoria do módulo.
- `hard_protocol_core_final/assembly/comparison.json`: comparação de assembly stock/candidato.
- `hard_protocol_core_final/kcfi/comparison.json`: comparação de IDs KCFI sem usar o tamanho do corpo como gate.
- `hard_protocol_core_final/joern/joern_gate_summary.json` e `hard_protocol_core_final/joern/slices/slices.json`: Joern estrito e slices.
