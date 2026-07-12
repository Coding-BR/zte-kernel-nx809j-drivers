# Prompts Atomicos: zte_charger_policy

## 001_charger_policy_status_ide - charger_policy_status_ide

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_status_ide
Entrada Ghidra: 00100a34
Tamanho stock: 396 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_status_ide
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0000_00100a34_charger_policy_status_ide.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0000_00100a34_charger_policy_status_ide.jsonl

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

## 002_charger_policy_status_runchging - charger_policy_status_runchging

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_status_runchging
Entrada Ghidra: 00100bc4
Tamanho stock: 704 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_status_runchging
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0001_00100bc4_charger_policy_status_runchging.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0001_00100bc4_charger_policy_status_runchging.jsonl

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

## 003_charger_policy_status_rundischging - charger_policy_status_rundischging

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_status_rundischging
Entrada Ghidra: 00100e88
Tamanho stock: 724 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_status_rundischging
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0002_00100e88_charger_policy_status_rundischging.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0002_00100e88_charger_policy_status_rundischging.jsonl

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

## 004_charger_policy_status_forcedischging - charger_policy_status_forcedischging

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_status_forcedischging
Entrada Ghidra: 00101160
Tamanho stock: 164 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_status_forcedischging
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0003_00101160_charger_policy_status_forcedischging.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0003_00101160_charger_policy_status_forcedischging.jsonl

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

## 005_charger_policy_timeout_alarm_cb - charger_policy_timeout_alarm_cb

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_timeout_alarm_cb
Entrada Ghidra: 00101208
Tamanho stock: 88 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_timeout_alarm_cb
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0004_00101208_charger_policy_timeout_alarm_cb.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0004_00101208_charger_policy_timeout_alarm_cb.jsonl

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

## 006_charger_policy_demo_sts_set - charger_policy_demo_sts_set

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_demo_sts_set
Entrada Ghidra: 00101264
Tamanho stock: 276 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_demo_sts_set
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0005_00101264_charger_policy_demo_sts_set.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0005_00101264_charger_policy_demo_sts_set.jsonl

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

## 007_charger_policy_status_disable - charger_policy_status_disable

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_status_disable
Entrada Ghidra: 00101378
Tamanho stock: 76 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_status_disable
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0006_00101378_charger_policy_status_disable.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0006_00101378_charger_policy_status_disable.jsonl

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

## 008_charger_policy_demo_sts_get - charger_policy_demo_sts_get

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_demo_sts_get
Entrada Ghidra: 001013c8
Tamanho stock: 160 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_demo_sts_get
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0007_001013c8_charger_policy_demo_sts_get.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0007_001013c8_charger_policy_demo_sts_get.jsonl

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

## 009_charger_policy_expired_sts_get - charger_policy_expired_sts_get

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_expired_sts_get
Entrada Ghidra: 0010146c
Tamanho stock: 132 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_expired_sts_get
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0008_0010146c_charger_policy_expired_sts_get.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0008_0010146c_charger_policy_expired_sts_get.jsonl

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

## 010_charger_policy_expired_sec_set - charger_policy_expired_sec_set

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_expired_sec_set
Entrada Ghidra: 001014f4
Tamanho stock: 164 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_expired_sec_set
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0009_001014f4_charger_policy_expired_sec_set.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0009_001014f4_charger_policy_expired_sec_set.jsonl

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

## 011_charger_policy_expired_sec_get - charger_policy_expired_sec_get

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_expired_sec_get
Entrada Ghidra: 0010159c
Tamanho stock: 152 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_expired_sec_get
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0010_0010159c_charger_policy_expired_sec_get.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0010_0010159c_charger_policy_expired_sec_get.jsonl

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

## 012_charger_policy_force_disching_sec_set - charger_policy_force_disching_sec_set

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_force_disching_sec_set
Entrada Ghidra: 00101638
Tamanho stock: 164 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_force_disching_sec_set
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0011_00101638_charger_policy_force_disching_sec_set.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0011_00101638_charger_policy_force_disching_sec_set.jsonl

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

## 013_charger_policy_force_disching_sec_get - charger_policy_force_disching_sec_get

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_force_disching_sec_get
Entrada Ghidra: 001016e0
Tamanho stock: 152 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_force_disching_sec_get
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0012_001016e0_charger_policy_force_disching_sec_get.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0012_001016e0_charger_policy_force_disching_sec_get.jsonl

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

