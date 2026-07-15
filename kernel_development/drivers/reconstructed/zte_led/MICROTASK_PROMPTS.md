# Prompts Atomicos: zte_led

## 001_aw22xxx_set_breath_data - aw22xxx_set_breath_data

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_set_breath_data
Entrada Ghidra: 001014e4
Tamanho stock: 268 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_set_breath_data
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0000_001014e4_aw22xxx_set_breath_data.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0000_001014e4_aw22xxx_set_breath_data.jsonl

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

## 002_aw22xxx_play - aw22xxx_play

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_play
Entrada Ghidra: 001015f4
Tamanho stock: 324 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_play
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0001_001015f4_aw22xxx_play.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0001_001015f4_aw22xxx_play.jsonl

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

## 003_aw22xxx_init_cfg_update_array - aw22xxx_init_cfg_update_array

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_init_cfg_update_array
Entrada Ghidra: 00101738
Tamanho stock: 336 bytes
Categoria: lifecycle
Alvo no fonte: zte_led.c:aw22xxx_init_cfg_update_array
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0002_00101738_aw22xxx_init_cfg_update_array.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0002_00101738_aw22xxx_init_cfg_update_array.jsonl

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

## 004_aw22xxx_led_imax_cfg - aw22xxx_led_imax_cfg

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_led_imax_cfg
Entrada Ghidra: 0010188c
Tamanho stock: 112 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_led_imax_cfg
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0003_0010188c_aw22xxx_led_imax_cfg.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0003_0010188c_aw22xxx_led_imax_cfg.jsonl

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

## 005_aw22xxx_i2c_write - aw22xxx_i2c_write

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_i2c_write
Entrada Ghidra: 001018fc
Tamanho stock: 304 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_i2c_write
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0004_001018fc_aw22xxx_i2c_write.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0004_001018fc_aw22xxx_i2c_write.jsonl

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

## 006_aw22xxx_i2c_read - aw22xxx_i2c_read

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_i2c_read
Entrada Ghidra: 00101a2c
Tamanho stock: 312 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_i2c_read
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0005_00101a2c_aw22xxx_i2c_read.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0005_00101a2c_aw22xxx_i2c_read.jsonl

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

## 007_aw22xxx_i2c_probe - aw22xxx_i2c_probe

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_i2c_probe
Entrada Ghidra: 00101b68
Tamanho stock: 1688 bytes
Categoria: binding
Alvo no fonte: zte_led.c:aw22xxx_i2c_probe
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0006_00101b68_aw22xxx_i2c_probe.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0006_00101b68_aw22xxx_i2c_probe.jsonl

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

## 008_aw22xxx_i2c_remove - aw22xxx_i2c_remove

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_i2c_remove
Entrada Ghidra: 00102204
Tamanho stock: 196 bytes
Categoria: binding
Alvo no fonte: zte_led.c:aw22xxx_i2c_remove
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0007_00102204_aw22xxx_i2c_remove.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0007_00102204_aw22xxx_i2c_remove.jsonl

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

## 009_aw22xxx_hw_reset - aw22xxx_hw_reset

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_hw_reset
Entrada Ghidra: 001022c8
Tamanho stock: 156 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_hw_reset
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0008_001022c8_aw22xxx_hw_reset.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0008_001022c8_aw22xxx_hw_reset.jsonl

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

## 010_aw22xxx_read_chipid - aw22xxx_read_chipid

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_read_chipid
Entrada Ghidra: 00102364
Tamanho stock: 460 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_read_chipid
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0009_00102364_aw22xxx_read_chipid.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0009_00102364_aw22xxx_read_chipid.jsonl

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

## 011_aw22xxx_interrupt_setup - aw22xxx_interrupt_setup

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_interrupt_setup
Entrada Ghidra: 00102530
Tamanho stock: 260 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_interrupt_setup
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0010_00102530_aw22xxx_interrupt_setup.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0010_00102530_aw22xxx_interrupt_setup.jsonl

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

