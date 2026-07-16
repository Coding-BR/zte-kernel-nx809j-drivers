# Prompts Atomicos: gpio_keys_nubia

Copie somente um prompt por vez. A microtarefa nao pode receber PASS sem evidencia hashada de compile, KCFI e teste.

## 001_gpio_keys_probe - gpio_keys_probe

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_probe
Entrada Ghidra: 0010071c
Tamanho stock: 3600 bytes
Categoria: binding
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0000_0010071c_gpio_keys_probe.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0000_0010071c_gpio_keys_probe.jsonl

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

## 002_gpio_keys_shutdown - gpio_keys_shutdown

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_shutdown
Entrada Ghidra: 00101530
Tamanho stock: 68 bytes
Categoria: core_logic
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_shutdown
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0001_00101530_gpio_keys_shutdown.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0001_00101530_gpio_keys_shutdown.jsonl

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

## 003_gpio_keys_open - gpio_keys_open

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_open
Entrada Ghidra: 00101578
Tamanho stock: 192 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_open
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0002_00101578_gpio_keys_open.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0002_00101578_gpio_keys_open.jsonl

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

## 004_gpio_keys_close - gpio_keys_close

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_close
Entrada Ghidra: 0010163c
Tamanho stock: 72 bytes
Categoria: core_logic
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_close
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0003_0010163c_gpio_keys_close.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0003_0010163c_gpio_keys_close.jsonl

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

## 005_gpio_keys_gpio_report_event - gpio_keys_gpio_report_event

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_gpio_report_event
Entrada Ghidra: 00101684
Tamanho stock: 404 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0004_00101684_gpio_keys_gpio_report_event.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0004_00101684_gpio_keys_gpio_report_event.jsonl

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

## 006_gpio_keys_gpio_work_func - gpio_keys_gpio_work_func

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_gpio_work_func
Entrada Ghidra: 0010181c
Tamanho stock: 88 bytes
Categoria: async_or_irq
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_gpio_work_func
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0005_0010181c_gpio_keys_gpio_work_func.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0005_0010181c_gpio_keys_gpio_work_func.jsonl

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

## 007_gpio_keys_gpio_isr - gpio_keys_gpio_isr

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_gpio_isr
Entrada Ghidra: 00101878
Tamanho stock: 172 bytes
Categoria: core_logic
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_gpio_isr
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0006_00101878_gpio_keys_gpio_isr.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0006_00101878_gpio_keys_gpio_isr.jsonl

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

## 008_gpio_keys_irq_timer - gpio_keys_irq_timer

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_irq_timer
Entrada Ghidra: 00101928
Tamanho stock: 132 bytes
Categoria: async_or_irq
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_irq_timer
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0007_00101928_gpio_keys_irq_timer.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0007_00101928_gpio_keys_irq_timer.jsonl

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

## 009_gpio_keys_irq_isr - gpio_keys_irq_isr

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_irq_isr
Entrada Ghidra: 001019b0
Tamanho stock: 280 bytes
Categoria: async_or_irq
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_irq_isr
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0008_001019b0_gpio_keys_irq_isr.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0008_001019b0_gpio_keys_irq_isr.jsonl

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

## 010_gpio_keys_quiesce_key - gpio_keys_quiesce_key

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_quiesce_key
Entrada Ghidra: 00101acc
Tamanho stock: 52 bytes
Categoria: core_logic
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_quiesce_key
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0009_00101acc_gpio_keys_quiesce_key.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0009_00101acc_gpio_keys_quiesce_key.jsonl

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

## 011_gpio_keys_suspend - gpio_keys_suspend

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_suspend
Entrada Ghidra: 00101b04
Tamanho stock: 528 bytes
Categoria: binding
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_suspend
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0010_00101b04_gpio_keys_suspend.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0010_00101b04_gpio_keys_suspend.jsonl

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

## 012_gpio_keys_show_keys - gpio_keys_show_keys

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_show_keys
Entrada Ghidra: 00101d18
Tamanho stock: 44 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_show_keys
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0011_00101d18_gpio_keys_show_keys.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0011_00101d18_gpio_keys_show_keys.jsonl

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