## 014_charger_policy_cap_min_set - charger_policy_cap_min_set

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_cap_min_set
Entrada Ghidra: 0010177c
Tamanho stock: 168 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_cap_min_set
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0013_0010177c_charger_policy_cap_min_set.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0013_0010177c_charger_policy_cap_min_set.jsonl

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

## 015_charger_policy_cap_min_get - charger_policy_cap_min_get

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_cap_min_get
Entrada Ghidra: 00101828
Tamanho stock: 120 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_cap_min_get
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0014_00101828_charger_policy_cap_min_get.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0014_00101828_charger_policy_cap_min_get.jsonl

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

## 016_charger_policy_cap_max_set - charger_policy_cap_max_set

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_cap_max_set
Entrada Ghidra: 001018a4
Tamanho stock: 172 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_cap_max_set
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0015_001018a4_charger_policy_cap_max_set.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0015_001018a4_charger_policy_cap_max_set.jsonl

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

## 017_charger_policy_cap_max_get - charger_policy_cap_max_get

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_cap_max_get
Entrada Ghidra: 00101954
Tamanho stock: 120 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_cap_max_get
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0016_00101954_charger_policy_cap_max_get.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0016_00101954_charger_policy_cap_max_get.jsonl

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

## 018_charger_policy_enable_status_set - charger_policy_enable_status_set

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_enable_status_set
Entrada Ghidra: 001019d0
Tamanho stock: 172 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_enable_status_set
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0017_001019d0_charger_policy_enable_status_set.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0017_001019d0_charger_policy_enable_status_set.jsonl

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

## 019_charger_policy_enable_status_get - charger_policy_enable_status_get

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_enable_status_get
Entrada Ghidra: 00101a80
Tamanho stock: 128 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_enable_status_get
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0018_00101a80_charger_policy_enable_status_get.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0018_00101a80_charger_policy_enable_status_get.jsonl

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

## 020_charger_policy_get_status - charger_policy_get_status

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_get_status
Entrada Ghidra: 00101b04
Tamanho stock: 212 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_get_status
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0019_00101b04_charger_policy_get_status.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0019_00101b04_charger_policy_get_status.jsonl

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

## 021_charger_policy_get_prop_by_name - charger_policy_get_prop_by_name

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_get_prop_by_name
Entrada Ghidra: 00101bd8
Tamanho stock: 260 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_get_prop_by_name
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0020_00101bd8_charger_policy_get_prop_by_name.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0020_00101bd8_charger_policy_get_prop_by_name.jsonl

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

## 022_charger_policy_disable_cas - charger_policy_disable_cas

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_disable_cas
Entrada Ghidra: 00101cdc
Tamanho stock: 300 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_disable_cas
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0021_00101cdc_charger_policy_disable_cas.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0021_00101cdc_charger_policy_disable_cas.jsonl

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

## 023_charger_policy_ctrl_charging_enable - charger_policy_ctrl_charging_enable

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_ctrl_charging_enable
Entrada Ghidra: 00101e08
Tamanho stock: 536 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_ctrl_charging_enable
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0022_00101e08_charger_policy_ctrl_charging_enable.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0022_00101e08_charger_policy_ctrl_charging_enable.jsonl

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

## 024_zte_charger_policy_get_prop_by_name - zte_charger_policy_get_prop_by_name

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: zte_charger_policy_get_prop_by_name
Entrada Ghidra: 00102020
Tamanho stock: 260 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:zte_charger_policy_get_prop_by_name
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0023_00102020_zte_charger_policy_get_prop_by_name.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0023_00102020_zte_charger_policy_get_prop_by_name.jsonl

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

## 025_zte_charger_policy_set_prop_by_name - zte_charger_policy_set_prop_by_name

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: zte_charger_policy_set_prop_by_name
Entrada Ghidra: 00102124
Tamanho stock: 256 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:zte_charger_policy_set_prop_by_name
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0024_00102124_zte_charger_policy_set_prop_by_name.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0024_00102124_zte_charger_policy_set_prop_by_name.jsonl

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

## 026_charger_policy_check_soc_reach_min - charger_policy_check_soc_reach_min

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_check_soc_reach_min
Entrada Ghidra: 00102224
Tamanho stock: 452 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_check_soc_reach_min
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0025_00102224_charger_policy_check_soc_reach_min.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0025_00102224_charger_policy_check_soc_reach_min.jsonl

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

