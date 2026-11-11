# Revisao do contrato de unregister SRCU — `zte_misc`

## Resultado

Esta revisao estatica encontrou uma precondicao que nao estava registrada no recibo anterior: `zte_misc_unregister_callback()` nao pode ser chamado sincronamente por um callback que esteja sendo executado sob `zte_misc_callbacks_srcu`. `synchronize_srcu()` espera que as secoes SRCU anteriores terminem; dentro da propria secao, isso espera pelo chamador e causa deadlock.

Os chamadores atuais encontrados em `kernel_development` fazem unregister em caminhos de teardown: `charger_policy_stop_runtime()` e `zlog_test_exit()`. A busca nao encontrou chamada direta de unregister dentro das implementacoes de callback. Isso cobre o codigo reconstruido presente no repositorio, nao consumidores externos.

O caminho de lifetime e coerente sob essa precondicao: os tres caminhos leitores mantem SRCU durante a chamada indireta; o unregister despublica o binding, espera a grace period e libera o binding. O consumidor so deve liberar `priv` depois do retorno bem-sucedido.

## Limites de reconstrução

- O stock Ghidra/assembly contem `zte_misc_register_callback`, mas nao a extensao `zte_misc_unregister_callback`.
- Quatro funcoes do candidato continuam `reviewed`, com equivalencia ao stock nao estabelecida; o mapa continua em 10/14 funcoes offline-exact.
- O mapa e o `STATUS.md` foram sincronizados com `engenharia/curated/zte_misc`; o recibo terminou sem diferencas. Tres copias duplicadas e byte-identicas dos testes em `tests/tests/` foram removidas do snapshot; os originais em `tests/` permanecem.
- A revisao e feita pelo mesmo fluxo de trabalho, nao e revisao independente.
- Nenhum fonte C ou binario foi alterado. Como apenas mapa/relatorio mudaram, nao houve novo build Docker nem teste de hardware.

## Recibos hash-bound

- Fonte candidata: `kernel_development/drivers/reconstructed/zte_misc/zte_misc.c`, SHA-256 `2c6f992995eed2026348dd39f6c56909271af8056d2db88773e19a93c39f1e30`.
- Modulo candidato: `kernel_development/drivers/reconstructed/zte_misc/zte_misc.ko`, SHA-256 `4397e8fcd4880b10e2af32a32d361708f2c227c2c135840750061730f4ea8f8c`.
- Modulo stock: `reference_modules/full_vendor_boot/zte_misc.ko`, SHA-256 `6455a3c97f10d10914248c4a92b0f92b06a8e06921def9c56c6a57a863703f9d`.
- Pseudocodigo stock `zte_misc_register_callback`: SHA-256 `85d762da0e1875471db7ab5c258f1248ccdbcad713dabd4b755ba9e509799ad2`.
- Pseudocodigo stock `zte_misc_get_node_val`: SHA-256 `9a4bb49ee09f5ce22b88786dd6893b988633e23c6552f7789bd657f53a595807`.
- Comparacao de assembly do lote SRCU: `lifetime_sync_hardening_20261104/assembly_comparison.json`, SHA-256 `9ca6a3b0b292096f3d21394f19cc2071ecd55efd8e526549b237197e137ac2cc`.
- Mapa atualizado: `kernel_development/drivers/reconstructed/zte_misc/reconstruction_map.json`, SHA-256 `d28003c0cfb18e7be8d102008551e172442f859b23c831bdd9d9e042170bfbdf`.
- Sincronizacao com o snapshot Docker: `source_sync_applied.json` (passou, 2 arquivos copiados, 3 duplicatas removidas, nenhuma diferenca restante).
- Consumidores reconstruidos examinados: `zte_charger_policy.c`, SHA-256 `ef0ff259425e6851d48f0be467eff7c004f0d13ea2aa3fec35ab60c18c98091d`; `zlog_test_main.c`, SHA-256 `e78d87dcccc731630dc478e1039ecffe19b499782ace5e8a8de4d57dd003c0a8`.

## Referencia tecnica

A documentacao da API Linux proibe chamar `synchronize_srcu()` de dentro da secao de leitura SRCU correspondente e identifica deadlock como resultado: [Linux Kernel API — `synchronize_srcu`](https://docs.kernel.org/core-api/kernel-api.html).
