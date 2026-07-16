# Prompts Atomicos: nubia_hw_version

Copie somente um prompt por vez. A microtarefa nao pode receber PASS sem evidencia hashada de compile, KCFI e teste.

## 001_nubia_gpio_ctrl1 - nubia_gpio_ctrl1

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_gpio_ctrl1
Entrada Ghidra: 001005a4
Tamanho stock: 92 bytes
Categoria: core_logic
Alvo no fonte: nubia_hw_version.c:nubia_gpio_ctrl1
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0000_001005a4_nubia_gpio_ctrl1.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0000_001005a4_nubia_gpio_ctrl1.jsonl

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

## 002_nubia_gpio_ctrl - nubia_gpio_ctrl

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_gpio_ctrl
Entrada Ghidra: 00100604
Tamanho stock: 288 bytes
Categoria: core_logic
Alvo no fonte: nubia_hw_version.c:nubia_gpio_ctrl
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0001_00100604_nubia_gpio_ctrl.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0001_00100604_nubia_gpio_ctrl.jsonl

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

## 003_nubia_get_pcb_table_item_by_gpio - nubia_get_pcb_table_item_by_gpio

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_get_pcb_table_item_by_gpio
Entrada Ghidra: 00100728
Tamanho stock: 88 bytes
Categoria: core_logic
Alvo no fonte: nubia_hw_version.c:nubia_get_pcb_table_item_by_gpio
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0002_00100728_nubia_get_pcb_table_item_by_gpio.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0002_00100728_nubia_get_pcb_table_item_by_gpio.jsonl

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

## 004_nubia_get_hw_id - nubia_get_hw_id

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_get_hw_id
Entrada Ghidra: 00100784
Tamanho stock: 208 bytes
Categoria: core_logic
Alvo no fonte: nubia_hw_version.c:nubia_get_hw_id
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0003_00100784_nubia_get_hw_id.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0003_00100784_nubia_get_hw_id.jsonl

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

## 005_nubia_get_hw_pcb_version - nubia_get_hw_pcb_version

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_get_hw_pcb_version
Entrada Ghidra: 00100858
Tamanho stock: 284 bytes
Categoria: core_logic
Alvo no fonte: nubia_hw_version.c:nubia_get_hw_pcb_version
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0004_00100858_nubia_get_hw_pcb_version.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0004_00100858_nubia_get_hw_pcb_version.jsonl

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

## 006_charger_100w - charger_100W

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: charger_100W
Entrada Ghidra: 00100978
Tamanho stock: 20 bytes
Categoria: core_logic
Alvo no fonte: nubia_hw_version.c:charger_100W
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0005_00100978_charger_100W.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0005_00100978_charger_100W.jsonl

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

## 007_charger_80w - charger_80W

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: charger_80W
Entrada Ghidra: 00100990
Tamanho stock: 20 bytes
Categoria: core_logic
Alvo no fonte: nubia_hw_version.c:charger_80W
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0006_00100990_charger_80W.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0006_00100990_charger_80W.jsonl

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

## 008_nubia_get_rf_band_by_gpio - nubia_get_rf_band_by_gpio

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_get_rf_band_by_gpio
Entrada Ghidra: 001009a8
Tamanho stock: 104 bytes
Categoria: core_logic
Alvo no fonte: nubia_hw_version.c:nubia_get_rf_band_by_gpio
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0007_001009a8_nubia_get_rf_band_by_gpio.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0007_001009a8_nubia_get_rf_band_by_gpio.jsonl

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

## 009_nubia_hw_ver_probe - nubia_hw_ver_probe

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_hw_ver_probe
Entrada Ghidra: 00100a14
Tamanho stock: 1520 bytes
Categoria: binding
Alvo no fonte: nubia_hw_version.c:nubia_hw_ver_probe
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0008_00100a14_nubia_hw_ver_probe.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0008_00100a14_nubia_hw_ver_probe.jsonl

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

