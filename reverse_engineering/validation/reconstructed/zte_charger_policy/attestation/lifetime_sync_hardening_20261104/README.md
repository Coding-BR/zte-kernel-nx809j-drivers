# Lote de hardening: zte_charger_policy

## Resultado

O código foi atualizado para fechar riscos de vida útil e sincronização, compilado duas vezes no Docker com hashes idênticos e exercitado no harness de host. O binário reproduz a fonte atual, mas **não é promovido como reconstrução estática equivalente ao stock**.

- Stock SHA-256: 0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c.
- Candidato SHA-256: 37ec41388d9e6a971f15e4222e6685a926b362f7a5eff36eddd8128d5a865f6a (331352 bytes).
- Docker: duas compilações reproduzíveis; SHA-256 37ec41388d9e6a971f15e4222e6685a926b362f7a5eff36eddd8128d5a865f6a.
- Host: PASS, 39 funções cobertas.
- KCFI: PASS para 5 funções modificadas.
- Assembly estrito: 3/38 funções correspondem integralmente; o mapa reclassifica as outras 35 como reviewed, sem alegação de equivalência stock.
- Validador: incomplete_or_failed; gates que falham: undefined_symbols_match.

## Delta de imports contra o stock

- Removidos do candidato: devm_kfree, devm_power_supply_register.
- Acrescentados ao candidato: alarm_cancel, cancel_delayed_work_sync, destroy_workqueue, power_supply_register, power_supply_unregister, zte_misc_unregister_callback.

O delta é consequência declarada da limpeza de callbacks e do teardown síncrono. Build, conteúdo ELF, seções de runtime e modinfo passam contra a compilação limpa; igualdade de imports falha deliberadamente e impede o selo de reconstrução estática.

## Alterações

- Foi adicionada a desmontagem ordenada de vínculos de callback, notifier, power supply, alarme, trabalho atrasado, workqueues e wake source.
- Foi adicionada uma flag de encerramento para o trabalho de timeout e o callback do alarme.
- O registro devm do power supply foi substituído por registro e remoção explícitos.
- A chamada assíncrona de devm_kfree ao esgotar tentativas foi removida; devres mantém a alocação do probe até a remoção do dispositivo.

## Limites

A validação foi offline. O ADB não detectou dispositivo; nenhum módulo foi carregado ou removido no telefone. Revisão independente pendente. Equivalência semântica e segurança em hardware não foram estabelecidas.

## Recibos

- Build canônico: reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_hardening_20261104/canonical_build_report.json.
- Comparação de assembly: reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_hardening_20261104/assembly_comparison.json.
- Comparação KCFI: reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_hardening_20261104/kcfi_comparison.json.
- Harness host: reverse_engineering/validation/reconstructed/zte_charger_policy/host_test_report.json.
- Mapa: kernel_development/drivers/reconstructed/zte_charger_policy/reconstruction_map.json.
- Recibo JSON hash-bound: attestation.json.
