# Prompts Atomicos: zte_power_supply

Copie somente um prompt por vez. A microtarefa nao pode receber PASS sem evidencia hashada de compile, KCFI e teste.

## 001_zte_power_supply_changed - zte_power_supply_changed

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_changed
Entrada Ghidra: 00101234
Tamanho stock: 96 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0000_00101234_zte_power_supply_changed.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0000_00101234_zte_power_supply_changed.jsonl

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

## 002_zte_power_supply_set_battery_charged - zte_power_supply_set_battery_charged

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_set_battery_charged
Entrada Ghidra: 00101298
Tamanho stock: 96 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0001_00101298_zte_power_supply_set_battery_charged.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0001_00101298_zte_power_supply_set_battery_charged.jsonl

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

## 003_zte_power_supply_get_by_name - zte_power_supply_get_by_name

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_get_by_name
Entrada Ghidra: 001012fc
Tamanho stock: 96 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0002_001012fc_zte_power_supply_get_by_name.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0002_001012fc_zte_power_supply_get_by_name.jsonl

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

## 004_zte_power_supply_match_device_by_name - zte_power_supply_match_device_by_name

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_match_device_by_name
Entrada Ghidra: 0010136c
Tamanho stock: 48 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0003_0010136c_zte_power_supply_match_device_by_name.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0003_0010136c_zte_power_supply_match_device_by_name.jsonl

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

## 005_zte_power_supply_put - zte_power_supply_put

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_put
Entrada Ghidra: 001013a0
Tamanho stock: 68 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0004_001013a0_zte_power_supply_put.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0004_001013a0_zte_power_supply_put.jsonl

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

## 006_zte_power_supply_get_by_phandle - zte_power_supply_get_by_phandle

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_get_by_phandle
Entrada Ghidra: 001013f4
Tamanho stock: 192 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0005_001013f4_zte_power_supply_get_by_phandle.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0005_001013f4_zte_power_supply_get_by_phandle.jsonl

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

## 007_zte_power_supply_match_device_node - zte_power_supply_match_device_node

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_match_device_node
Entrada Ghidra: 001014c4
Tamanho stock: 32 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0006_001014c4_zte_power_supply_match_device_node.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0006_001014c4_zte_power_supply_match_device_node.jsonl

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

## 008_zte_power_supply_get_by_phandle_array - zte_power_supply_get_by_phandle_array

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_get_by_phandle_array
Entrada Ghidra: 001014e8
Tamanho stock: 204 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0007_001014e8_zte_power_supply_get_by_phandle_array.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0007_001014e8_zte_power_supply_get_by_phandle_array.jsonl

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

## 009_zte_power_supply_match_device_node_array - zte_power_supply_match_device_node_array

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_match_device_node_array
Entrada Ghidra: 001015b8
Tamanho stock: 124 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0008_001015b8_zte_power_supply_match_device_node_array.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0008_001015b8_zte_power_supply_match_device_node_array.jsonl

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

## 010_zte_devm_power_supply_get_by_phandle - zte_devm_power_supply_get_by_phandle

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_devm_power_supply_get_by_phandle
Entrada Ghidra: 00101644
Tamanho stock: 332 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0009_00101644_zte_devm_power_supply_get_by_phandle.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0009_00101644_zte_devm_power_supply_get_by_phandle.jsonl

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

## 011_zte_devm_power_supply_put - zte_devm_power_supply_put

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_devm_power_supply_put
Entrada Ghidra: 001017a4
Tamanho stock: 72 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0010_001017a4_zte_devm_power_supply_put.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0010_001017a4_zte_devm_power_supply_put.jsonl

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

## 012_zte_power_supply_get_battery_info - zte_power_supply_get_battery_info

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_get_battery_info
Entrada Ghidra: 001017fc
Tamanho stock: 1588 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0011_001017fc_zte_power_supply_get_battery_info.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0011_001017fc_zte_power_supply_get_battery_info.jsonl

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

## 013_zte_power_supply_put_battery_info - zte_power_supply_put_battery_info

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_put_battery_info
Entrada Ghidra: 00101e34
Tamanho stock: 108 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0012_00101e34_zte_power_supply_put_battery_info.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0012_00101e34_zte_power_supply_put_battery_info.jsonl

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

## 014_zte_power_supply_temp2resist_simple - zte_power_supply_temp2resist_simple

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_temp2resist_simple
Entrada Ghidra: 00101ea4
Tamanho stock: 104 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0013_00101ea4_zte_power_supply_temp2resist_simple.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0013_00101ea4_zte_power_supply_temp2resist_simple.jsonl

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

## 015_zte_power_supply_ocv2cap_simple - zte_power_supply_ocv2cap_simple

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_ocv2cap_simple
Entrada Ghidra: 00101f10
Tamanho stock: 104 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0014_00101f10_zte_power_supply_ocv2cap_simple.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0014_00101f10_zte_power_supply_ocv2cap_simple.jsonl

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