## 012_aw22xxx_irq_v15 - aw22xxx_irq_v15

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_irq_v15
Entrada Ghidra: 00102638
Tamanho stock: 580 bytes
Categoria: async_or_irq
Alvo no fonte: zte_led.c:aw22xxx_irq_v15
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0011_00102638_aw22xxx_irq_v15.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0011_00102638_aw22xxx_irq_v15.jsonl

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

## 013_aw22xxx_irq - aw22xxx_irq

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_irq
Entrada Ghidra: 00102880
Tamanho stock: 260 bytes
Categoria: async_or_irq
Alvo no fonte: zte_led.c:aw22xxx_irq
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0012_00102880_aw22xxx_irq.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0012_00102880_aw22xxx_irq.jsonl

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

## 014_aw22xxx_parse_led_cdev - aw22xxx_parse_led_cdev

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_parse_led_cdev
Entrada Ghidra: 00102984
Tamanho stock: 520 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_parse_led_cdev
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0013_00102984_aw22xxx_parse_led_cdev.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0013_00102984_aw22xxx_parse_led_cdev.jsonl

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

## 015_aw22xxx_alloc_name_array - aw22xxx_alloc_name_array

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_alloc_name_array
Entrada Ghidra: 00102b8c
Tamanho stock: 528 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_alloc_name_array
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0014_00102b8c_aw22xxx_alloc_name_array.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0014_00102b8c_aw22xxx_alloc_name_array.jsonl

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

## 016_aw22xxx_fw_init - aw22xxx_fw_init

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_fw_init
Entrada Ghidra: 00102df0
Tamanho stock: 212 bytes
Categoria: lifecycle
Alvo no fonte: zte_led.c:aw22xxx_fw_init
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0015_00102df0_aw22xxx_fw_init.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0015_00102df0_aw22xxx_fw_init.jsonl

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

## 017_aw22xxx_create_proc_entry - aw22xxx_create_proc_entry

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_create_proc_entry
Entrada Ghidra: 00102ec4
Tamanho stock: 96 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_create_proc_entry
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0016_00102ec4_aw22xxx_create_proc_entry.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0016_00102ec4_aw22xxx_create_proc_entry.jsonl

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

## 018_aw22xxx_brightness_work - aw22xxx_brightness_work

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_brightness_work
Entrada Ghidra: 00102f28
Tamanho stock: 588 bytes
Categoria: async_or_irq
Alvo no fonte: zte_led.c:aw22xxx_brightness_work
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0017_00102f28_aw22xxx_brightness_work.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0017_00102f28_aw22xxx_brightness_work.jsonl

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

## 019_aw22xxx_task_work - aw22xxx_task_work

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_task_work
Entrada Ghidra: 00103178
Tamanho stock: 608 bytes
Categoria: async_or_irq
Alvo no fonte: zte_led.c:aw22xxx_task_work
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0018_00103178_aw22xxx_task_work.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0018_00103178_aw22xxx_task_work.jsonl

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

## 020_aw22xxx_set_brightness - aw22xxx_set_brightness

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_set_brightness
Entrada Ghidra: 001033dc
Tamanho stock: 52 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_set_brightness
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0019_001033dc_aw22xxx_set_brightness.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0019_001033dc_aw22xxx_set_brightness.jsonl

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

## 021_aw22xxx_reg_show - aw22xxx_reg_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_reg_show
Entrada Ghidra: 00103414
Tamanho stock: 272 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_reg_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0020_00103414_aw22xxx_reg_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0020_00103414_aw22xxx_reg_show.jsonl

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

## 022_aw22xxx_reg_store - aw22xxx_reg_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_reg_store
Entrada Ghidra: 00103528
Tamanho stock: 188 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_reg_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0021_00103528_aw22xxx_reg_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0021_00103528_aw22xxx_reg_store.jsonl

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

## 023_aw22xxx_hwen_show - aw22xxx_hwen_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_hwen_show
Entrada Ghidra: 001035e8
Tamanho stock: 80 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_hwen_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0022_001035e8_aw22xxx_hwen_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0022_001035e8_aw22xxx_hwen_show.jsonl

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

