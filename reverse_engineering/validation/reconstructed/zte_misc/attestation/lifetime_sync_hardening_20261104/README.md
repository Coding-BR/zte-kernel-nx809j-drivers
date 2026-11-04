# Lote de hardening: zte_misc

## Resultado

O código foi atualizado para fechar riscos de vida útil e sincronização, compilado duas vezes no Docker com hashes idênticos e exercitado no harness de host. O binário reproduz a fonte atual, mas **não é promovido como reconstrução estática equivalente ao stock**.

- Stock SHA-256: 6455a3c97f10d10914248c4a92b0f92b06a8e06921def9c56c6a57a863703f9d.
- Candidato SHA-256: 4397e8fcd4880b10e2af32a32d361708f2c227c2c135840750061730f4ea8f8c (265040 bytes).
- Docker: duas compilações reproduzíveis; SHA-256 4397e8fcd4880b10e2af32a32d361708f2c227c2c135840750061730f4ea8f8c.
- Host: PASS, 15 funções cobertas.
- KCFI: PASS para 4 funções modificadas.
- Assembly estrito: 10/14 funções correspondem integralmente; o mapa reclassifica as outras 4 como reviewed, sem alegação de equivalência stock.
- Validador: incomplete_or_failed; gates que falham: undefined_symbols_match.

## Delta de imports contra o stock

- Removidos do candidato: nenhum.
- Acrescentados ao candidato: __kmalloc_cache_noprof, __srcu_read_lock, __srcu_read_unlock, delayed_work_timer_fn, kfree, kmalloc_caches, mem_alloc_profiling_key, mutex_lock, mutex_unlock, synchronize_srcu.

O delta é consequência declarada da limpeza de callbacks e do teardown síncrono. Build, conteúdo ELF, seções de runtime e modinfo passam contra a compilação limpa; igualdade de imports falha deliberadamente e impede o selo de reconstrução estática.

## Alterações

- Os callbacks são publicados como vínculos imutáveis e executados sob SRCU.
- Foi adicionada a API zte_misc_unregister_callback(); a remoção espera callbacks em andamento antes de liberar o vínculo.
- A flag do modo de boot foi marcada como volatile porque o probe stock preservado em assembly a altera fora do fluxo de dados visível ao compilador C.

## Limites

A validação foi offline. O ADB não detectou dispositivo; nenhum módulo foi carregado ou removido no telefone. Revisão independente pendente. Equivalência semântica e segurança em hardware não foram estabelecidas.

## Recibos

- Build canônico: reverse_engineering/validation/reconstructed/zte_misc/attestation/lifetime_sync_hardening_20261104/canonical_build_report.json.
- Comparação de assembly: reverse_engineering/validation/reconstructed/zte_misc/attestation/lifetime_sync_hardening_20261104/assembly_comparison.json.
- Comparação KCFI: reverse_engineering/validation/reconstructed/zte_misc/attestation/lifetime_sync_hardening_20261104/kcfi_comparison.json.
- Harness host: kernel_development/drivers/validation/zte_misc/host_test_report.json.
- Mapa: kernel_development/drivers/reconstructed/zte_misc/reconstruction_map.json.
- Recibo JSON hash-bound: attestation.json.
