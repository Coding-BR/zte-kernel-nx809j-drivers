# Prompts Atomicos: zlog_common

## 001_zlog_client_notify - zlog_client_notify

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_client_notify
Entrada Ghidra: 001003e4
Tamanho stock: 184 bytes
Categoria: core_logic
Alvo no fonte: zlog_common.c:zlog_client_notify
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0000_001003e4_zlog_client_notify.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0000_001003e4_zlog_client_notify.jsonl

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

## 002_zlog_client_record - zlog_client_record

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_client_record
Entrada Ghidra: 001004ac
Tamanho stock: 392 bytes
Categoria: core_logic
Alvo no fonte: zlog_common.c:zlog_client_record
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0001_001004ac_zlog_client_record.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0001_001004ac_zlog_client_record.jsonl

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

## 003_zlog_register_client - zlog_register_client

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_register_client
Entrada Ghidra: 00100644
Tamanho stock: 764 bytes
Categoria: core_logic
Alvo no fonte: zlog_common.c:zlog_register_client
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0002_00100644_zlog_register_client.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0002_00100644_zlog_register_client.jsonl

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

## 004_zlog_unregister_client - zlog_unregister_client

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_unregister_client
Entrada Ghidra: 00100984
Tamanho stock: 300 bytes
Categoria: core_logic
Alvo no fonte: zlog_common.c:zlog_unregister_client
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0003_00100984_zlog_unregister_client.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0003_00100984_zlog_unregister_client.jsonl

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

## 005_zlog_reset_client - zlog_reset_client

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_reset_client
Entrada Ghidra: 00100ac0
Tamanho stock: 176 bytes
Categoria: core_logic
Alvo no fonte: zlog_common.c:zlog_reset_client
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0004_00100ac0_zlog_reset_client.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0004_00100ac0_zlog_reset_client.jsonl

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

## 006_zlog_handle_work - zlog_handle_work

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_handle_work
Entrada Ghidra: 00100b80
Tamanho stock: 972 bytes
Categoria: async_or_irq
Alvo no fonte: zlog_common.c:zlog_handle_work
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0005_00100b80_zlog_handle_work.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0005_00100b80_zlog_handle_work.jsonl

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

## 007_zlog_comm_read - zlog_comm_read

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_comm_read
Entrada Ghidra: 00100f90
Tamanho stock: 8 bytes
Categoria: user_abi
Alvo no fonte: zlog_common.c:zlog_comm_read
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0006_00100f90_zlog_comm_read.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0006_00100f90_zlog_comm_read.jsonl

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

## 008_zlog_comm_write - zlog_comm_write

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_comm_write
Entrada Ghidra: 00100f9c
Tamanho stock: 464 bytes
Categoria: user_abi
Alvo no fonte: zlog_common.c:zlog_comm_write
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0007_00100f9c_zlog_comm_write.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0007_00100f9c_zlog_comm_write.jsonl

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

## 009_zlog_comm_ioctl - zlog_comm_ioctl

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_comm_ioctl
Entrada Ghidra: 00101170
Tamanho stock: 8 bytes
Categoria: user_abi
Alvo no fonte: zlog_common.c:zlog_comm_ioctl
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0008_00101170_zlog_comm_ioctl.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0008_00101170_zlog_comm_ioctl.jsonl

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

## 010_zlog_comm_open - zlog_comm_open

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_comm_open
Entrada Ghidra: 0010117c
Tamanho stock: 92 bytes
Categoria: user_abi
Alvo no fonte: zlog_common.c:zlog_comm_open
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0009_0010117c_zlog_comm_open.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0009_0010117c_zlog_comm_open.jsonl

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

## 011_zlog_comm_release - zlog_comm_release

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_comm_release
Entrada Ghidra: 001011ec
Tamanho stock: 96 bytes
Categoria: user_abi
Alvo no fonte: zlog_common.c:zlog_comm_release
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0010_001011ec_zlog_comm_release.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0010_001011ec_zlog_comm_release.jsonl

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

## 012_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: init_module
Entrada Ghidra: 00101268
Tamanho stock: 260 bytes
Categoria: lifecycle
Alvo no fonte: zlog_common.c:zlog_common_init
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0011_00101268_init_module.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0011_00101268_init_module.jsonl

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

## 013_zlog_comm_create_ctrl_dev - zlog_comm_create_ctrl_dev

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zlog_common
Funcao stock: zlog_comm_create_ctrl_dev
Entrada Ghidra: 0010136c
Tamanho stock: 140 bytes
Categoria: core_logic
Alvo no fonte: zlog_common.c:zlog_comm_create_ctrl_dev
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\decompiled\0012_0010136c_zlog_comm_create_ctrl_dev.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline\03_ghidra\exports\zlog_common.ko\pcode\0012_0010136c_zlog_comm_create_ctrl_dev.jsonl

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
