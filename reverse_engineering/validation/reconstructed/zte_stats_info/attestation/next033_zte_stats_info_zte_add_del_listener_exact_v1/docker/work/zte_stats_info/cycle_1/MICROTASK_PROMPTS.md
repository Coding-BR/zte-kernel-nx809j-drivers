# Prompts Atomicos: zte_stats_info

## 001_zte_lock_task_sighand - __zte_lock_task_sighand

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_stats_info
Funcao stock: __zte_lock_task_sighand
Entrada Ghidra: 001002bc
Tamanho stock: 132 bytes
Categoria: core_logic
Alvo no fonte: zte_stats_info.c:__zte_lock_task_sighand
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/decompiled/0000_001002bc___zte_lock_task_sighand.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/pcode/0000_001002bc___zte_lock_task_sighand.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 002_zte_taskstats_user_cmd - zte_taskstats_user_cmd

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_stats_info
Funcao stock: zte_taskstats_user_cmd
Entrada Ghidra: 00100344
Tamanho stock: 1864 bytes
Categoria: core_logic
Alvo no fonte: zte_stats_info.c:zte_taskstats_user_cmd
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/decompiled/0001_00100344_zte_taskstats_user_cmd.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/pcode/0001_00100344_zte_taskstats_user_cmd.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 003_zte_cgroupstats_user_cmd - zte_cgroupstats_user_cmd

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_stats_info
Funcao stock: zte_cgroupstats_user_cmd
Entrada Ghidra: 00100aac
Tamanho stock: 8 bytes
Categoria: core_logic
Alvo no fonte: zte_stats_info.c:zte_cgroupstats_user_cmd
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/decompiled/0002_00100aac_zte_cgroupstats_user_cmd.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/pcode/0002_00100aac_zte_cgroupstats_user_cmd.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 004_zte_parse - zte_parse

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_stats_info
Funcao stock: zte_parse
Entrada Ghidra: 00100ab4
Tamanho stock: 188 bytes
Categoria: core_logic
Alvo no fonte: zte_stats_info.c:zte_parse
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/decompiled/0003_00100ab4_zte_parse.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/pcode/0003_00100ab4_zte_parse.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 005_zte_add_del_listener - zte_add_del_listener

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_stats_info
Funcao stock: zte_add_del_listener
Entrada Ghidra: 00100b98
Tamanho stock: 600 bytes
Categoria: core_logic
Alvo no fonte: zte_stats_info.c:zte_add_del_listener
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/decompiled/0004_00100b98_zte_add_del_listener.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/pcode/0004_00100b98_zte_add_del_listener.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 006_zte_prepare_reply - zte_prepare_reply

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_stats_info
Funcao stock: zte_prepare_reply
Entrada Ghidra: 00100e20
Tamanho stock: 268 bytes
Categoria: core_logic
Alvo no fonte: zte_stats_info.c:zte_prepare_reply
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/decompiled/0005_00100e20_zte_prepare_reply.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/pcode/0005_00100e20_zte_prepare_reply.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 007_zte_mk_reply - zte_mk_reply

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_stats_info
Funcao stock: zte_mk_reply
Entrada Ghidra: 00100f2c
Tamanho stock: 272 bytes
Categoria: core_logic
Alvo no fonte: zte_stats_info.c:zte_mk_reply
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/decompiled/0006_00100f2c_zte_mk_reply.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/pcode/0006_00100f2c_zte_mk_reply.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 008_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_stats_info
Funcao stock: init_module
Entrada Ghidra: 00101060
Tamanho stock: 220 bytes
Categoria: lifecycle
Alvo no fonte: zte_stats_info.c:init_module
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/decompiled/0007_00101060_init_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_stats_info/offline_static/ghidra_stock/pcode/0007_00101060_init_module.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```