## 027_charger_policy_probe - charger_policy_probe

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_probe
Entrada Ghidra: 001023ec
Tamanho stock: 1952 bytes
Categoria: binding
Alvo no fonte: zte_charger_policy.c:charger_policy_probe
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0026_001023ec_charger_policy_probe.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0026_001023ec_charger_policy_probe.jsonl

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

## 028_charger_policy_remove - charger_policy_remove

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_remove
Entrada Ghidra: 00102b90
Tamanho stock: 108 bytes
Categoria: binding
Alvo no fonte: zte_charger_policy.c:charger_policy_remove
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0027_00102b90_charger_policy_remove.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0027_00102b90_charger_policy_remove.jsonl

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

## 029_charger_policy_probe_work - charger_policy_probe_work

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_probe_work
Entrada Ghidra: 00102c00
Tamanho stock: 816 bytes
Categoria: binding
Alvo no fonte: zte_charger_policy.c:charger_policy_probe_work
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0028_00102c00_charger_policy_probe_work.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0028_00102c00_charger_policy_probe_work.jsonl

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

## 030_charger_policy_timeout_handler_work - charger_policy_timeout_handler_work

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_timeout_handler_work
Entrada Ghidra: 00102f34
Tamanho stock: 864 bytes
Categoria: async_or_irq
Alvo no fonte: zte_charger_policy.c:charger_policy_timeout_handler_work
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0029_00102f34_charger_policy_timeout_handler_work.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0029_00102f34_charger_policy_timeout_handler_work.jsonl

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

## 031_charger_policy_check_usb_present - charger_policy_check_usb_present

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_check_usb_present
Entrada Ghidra: 00103294
Tamanho stock: 576 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:charger_policy_check_usb_present
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0030_00103294_charger_policy_check_usb_present.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0030_00103294_charger_policy_check_usb_present.jsonl

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

## 032_charger_policy_notifier_switch - charger_policy_notifier_switch

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: charger_policy_notifier_switch
Entrada Ghidra: 001034d8
Tamanho stock: 136 bytes
Categoria: async_or_irq
Alvo no fonte: zte_charger_policy.c:charger_policy_notifier_switch
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0031_001034d8_charger_policy_notifier_switch.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0031_001034d8_charger_policy_notifier_switch.jsonl

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

## 033_policy_psy_get_property - policy_psy_get_property

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: policy_psy_get_property
Entrada Ghidra: 00103564
Tamanho stock: 272 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:policy_psy_get_property
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0032_00103564_policy_psy_get_property.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0032_00103564_policy_psy_get_property.jsonl

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

## 034_policy_psy_set_property - policy_psy_set_property

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: policy_psy_set_property
Entrada Ghidra: 00103678
Tamanho stock: 220 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:policy_psy_set_property
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0033_00103678_policy_psy_set_property.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0033_00103678_policy_psy_set_property.jsonl

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

## 035_policy_property_is_writeable - policy_property_is_writeable

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: policy_property_is_writeable
Entrada Ghidra: 00103758
Tamanho stock: 16 bytes
Categoria: user_abi
Alvo no fonte: zte_charger_policy.c:policy_property_is_writeable
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0034_00103758_policy_property_is_writeable.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0034_00103758_policy_property_is_writeable.jsonl

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

## 036_policy_external_power_changed - policy_external_power_changed

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: policy_external_power_changed
Entrada Ghidra: 0010376c
Tamanho stock: 4 bytes
Categoria: core_logic
Alvo no fonte: zte_charger_policy.c:policy_external_power_changed
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0035_0010376c_policy_external_power_changed.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0035_0010376c_policy_external_power_changed.jsonl

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

## 037_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: init_module
Entrada Ghidra: 00103774
Tamanho stock: 44 bytes
Categoria: lifecycle
Alvo no fonte: zte_charger_policy.c:init_module
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0036_00103774_init_module.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0036_00103774_init_module.jsonl

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

## 038_cleanup_module - cleanup_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_charger_policy
Funcao stock: cleanup_module
Entrada Ghidra: 001037a4
Tamanho stock: 36 bytes
Categoria: lifecycle
Alvo no fonte: zte_charger_policy.c:cleanup_module
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\decompiled\0037_001037a4_cleanup_module.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_charger_policy.ko\pcode\0037_001037a4_cleanup_module.jsonl

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
