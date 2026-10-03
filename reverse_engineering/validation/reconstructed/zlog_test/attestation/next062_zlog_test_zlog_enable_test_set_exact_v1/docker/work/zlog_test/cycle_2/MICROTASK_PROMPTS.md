# Prompts Atomicos: zlog_test

## 001_zlog_enable_test_set - zlog_enable_test_set

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: zlog_enable_test_set
Entrada Ghidra: 0010036c
Tamanho stock: 836 bytes
Categoria: core_logic
Alvo no fonte: zlog_test_main.c:zlog_enable_test_set
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0000_0010036c_zlog_enable_test_set.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0000_0010036c_zlog_enable_test_set.jsonl

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

## 002_zlog_enable_test_get - zlog_enable_test_get

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: zlog_enable_test_get
Entrada Ghidra: 001006b4
Tamanho stock: 48 bytes
Categoria: core_logic
Alvo no fonte: zlog_test_main.c:zlog_enable_test_get
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0001_001006b4_zlog_enable_test_get.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0001_001006b4_zlog_enable_test_get.jsonl

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

## 003_poll - poll

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: poll
Entrada Ghidra: 001006e8
Tamanho stock: 84 bytes
Categoria: core_logic
Alvo no fonte: zlog_test_main.c:poll
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0002_001006e8_poll.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0002_001006e8_poll.jsonl

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

## 004_dump - dump

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: dump
Entrada Ghidra: 00100740
Tamanho stock: 188 bytes
Categoria: core_logic
Alvo no fonte: zlog_test_main.c:dump
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0003_00100740_dump.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0003_00100740_dump.jsonl

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

## 005_zlog_test1_thread - zlog_test1_thread

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: zlog_test1_thread
Entrada Ghidra: 00100800
Tamanho stock: 236 bytes
Categoria: user_abi
Alvo no fonte: zlog_test_main.c:zlog_test1_thread
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0004_00100800_zlog_test1_thread.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0004_00100800_zlog_test1_thread.jsonl

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

## 006_zlog_test2_thread - zlog_test2_thread

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: zlog_test2_thread
Entrada Ghidra: 001008f0
Tamanho stock: 236 bytes
Categoria: user_abi
Alvo no fonte: zlog_test_main.c:zlog_test2_thread
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0005_001008f0_zlog_test2_thread.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0005_001008f0_zlog_test2_thread.jsonl

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

## 007_zlog_test3_thread - zlog_test3_thread

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: zlog_test3_thread
Entrada Ghidra: 001009e0
Tamanho stock: 236 bytes
Categoria: user_abi
Alvo no fonte: zlog_test_main.c:zlog_test3_thread
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0006_001009e0_zlog_test3_thread.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0006_001009e0_zlog_test3_thread.jsonl

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

## 008_zlog_test4_thread - zlog_test4_thread

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: zlog_test4_thread
Entrada Ghidra: 00100ad0
Tamanho stock: 236 bytes
Categoria: user_abi
Alvo no fonte: zlog_test_main.c:zlog_test4_thread
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0007_00100ad0_zlog_test4_thread.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0007_00100ad0_zlog_test4_thread.jsonl

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

## 009_zlog_test5_thread - zlog_test5_thread

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: zlog_test5_thread
Entrada Ghidra: 00100bc0
Tamanho stock: 236 bytes
Categoria: user_abi
Alvo no fonte: zlog_test_main.c:zlog_test5_thread
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0008_00100bc0_zlog_test5_thread.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0008_00100bc0_zlog_test5_thread.jsonl

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

## 010_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: init_module
Entrada Ghidra: 00100cb0
Tamanho stock: 616 bytes
Categoria: lifecycle
Alvo no fonte: zlog_test_main.c:zlog_test_init
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0009_00100cb0_init_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0009_00100cb0_init_module.jsonl

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

## 011_cleanup_module - cleanup_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_test
Funcao stock: cleanup_module
Entrada Ghidra: 00100f1c
Tamanho stock: 44 bytes
Categoria: lifecycle
Alvo no fonte: zlog_test_main.c:zlog_test_exit
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/decompiled/0010_00100f1c_cleanup_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zlog_test/offline_static/ghidra_stock/pcode/0010_00100f1c_cleanup_module.jsonl

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