## 024_aw22xxx_hwen_store - aw22xxx_hwen_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_hwen_store
Entrada Ghidra: 0010363c
Tamanho stock: 292 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_hwen_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0023_0010363c_aw22xxx_hwen_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0023_0010363c_aw22xxx_hwen_store.jsonl

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

## 025_aw22xxx_fw_show - aw22xxx_fw_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_fw_show
Entrada Ghidra: 00103764
Tamanho stock: 56 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_fw_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0024_00103764_aw22xxx_fw_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0024_00103764_aw22xxx_fw_show.jsonl

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

## 026_aw22xxx_fw_store - aw22xxx_fw_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_fw_store
Entrada Ghidra: 001037a0
Tamanho stock: 168 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_fw_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0025_001037a0_aw22xxx_fw_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0025_001037a0_aw22xxx_fw_store.jsonl

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

## 027_aw22xxx_cfg_show - aw22xxx_cfg_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_cfg_show
Entrada Ghidra: 0010384c
Tamanho stock: 132 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_cfg_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0026_0010384c_aw22xxx_cfg_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0026_0010384c_aw22xxx_cfg_show.jsonl

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

## 028_aw22xxx_cfg_store - aw22xxx_cfg_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_cfg_store
Entrada Ghidra: 001038d4
Tamanho stock: 192 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_cfg_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0027_001038d4_aw22xxx_cfg_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0027_001038d4_aw22xxx_cfg_store.jsonl

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

## 029_aw22xxx_effect_show - aw22xxx_effect_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_effect_show
Entrada Ghidra: 00103998
Tamanho stock: 56 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_effect_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0028_00103998_aw22xxx_effect_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0028_00103998_aw22xxx_effect_show.jsonl

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

## 030_aw22xxx_effect_store - aw22xxx_effect_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_effect_store
Entrada Ghidra: 001039d4
Tamanho stock: 724 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_effect_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0029_001039d4_aw22xxx_effect_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0029_001039d4_aw22xxx_effect_store.jsonl

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

## 031_aw22xxx_get_fwname - aw22xxx_get_fwname

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_get_fwname
Entrada Ghidra: 00103ca8
Tamanho stock: 508 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_get_fwname
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0030_00103ca8_aw22xxx_get_fwname.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0030_00103ca8_aw22xxx_get_fwname.jsonl

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

## 032_aw22xxx_cfg_update_wait_from_dyn_name - aw22xxx_cfg_update_wait_from_dyn_name

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_cfg_update_wait_from_dyn_name
Entrada Ghidra: 00103ea4
Tamanho stock: 260 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_cfg_update_wait_from_dyn_name
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0031_00103ea4_aw22xxx_cfg_update_wait_from_dyn_name.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0031_00103ea4_aw22xxx_cfg_update_wait_from_dyn_name.jsonl

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

## 033_aw22xxx_set_cfg_run_state - aw22xxx_set_cfg_run_state

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_set_cfg_run_state
Entrada Ghidra: 00103fa8
Tamanho stock: 288 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_set_cfg_run_state
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0032_00103fa8_aw22xxx_set_cfg_run_state.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0032_00103fa8_aw22xxx_set_cfg_run_state.jsonl

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

## 034_aw22xxx_cfg_loaded - aw22xxx_cfg_loaded

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_cfg_loaded
Entrada Ghidra: 001040cc
Tamanho stock: 476 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_cfg_loaded
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0033_001040cc_aw22xxx_cfg_loaded.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0033_001040cc_aw22xxx_cfg_loaded.jsonl

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

## 035_aw22xxx_imax_show - aw22xxx_imax_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_imax_show
Entrada Ghidra: 001042ac
Tamanho stock: 488 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_imax_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0034_001042ac_aw22xxx_imax_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0034_001042ac_aw22xxx_imax_show.jsonl

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

