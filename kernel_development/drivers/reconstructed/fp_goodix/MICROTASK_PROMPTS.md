# Prompts Atomicos: fp_goodix

## 001_gf_ioctl - gf_ioctl

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_ioctl
Entrada Ghidra: 00100824
Tamanho stock: 1436 bytes
Categoria: user_abi
Alvo no fonte: fp_goodix_core.c:gf_ioctl
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0000_00100824_gf_ioctl.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0000_00100824_gf_ioctl.jsonl

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

## 002_gf_compat_ioctl - gf_compat_ioctl

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_compat_ioctl
Entrada Ghidra: 00100dc4
Tamanho stock: 32 bytes
Categoria: user_abi
Alvo no fonte: fp_goodix_core.c:gf_compat_ioctl
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0001_00100dc4_gf_compat_ioctl.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0001_00100dc4_gf_compat_ioctl.jsonl

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

## 003_gf_open - gf_open

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_open
Entrada Ghidra: 00100de8
Tamanho stock: 508 bytes
Categoria: user_abi
Alvo no fonte: fp_goodix_core.c:gf_open
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0002_00100de8_gf_open.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0002_00100de8_gf_open.jsonl

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

## 004_gf_release - gf_release

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_release
Entrada Ghidra: 00100fe8
Tamanho stock: 240 bytes
Categoria: user_abi
Alvo no fonte: fp_goodix_core.c:gf_release
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0003_00100fe8_gf_release.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0003_00100fe8_gf_release.jsonl

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

## 005_gf_disable_irq - gf_disable_irq

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_disable_irq
Entrada Ghidra: 001010d8
Tamanho stock: 64 bytes
Categoria: async_or_irq
Alvo no fonte: fp_goodix_core.c:gf_disable_irq
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0004_001010d8_gf_disable_irq.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0004_001010d8_gf_disable_irq.jsonl

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

## 006_gf_enable_irq - gf_enable_irq

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_enable_irq
Entrada Ghidra: 00101118
Tamanho stock: 84 bytes
Categoria: async_or_irq
Alvo no fonte: fp_goodix_core.c:gf_enable_irq
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0005_00101118_gf_enable_irq.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0005_00101118_gf_enable_irq.jsonl

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

## 007_nav_event_input - nav_event_input

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: nav_event_input
Entrada Ghidra: 0010116c
Tamanho stock: 464 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_core.c:nav_event_input
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0006_0010116c_nav_event_input.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0006_0010116c_nav_event_input.jsonl

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

## 008_inline_copy_to_user - _inline_copy_to_user

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: _inline_copy_to_user
Entrada Ghidra: 0010133c
Tamanho stock: 172 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_core.c:gf_ioctl
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0007_0010133c__inline_copy_to_user.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0007_0010133c__inline_copy_to_user.jsonl

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

## 009_inline_copy_from_user - _inline_copy_from_user

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: _inline_copy_from_user
Entrada Ghidra: 001013e8
Tamanho stock: 236 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_core.c:gf_ioctl
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0008_001013e8__inline_copy_from_user.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0008_001013e8__inline_copy_from_user.jsonl

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

## 010_gf_irq - gf_irq

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_irq
Entrada Ghidra: 001014d8
Tamanho stock: 120 bytes
Categoria: async_or_irq
Alvo no fonte: fp_goodix_core.c:gf_irq
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0009_001014d8_gf_irq.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0009_001014d8_gf_irq.jsonl

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

## 011_gf_probe - gf_probe

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_probe
Entrada Ghidra: 00101554
Tamanho stock: 1012 bytes
Categoria: binding
Alvo no fonte: fp_goodix_core.c:gf_probe
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0010_00101554_gf_probe.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0010_00101554_gf_probe.jsonl

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

## 012_gf_remove - gf_remove

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_remove
Entrada Ghidra: 00101968
Tamanho stock: 324 bytes
Categoria: binding
Alvo no fonte: fp_goodix_core.c:gf_remove
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0011_00101968_gf_remove.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0011_00101968_gf_remove.jsonl

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

## 013_goodixfp_init_drm_notifier - goodixfp_init_drm_notifier

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: goodixfp_init_drm_notifier
Entrada Ghidra: 00101ac0
Tamanho stock: 312 bytes
Categoria: lifecycle
Alvo no fonte: fp_goodix_core.c:goodixfp_init_drm_notifier
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0012_00101ac0_goodixfp_init_drm_notifier.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0012_00101ac0_goodixfp_init_drm_notifier.jsonl

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

## 014_list_del - list_del

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: list_del
Entrada Ghidra: 00101bf8
Tamanho stock: 108 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_core.c:gf_probe_list_del
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0013_00101bf8_list_del.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0013_00101bf8_list_del.jsonl

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

## 015_goodixfp_drm_get_pannel - goodixfp_drm_get_pannel

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: goodixfp_drm_get_pannel
Entrada Ghidra: 00101c64
Tamanho stock: 336 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_core.c:goodixfp_drm_get_pannel
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0014_00101c64_goodixfp_drm_get_pannel.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0014_00101c64_goodixfp_drm_get_pannel.jsonl

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