## 016_zte_power_supply_find_ocv2cap_table - zte_power_supply_find_ocv2cap_table

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_find_ocv2cap_table
Entrada Ghidra: 00101f7c
Tamanho stock: 112 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0015_00101f7c_zte_power_supply_find_ocv2cap_table.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0015_00101f7c_zte_power_supply_find_ocv2cap_table.jsonl

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

## 017_zte_power_supply_batinfo_ocv2cap - zte_power_supply_batinfo_ocv2cap

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_batinfo_ocv2cap
Entrada Ghidra: 00101ff0
Tamanho stock: 208 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0016_00101ff0_zte_power_supply_batinfo_ocv2cap.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0016_00101ff0_zte_power_supply_batinfo_ocv2cap.jsonl

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

## 018_zte_power_supply_get_property - zte_power_supply_get_property

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_get_property
Entrada Ghidra: 001020c4
Tamanho stock: 96 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0017_001020c4_zte_power_supply_get_property.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0017_001020c4_zte_power_supply_get_property.jsonl

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

## 019_zte_power_supply_set_property - zte_power_supply_set_property

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_set_property
Entrada Ghidra: 00102128
Tamanho stock: 84 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0018_00102128_zte_power_supply_set_property.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0018_00102128_zte_power_supply_set_property.jsonl

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

## 020_zte_power_supply_property_is_writeable - zte_power_supply_property_is_writeable

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_property_is_writeable
Entrada Ghidra: 00102180
Tamanho stock: 84 bytes
Categoria: user_abi
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0019_00102180_zte_power_supply_property_is_writeable.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0019_00102180_zte_power_supply_property_is_writeable.jsonl

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

## 021_zte_power_supply_external_power_changed - zte_power_supply_external_power_changed

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_external_power_changed
Entrada Ghidra: 001021d8
Tamanho stock: 76 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0020_001021d8_zte_power_supply_external_power_changed.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0020_001021d8_zte_power_supply_external_power_changed.jsonl

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

## 022_zte_power_supply_powers - zte_power_supply_powers

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_powers
Entrada Ghidra: 00102228
Tamanho stock: 40 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0021_00102228_zte_power_supply_powers.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0021_00102228_zte_power_supply_powers.jsonl

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

## 023_zte_power_supply_reg_notifier - zte_power_supply_reg_notifier

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_reg_notifier
Entrada Ghidra: 00102254
Tamanho stock: 40 bytes
Categoria: async_or_irq
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0022_00102254_zte_power_supply_reg_notifier.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0022_00102254_zte_power_supply_reg_notifier.jsonl

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

## 024_zte_power_supply_unreg_notifier - zte_power_supply_unreg_notifier

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_unreg_notifier
Entrada Ghidra: 00102280
Tamanho stock: 40 bytes
Categoria: async_or_irq
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0023_00102280_zte_power_supply_unreg_notifier.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0023_00102280_zte_power_supply_unreg_notifier.jsonl

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

## 025_zte_power_supply_register - zte_power_supply_register

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_register
Entrada Ghidra: 001022ac
Tamanho stock: 32 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0024_001022ac_zte_power_supply_register.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0024_001022ac_zte_power_supply_register.jsonl

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

## 026_zte_power_supply_register - __zte_power_supply_register

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: __zte_power_supply_register
Entrada Ghidra: 001022cc
Tamanho stock: 696 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0025_001022cc___zte_power_supply_register.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0025_001022cc___zte_power_supply_register.jsonl

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

## 027_zte_power_supply_register_no_ws - zte_power_supply_register_no_ws

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_register_no_ws
Entrada Ghidra: 001025c4
Tamanho stock: 32 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0026_001025c4_zte_power_supply_register_no_ws.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0026_001025c4_zte_power_supply_register_no_ws.jsonl

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

## 028_zte_devm_power_supply_register - zte_devm_power_supply_register

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_devm_power_supply_register
Entrada Ghidra: 001025e8
Tamanho stock: 164 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0027_001025e8_zte_devm_power_supply_register.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0027_001025e8_zte_devm_power_supply_register.jsonl

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

## 029_zte_devm_power_supply_release - zte_devm_power_supply_release

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_devm_power_supply_release
Entrada Ghidra: 00102690
Tamanho stock: 32 bytes
Categoria: user_abi
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0028_00102690_zte_devm_power_supply_release.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0028_00102690_zte_devm_power_supply_release.jsonl

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

## 030_zte_devm_power_supply_register_no_ws - zte_devm_power_supply_register_no_ws

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_devm_power_supply_register_no_ws
Entrada Ghidra: 001026b4
Tamanho stock: 164 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0029_001026b4_zte_devm_power_supply_register_no_ws.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0029_001026b4_zte_devm_power_supply_register_no_ws.jsonl

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

## 031_zte_power_supply_unregister - zte_power_supply_unregister

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_unregister
Entrada Ghidra: 0010275c
Tamanho stock: 148 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0030_0010275c_zte_power_supply_unregister.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0030_0010275c_zte_power_supply_unregister.jsonl

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

## 032_device_init_wakeup - device_init_wakeup

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: device_init_wakeup
Entrada Ghidra: 00102808
Tamanho stock: 80 bytes
Categoria: lifecycle
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0031_00102808_device_init_wakeup.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0031_00102808_device_init_wakeup.jsonl

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