## 010_nubia_hw_ver_remove - nubia_hw_ver_remove

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_hw_ver_remove
Entrada Ghidra: 00101008
Tamanho stock: 68 bytes
Categoria: binding
Alvo no fonte: nubia_hw_version.c:nubia_hw_ver_remove
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0009_00101008_nubia_hw_ver_remove.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0009_00101008_nubia_hw_ver_remove.jsonl

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

## 011_nubia_get_gpio_status - nubia_get_gpio_status

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_get_gpio_status
Entrada Ghidra: 0010104c
Tamanho stock: 112 bytes
Categoria: core_logic
Alvo no fonte: nubia_hw_version.c:nubia_get_gpio_status
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0010_0010104c_nubia_get_gpio_status.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0010_0010104c_nubia_get_gpio_status.jsonl

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

## 012_debug_value_show - debug_value_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: debug_value_show
Entrada Ghidra: 001010c0
Tamanho stock: 56 bytes
Categoria: user_abi
Alvo no fonte: nubia_hw_version.c:debug_value_show
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0011_001010c0_debug_value_show.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0011_001010c0_debug_value_show.jsonl

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

## 013_debug_value_store - debug_value_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: debug_value_store
Entrada Ghidra: 001010fc
Tamanho stock: 64 bytes
Categoria: user_abi
Alvo no fonte: nubia_hw_version.c:debug_value_store
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0012_001010fc_debug_value_store.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0012_001010fc_debug_value_store.jsonl

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

## 014_nubia_hw_pcb_version_show - nubia_hw_pcb_version_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_hw_pcb_version_show
Entrada Ghidra: 00101140
Tamanho stock: 120 bytes
Categoria: user_abi
Alvo no fonte: nubia_hw_version.c:nubia_hw_pcb_version_show
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0013_00101140_nubia_hw_pcb_version_show.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0013_00101140_nubia_hw_pcb_version_show.jsonl

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

## 015_nubia_hw_rf_band_show - nubia_hw_rf_band_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_hw_rf_band_show
Entrada Ghidra: 001011bc
Tamanho stock: 244 bytes
Categoria: user_abi
Alvo no fonte: nubia_hw_version.c:nubia_hw_rf_band_show
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0014_001011bc_nubia_hw_rf_band_show.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0014_001011bc_nubia_hw_rf_band_show.jsonl

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

## 016_nubia_charge_version_show - nubia_charge_version_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: nubia_charge_version_show
Entrada Ghidra: 001012b4
Tamanho stock: 152 bytes
Categoria: user_abi
Alvo no fonte: nubia_hw_version.c:nubia_charge_version_show
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0015_001012b4_nubia_charge_version_show.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0015_001012b4_nubia_charge_version_show.jsonl

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

## 017_hml_config_version_show - hml_config_version_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: hml_config_version_show
Entrada Ghidra: 00101350
Tamanho stock: 160 bytes
Categoria: user_abi
Alvo no fonte: nubia_hw_version.c:hml_config_version_show
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0016_00101350_hml_config_version_show.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0016_00101350_hml_config_version_show.jsonl

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

## 018_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: init_module
Entrada Ghidra: 001013f4
Tamanho stock: 216 bytes
Categoria: lifecycle
Alvo no fonte: nubia_hw_version.c:nubia_hw_version_init
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0017_001013f4_init_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0017_001013f4_init_module.jsonl

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

## 019_cleanup_module - cleanup_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: nubia_hw_version
Funcao stock: cleanup_module
Entrada Ghidra: 001014d0
Tamanho stock: 60 bytes
Categoria: lifecycle
Alvo no fonte: nubia_hw_version.c:nubia_hw_version_exit
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/decompiled/0018_001014d0_cleanup_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/nubia_hw_version/offline_static/ghidra_stock/pcode/0018_001014d0_cleanup_module.jsonl

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