## 036_aw22xxx_imax_store - aw22xxx_imax_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_imax_store
Entrada Ghidra: 00104498
Tamanho stock: 240 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_imax_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0035_00104498_aw22xxx_imax_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0035_00104498_aw22xxx_imax_store.jsonl

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

## 037_aw22xxx_rgb_show - aw22xxx_rgb_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_rgb_show
Entrada Ghidra: 0010458c
Tamanho stock: 320 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_rgb_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0036_0010458c_aw22xxx_rgb_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0036_0010458c_aw22xxx_rgb_show.jsonl

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

## 038_aw22xxx_rgb_store - aw22xxx_rgb_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_rgb_store
Entrada Ghidra: 001046d0
Tamanho stock: 188 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_rgb_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0037_001046d0_aw22xxx_rgb_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0037_001046d0_aw22xxx_rgb_store.jsonl

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

## 039_aw22xxx_task0_show - aw22xxx_task0_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_task0_show
Entrada Ghidra: 00104790
Tamanho stock: 56 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_task0_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0038_00104790_aw22xxx_task0_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0038_00104790_aw22xxx_task0_show.jsonl

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

## 040_aw22xxx_task0_store - aw22xxx_task0_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_task0_store
Entrada Ghidra: 001047cc
Tamanho stock: 212 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_task0_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0039_001047cc_aw22xxx_task0_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0039_001047cc_aw22xxx_task0_store.jsonl

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

## 041_aw22xxx_task1_show - aw22xxx_task1_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_task1_show
Entrada Ghidra: 001048a4
Tamanho stock: 56 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_task1_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0040_001048a4_aw22xxx_task1_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0040_001048a4_aw22xxx_task1_show.jsonl

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

## 042_aw22xxx_task1_store - aw22xxx_task1_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_task1_store
Entrada Ghidra: 001048e0
Tamanho stock: 192 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_task1_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0041_001048e0_aw22xxx_task1_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0041_001048e0_aw22xxx_task1_store.jsonl

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

## 043_aw22xxx_task_irq_show - aw22xxx_task_irq_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_task_irq_show
Entrada Ghidra: 001049a4
Tamanho stock: 56 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_task_irq_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0042_001049a4_aw22xxx_task_irq_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0042_001049a4_aw22xxx_task_irq_show.jsonl

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

## 044_aw22xxx_task_irq_store - aw22xxx_task_irq_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_task_irq_store
Entrada Ghidra: 001049e0
Tamanho stock: 188 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_task_irq_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0043_001049e0_aw22xxx_task_irq_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0043_001049e0_aw22xxx_task_irq_store.jsonl

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

## 045_aw22xxx_para_show - aw22xxx_para_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_para_show
Entrada Ghidra: 00104aa0
Tamanho stock: 284 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_para_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0044_00104aa0_aw22xxx_para_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0044_00104aa0_aw22xxx_para_show.jsonl

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

## 046_aw22xxx_para_store - aw22xxx_para_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_para_store
Entrada Ghidra: 00104bc0
Tamanho stock: 1056 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_para_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0045_00104bc0_aw22xxx_para_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0045_00104bc0_aw22xxx_para_store.jsonl

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

## 047_aw22xxx_multi_breath_pattern_show - aw22xxx_multi_breath_pattern_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_multi_breath_pattern_show
Entrada Ghidra: 00105018
Tamanho stock: 56 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_multi_breath_pattern_show
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0046_00105018_aw22xxx_multi_breath_pattern_show.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0046_00105018_aw22xxx_multi_breath_pattern_show.jsonl

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

## 048_aw22xxx_multi_breath_pattern_store - aw22xxx_multi_breath_pattern_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_multi_breath_pattern_store
Entrada Ghidra: 00105054
Tamanho stock: 400 bytes
Categoria: user_abi
Alvo no fonte: zte_led.c:aw22xxx_multi_breath_pattern_store
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0047_00105054_aw22xxx_multi_breath_pattern_store.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0047_00105054_aw22xxx_multi_breath_pattern_store.jsonl

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

