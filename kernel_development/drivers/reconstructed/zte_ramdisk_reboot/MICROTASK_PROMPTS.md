# Prompts Atomicos: zte_ramdisk_reboot

## 001_zte_ramdisk_reboot_write - zte_ramdisk_reboot_write

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: zte_ramdisk_reboot_write
Entrada Ghidra: 00100464
Tamanho stock: 148 bytes
Categoria: user_abi
Alvo no fonte: zte_ramdisk_reboot.c:zte_ramdisk_reboot_write
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0000_00100464_zte_ramdisk_reboot_write.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0000_00100464_zte_ramdisk_reboot_write.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 002_zte_check_xbl_log_lines - zte_check_xbl_log_lines

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: zte_check_xbl_log_lines
Entrada Ghidra: 001004fc
Tamanho stock: 440 bytes
Categoria: core_logic
Alvo no fonte: zte_ramdisk_reboot.c:zte_check_xbl_log_lines
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0001_001004fc_zte_check_xbl_log_lines.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0001_001004fc_zte_check_xbl_log_lines.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 003_extract_ocp_info - extract_ocp_info

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: extract_ocp_info
Entrada Ghidra: 001006b8
Tamanho stock: 240 bytes
Categoria: core_logic
Alvo no fonte: zte_ramdisk_reboot.c:extract_ocp_info
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0002_001006b8_extract_ocp_info.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0002_001006b8_extract_ocp_info.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 004_extract_sn_info - extract_sn_info

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: extract_sn_info
Entrada Ghidra: 001007ac
Tamanho stock: 228 bytes
Categoria: core_logic
Alvo no fonte: zte_ramdisk_reboot.c:extract_sn_info
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0003_001007ac_extract_sn_info.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0003_001007ac_extract_sn_info.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 005_zte_ramdisk_reboot_probe - zte_ramdisk_reboot_probe

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: zte_ramdisk_reboot_probe
Entrada Ghidra: 00100894
Tamanho stock: 832 bytes
Categoria: binding
Alvo no fonte: zte_ramdisk_reboot.c:zte_ramdisk_reboot_probe
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0004_00100894_zte_ramdisk_reboot_probe.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0004_00100894_zte_ramdisk_reboot_probe.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 006_zte_ramdisk_reboot_remove - zte_ramdisk_reboot_remove

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: zte_ramdisk_reboot_remove
Entrada Ghidra: 00100bd8
Tamanho stock: 4 bytes
Categoria: binding
Alvo no fonte: zte_ramdisk_reboot.c:zte_ramdisk_reboot_remove
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0005_00100bd8_zte_ramdisk_reboot_remove.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0005_00100bd8_zte_ramdisk_reboot_remove.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 007_zte_get_xbl_log_memory_region - zte_get_xbl_log_memory_region

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: zte_get_xbl_log_memory_region
Entrada Ghidra: 00100bdc
Tamanho stock: 268 bytes
Categoria: core_logic
Alvo no fonte: zte_ramdisk_reboot.c:zte_get_xbl_log_memory_region
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0006_00100bdc_zte_get_xbl_log_memory_region.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0006_00100bdc_zte_get_xbl_log_memory_region.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 008_attr_show - attr_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: attr_show
Entrada Ghidra: 00100cec
Tamanho stock: 68 bytes
Categoria: user_abi
Alvo no fonte: zte_ramdisk_reboot.c:attr_show
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0007_00100cec_attr_show.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0007_00100cec_attr_show.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 009_attr_store - attr_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: attr_store
Entrada Ghidra: 00100d34
Tamanho stock: 68 bytes
Categoria: user_abi
Alvo no fonte: zte_ramdisk_reboot.c:attr_store
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0008_00100d34_attr_store.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0008_00100d34_attr_store.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 010_ramdisk_nvmem_show - ramdisk_nvmem_show

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: ramdisk_nvmem_show
Entrada Ghidra: 00100d7c
Tamanho stock: 56 bytes
Categoria: user_abi
Alvo no fonte: zte_ramdisk_reboot.c:ramdisk_nvmem_show
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0009_00100d7c_ramdisk_nvmem_show.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0009_00100d7c_ramdisk_nvmem_show.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 011_ramdisk_nvmem_store - ramdisk_nvmem_store

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: ramdisk_nvmem_store
Entrada Ghidra: 00100db8
Tamanho stock: 40 bytes
Categoria: user_abi
Alvo no fonte: zte_ramdisk_reboot.c:ramdisk_nvmem_store
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0010_00100db8_ramdisk_nvmem_store.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0010_00100db8_ramdisk_nvmem_store.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 012_init_module - init_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: init_module
Entrada Ghidra: 00100de4
Tamanho stock: 44 bytes
Categoria: lifecycle
Alvo no fonte: zte_ramdisk_reboot.c:init_module (module_platform_driver expansion)
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0011_00100de4_init_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0011_00100de4_init_module.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```

## 013_cleanup_module - cleanup_module

```text
Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.
Driver: zte_ramdisk_reboot
Funcao stock: cleanup_module
Entrada Ghidra: 00100e14
Tamanho stock: 36 bytes
Categoria: lifecycle
Alvo no fonte: zte_ramdisk_reboot.c:cleanup_module (module_platform_driver expansion)
Pseudocodigo Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/decompiled/0012_00100e14_cleanup_module.c
P-Code Ghidra: reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/offline_static/ghidra_stock/pcode/0012_00100e14_cleanup_module.jsonl

Regras obrigatorias:
1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.
2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.
3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.
4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.
5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.
6. Execute o gate Joern estrito para a funcao; o relatorio deve cobrir a funcao mapeada, nao ter erros de parser e corresponder a arvore C/H atual.
7. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.

Entregaveis obrigatorios para esta unica funcao:
- patch restrito a funcao e aos stubs/testes indispensaveis;
- relatorio de compilacao limpa e reproduzivel;
- comparacao KCFI stock x candidato;
- relatorio Joern estrito e hashado para a funcao mapeada;
- relatorio de teste com comando, saida, resultado e SHA-256;
- bloqueadores remanescentes. Nao marque PASS por inspecao visual.
```