## 016_goodix_fb_state_chg_callback - goodix_fb_state_chg_callback

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: goodix_fb_state_chg_callback
Entrada Ghidra: 00101db8
Tamanho stock: 336 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_core.c:goodix_fb_state_chg_callback
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0015_00101db8_goodix_fb_state_chg_callback.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0015_00101db8_goodix_fb_state_chg_callback.jsonl

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

## 017_sendnlmsg - sendnlmsg

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: sendnlmsg
Entrada Ghidra: 00101f1c
Tamanho stock: 268 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_netlink.c:sendnlmsg
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0016_00101f1c_sendnlmsg.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0016_00101f1c_sendnlmsg.jsonl

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

## 018_netlink_init - netlink_init

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: netlink_init
Entrada Ghidra: 0010202c
Tamanho stock: 152 bytes
Categoria: lifecycle
Alvo no fonte: fp_goodix_netlink.c:netlink_init
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0017_0010202c_netlink_init.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0017_0010202c_netlink_init.jsonl

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

## 019_nl_data_ready - nl_data_ready

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: nl_data_ready
Entrada Ghidra: 001020c8
Tamanho stock: 208 bytes
Categoria: user_abi
Alvo no fonte: fp_goodix_netlink.c:nl_data_ready
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0018_001020c8_nl_data_ready.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0018_001020c8_nl_data_ready.jsonl

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

## 020_netlink_exit - netlink_exit

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: netlink_exit
Entrada Ghidra: 001021a8
Tamanho stock: 64 bytes
Categoria: lifecycle
Alvo no fonte: fp_goodix_netlink.c:netlink_exit
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0019_001021a8_netlink_exit.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0019_001021a8_netlink_exit.jsonl

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

## 021_zte_goodix_pinctrl_init - zte_goodix_pinctrl_init

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: zte_goodix_pinctrl_init
Entrada Ghidra: 001021ec
Tamanho stock: 208 bytes
Categoria: lifecycle
Alvo no fonte: fp_goodix_platform.c:zte_goodix_pinctrl_init
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0020_001021ec_zte_goodix_pinctrl_init.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0020_001021ec_zte_goodix_pinctrl_init.jsonl

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

## 022_zte_goodix_pinctrl_select - zte_goodix_pinctrl_select

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: zte_goodix_pinctrl_select
Entrada Ghidra: 001022c0
Tamanho stock: 184 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_platform.c:zte_goodix_pinctrl_select
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0021_001022c0_zte_goodix_pinctrl_select.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0021_001022c0_zte_goodix_pinctrl_select.jsonl

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

## 023_gf_parse_dts - gf_parse_dts

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_parse_dts
Entrada Ghidra: 0010237c
Tamanho stock: 828 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_platform.c:gf_parse_dts
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0022_0010237c_gf_parse_dts.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0022_0010237c_gf_parse_dts.jsonl

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

## 024_gf_cleanup - gf_cleanup

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_cleanup
Entrada Ghidra: 001026bc
Tamanho stock: 172 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_platform.c:gf_cleanup
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0023_001026bc_gf_cleanup.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0023_001026bc_gf_cleanup.jsonl

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

## 025_gf_power_on - gf_power_on

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_power_on
Entrada Ghidra: 0010276c
Tamanho stock: 160 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_platform.c:gf_power_on
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0024_0010276c_gf_power_on.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0024_0010276c_gf_power_on.jsonl

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

## 026_gf_power_off - gf_power_off

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_power_off
Entrada Ghidra: 00102810
Tamanho stock: 160 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_platform.c:gf_power_off
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0025_00102810_gf_power_off.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0025_00102810_gf_power_off.jsonl

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

## 027_gf_hw_reset - gf_hw_reset

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_hw_reset
Entrada Ghidra: 001028b4
Tamanho stock: 184 bytes
Categoria: core_logic
Alvo no fonte: fp_goodix_platform.c:gf_hw_reset
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0026_001028b4_gf_hw_reset.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0026_001028b4_gf_hw_reset.jsonl

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

## 028_gf_irq_num - gf_irq_num

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: gf_irq_num
Entrada Ghidra: 00102970
Tamanho stock: 60 bytes
Categoria: async_or_irq
Alvo no fonte: fp_goodix_platform.c:gf_irq_num
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0027_00102970_gf_irq_num.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0027_00102970_gf_irq_num.jsonl

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

## 029_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: init_module
Entrada Ghidra: 001029b0
Tamanho stock: 276 bytes
Categoria: lifecycle
Alvo no fonte: fp_goodix_core.c:zte_fp_init
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0028_001029b0_init_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0028_001029b0_init_module.jsonl

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

## 030_cleanup_module - cleanup_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: fp_goodix
Funcao stock: cleanup_module
Entrada Ghidra: 00102ac8
Tamanho stock: 88 bytes
Categoria: lifecycle
Alvo no fonte: fp_goodix_core.c:zte_fp_exit
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/decompiled/0029_00102ac8_cleanup_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/fp_goodix/offline_static/ghidra_stock/pcode/0029_00102ac8_cleanup_module.jsonl

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