## 013_gpio_keys_attr_show_helper - gpio_keys_attr_show_helper

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_attr_show_helper
Entrada Ghidra: 00101d44
Tamanho stock: 320 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_attr_show_helper
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0012_00101d44_gpio_keys_attr_show_helper.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0012_00101d44_gpio_keys_attr_show_helper.jsonl

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

## 014_gpio_keys_show_switches - gpio_keys_show_switches

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_show_switches
Entrada Ghidra: 00101e88
Tamanho stock: 44 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_show_switches
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0013_00101e88_gpio_keys_show_switches.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0013_00101e88_gpio_keys_show_switches.jsonl

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

## 015_gpio_keys_show_disabled_keys - gpio_keys_show_disabled_keys

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_show_disabled_keys
Entrada Ghidra: 00101eb8
Tamanho stock: 44 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_show_disabled_keys
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0014_00101eb8_gpio_keys_show_disabled_keys.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0014_00101eb8_gpio_keys_show_disabled_keys.jsonl

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

## 016_gpio_keys_store_disabled_keys - gpio_keys_store_disabled_keys

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_store_disabled_keys
Entrada Ghidra: 00101ee8
Tamanho stock: 60 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_store_disabled_keys
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0015_00101ee8_gpio_keys_store_disabled_keys.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0015_00101ee8_gpio_keys_store_disabled_keys.jsonl

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

## 017_gpio_keys_attr_store_helper - gpio_keys_attr_store_helper

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_attr_store_helper
Entrada Ghidra: 00101f24
Tamanho stock: 800 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_attr_store_helper
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0016_00101f24_gpio_keys_attr_store_helper.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0016_00101f24_gpio_keys_attr_store_helper.jsonl

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

## 018_gpio_keys_show_disabled_switches - gpio_keys_show_disabled_switches

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_show_disabled_switches
Entrada Ghidra: 00102248
Tamanho stock: 44 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_show_disabled_switches
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0017_00102248_gpio_keys_show_disabled_switches.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0017_00102248_gpio_keys_show_disabled_switches.jsonl

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

## 019_gpio_keys_store_disabled_switches - gpio_keys_store_disabled_switches

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_store_disabled_switches
Entrada Ghidra: 00102278
Tamanho stock: 60 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_store_disabled_switches
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0018_00102278_gpio_keys_store_disabled_switches.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0018_00102278_gpio_keys_store_disabled_switches.jsonl

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

## 020_gpio_keys_show_gamekeystatus - gpio_keys_show_GamekeyStatus

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_show_GamekeyStatus
Entrada Ghidra: 001022b8
Tamanho stock: 204 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_show_GamekeyStatus
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0019_001022b8_gpio_keys_show_GamekeyStatus.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0019_001022b8_gpio_keys_show_GamekeyStatus.jsonl

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

## 021_gpio_keys_store_gamekeystatus - gpio_keys_store_GamekeyStatus

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_store_GamekeyStatus
Entrada Ghidra: 00102388
Tamanho stock: 52 bytes
Categoria: user_abi
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_store_GamekeyStatus
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0020_00102388_gpio_keys_store_GamekeyStatus.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0020_00102388_gpio_keys_store_GamekeyStatus.jsonl

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

## 022_gpio_keys_resume - gpio_keys_resume

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: gpio_keys_resume
Entrada Ghidra: 001023c0
Tamanho stock: 560 bytes
Categoria: binding
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_resume
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0021_001023c0_gpio_keys_resume.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0021_001023c0_gpio_keys_resume.jsonl

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

## 023_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: init_module
Entrada Ghidra: 001025f4
Tamanho stock: 44 bytes
Categoria: lifecycle
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_init
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0022_001025f4_init_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0022_001025f4_init_module.jsonl

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

## 024_cleanup_module - cleanup_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: gpio_keys_nubia
Funcao stock: cleanup_module
Entrada Ghidra: 00102624
Tamanho stock: 36 bytes
Categoria: lifecycle
Alvo no fonte: gpio_keys_nubia.c:gpio_keys_exit
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/decompiled/0023_00102624_cleanup_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/gpio_keys_nubia/offline_static/ghidra_stock/pcode/0023_00102624_cleanup_module.jsonl

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