## 033_zte_power_supply_get_drvdata - zte_power_supply_get_drvdata

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_get_drvdata
Entrada Ghidra: 0010285c
Tamanho stock: 8 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0032_0010285c_zte_power_supply_get_drvdata.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0032_0010285c_zte_power_supply_get_drvdata.jsonl

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

## 034_zte_power_supply_dev_release - zte_power_supply_dev_release

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_dev_release
Entrada Ghidra: 00102868
Tamanho stock: 32 bytes
Categoria: user_abi
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0033_00102868_zte_power_supply_dev_release.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0033_00102868_zte_power_supply_dev_release.jsonl

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

## 035_zte_power_supply_changed_work - zte_power_supply_changed_work

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_changed_work
Entrada Ghidra: 0010288c
Tamanho stock: 188 bytes
Categoria: async_or_irq
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0034_0010288c_zte_power_supply_changed_work.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0034_0010288c_zte_power_supply_changed_work.jsonl

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

## 036_zte_power_supply_deferred_register_work - zte_power_supply_deferred_register_work

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_deferred_register_work
Entrada Ghidra: 0010294c
Tamanho stock: 168 bytes
Categoria: async_or_irq
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0035_0010294c_zte_power_supply_deferred_register_work.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0035_0010294c_zte_power_supply_deferred_register_work.jsonl

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

## 037_zte_power_supply_check_supplies - zte_power_supply_check_supplies

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_check_supplies
Entrada Ghidra: 001029f4
Tamanho stock: 428 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0036_001029f4_zte_power_supply_check_supplies.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0036_001029f4_zte_power_supply_check_supplies.jsonl

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

## 038_zte_power_supply_changed_work - __zte_power_supply_changed_work

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: __zte_power_supply_changed_work
Entrada Ghidra: 00102ba4
Tamanho stock: 244 bytes
Categoria: async_or_irq
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0037_00102ba4___zte_power_supply_changed_work.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0037_00102ba4___zte_power_supply_changed_work.jsonl

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

## 039_zte_power_supply_find_supply_from_node - __zte_power_supply_find_supply_from_node

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: __zte_power_supply_find_supply_from_node
Entrada Ghidra: 00102c9c
Tamanho stock: 20 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0038_00102c9c___zte_power_supply_find_supply_from_node.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0038_00102c9c___zte_power_supply_find_supply_from_node.jsonl

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

## 040_zte_power_supply_populate_supplied_from - __zte_power_supply_populate_supplied_from

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: __zte_power_supply_populate_supplied_from
Entrada Ghidra: 00102cb4
Tamanho stock: 244 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0039_00102cb4___zte_power_supply_populate_supplied_from.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0039_00102cb4___zte_power_supply_populate_supplied_from.jsonl

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

## 041_zte_power_supply_init_attrs - zte_power_supply_init_attrs

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_init_attrs
Entrada Ghidra: 00102dac
Tamanho stock: 320 bytes
Categoria: lifecycle
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0040_00102dac_zte_power_supply_init_attrs.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0040_00102dac_zte_power_supply_init_attrs.jsonl

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

## 042_zte_power_supply_show_property - zte_power_supply_show_property

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_show_property
Entrada Ghidra: 00102ef0
Tamanho stock: 360 bytes
Categoria: user_abi
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0041_00102ef0_zte_power_supply_show_property.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0041_00102ef0_zte_power_supply_show_property.jsonl

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

## 043_zte_power_supply_store_property - zte_power_supply_store_property

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_store_property
Entrada Ghidra: 0010305c
Tamanho stock: 236 bytes
Categoria: user_abi
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0042_0010305c_zte_power_supply_store_property.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0042_0010305c_zte_power_supply_store_property.jsonl

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

## 044_zte_power_supply_uevent - zte_power_supply_uevent

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: zte_power_supply_uevent
Entrada Ghidra: 0010314c
Tamanho stock: 356 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0043_0010314c_zte_power_supply_uevent.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0043_0010314c_zte_power_supply_uevent.jsonl

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

## 045_power_supply_attr_is_visible - power_supply_attr_is_visible

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: power_supply_attr_is_visible
Entrada Ghidra: 001032dc
Tamanho stock: 188 bytes
Categoria: core_logic
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0044_001032dc_power_supply_attr_is_visible.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0044_001032dc_power_supply_attr_is_visible.jsonl

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

## 046_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: init_module
Entrada Ghidra: 001033e8
Tamanho stock: 80 bytes
Categoria: lifecycle
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0045_001033e8_init_module.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0045_001033e8_init_module.jsonl

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

## 047_cleanup_module - cleanup_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_power_supply
Funcao stock: cleanup_module
Entrada Ghidra: 0010343c
Tamanho stock: 36 bytes
Categoria: lifecycle
Alvo no fonte: PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\decompiled\0046_0010343c_cleanup_module.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_power_supply.ko\pcode\0046_0010343c_cleanup_module.jsonl

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