## 049_aw22xxx_fw_timer_func - aw22xxx_fw_timer_func

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_fw_timer_func
Entrada Ghidra: 001051e8
Tamanho stock: 80 bytes
Categoria: async_or_irq
Alvo no fonte: zte_led.c:aw22xxx_fw_timer_func
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0048_001051e8_aw22xxx_fw_timer_func.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0048_001051e8_aw22xxx_fw_timer_func.jsonl

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

## 050_aw22xxx_fw_work_routine - aw22xxx_fw_work_routine

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_fw_work_routine
Entrada Ghidra: 0010523c
Tamanho stock: 144 bytes
Categoria: async_or_irq
Alvo no fonte: zte_led.c:aw22xxx_fw_work_routine
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0049_0010523c_aw22xxx_fw_work_routine.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0049_0010523c_aw22xxx_fw_work_routine.jsonl

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

## 051_aw22xxx_cfg_work_routine - aw22xxx_cfg_work_routine

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_cfg_work_routine
Entrada Ghidra: 001052d0
Tamanho stock: 228 bytes
Categoria: async_or_irq
Alvo no fonte: zte_led.c:aw22xxx_cfg_work_routine
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0050_001052d0_aw22xxx_cfg_work_routine.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0050_001052d0_aw22xxx_cfg_work_routine.jsonl

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

## 052_aw22xxx_recover_work_routine - aw22xxx_recover_work_routine

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_recover_work_routine
Entrada Ghidra: 001053b8
Tamanho stock: 524 bytes
Categoria: async_or_irq
Alvo no fonte: zte_led.c:aw22xxx_recover_work_routine
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0051_001053b8_aw22xxx_recover_work_routine.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0051_001053b8_aw22xxx_recover_work_routine.jsonl

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

## 053_aw22xxx_fw_loaded - aw22xxx_fw_loaded

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_fw_loaded
Entrada Ghidra: 001055c8
Tamanho stock: 3024 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_fw_loaded
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0052_001055c8_aw22xxx_fw_loaded.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0052_001055c8_aw22xxx_fw_loaded.jsonl

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

## 054_aw22xxx_led_init - aw22xxx_led_init

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_led_init
Entrada Ghidra: 00106204
Tamanho stock: 400 bytes
Categoria: lifecycle
Alvo no fonte: zte_led.c:aw22xxx_led_init
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0053_00106204_aw22xxx_led_init.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0053_00106204_aw22xxx_led_init.jsonl

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

## 055_aw22xxx_cfg_recover_update_wait - aw22xxx_cfg_recover_update_wait

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: aw22xxx_cfg_recover_update_wait
Entrada Ghidra: 00106394
Tamanho stock: 968 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:aw22xxx_cfg_recover_update_wait
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0054_00106394_aw22xxx_cfg_recover_update_wait.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0054_00106394_aw22xxx_cfg_recover_update_wait.jsonl

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

## 056_get_aw22xxx_id - get_aw22xxx_id

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: get_aw22xxx_id
Entrada Ghidra: 00106760
Tamanho stock: 192 bytes
Categoria: core_logic
Alvo no fonte: zte_led.c:get_aw22xxx_id
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0055_00106760_get_aw22xxx_id.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0055_00106760_get_aw22xxx_id.jsonl

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

## 057_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: init_module
Entrada Ghidra: 00106824
Tamanho stock: 120 bytes
Categoria: lifecycle
Alvo no fonte: zte_led.c:aw22xxx_driver_init
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0056_00106824_init_module.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0056_00106824_init_module.jsonl

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

## 058_cleanup_module - cleanup_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_led
Funcao stock: cleanup_module
Entrada Ghidra: 001068a0
Tamanho stock: 36 bytes
Categoria: lifecycle
Alvo no fonte: zte_led.c:aw22xxx_driver_exit
Pseudocodigo Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\decompiled\0057_001068a0_cleanup_module.c
P-Code Ghidra: C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z\03_ghidra\exports\zte_led.ko\pcode\0057_001068a0_cleanup_module.jsonl

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
