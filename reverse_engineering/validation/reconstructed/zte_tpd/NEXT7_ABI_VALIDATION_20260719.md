# Validacao offline do setimo grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock extraido localmente, pseudocodigo e P-Code do Ghidra, assembly AArch64, relocations ELF, headers GKI locais e o container de compilacao. Nenhum dado da internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `syna_tcm_get_boot_info` | `int (struct tcm_dev *, struct tcm_boot_info *, unsigned int)` | `0x17defb3b` | PASS | PASS |
| `syna_tcm_get_app_info` | `int (struct tcm_dev *, struct tcm_application_info *, unsigned int)` | `0xb5d122f8` | PASS | PASS |
| `syna_tcm_get_features` | `int (struct tcm_dev *, struct tcm_features_info *, unsigned int)` | `0x39266119` | PASS | PASS |
| `syna_tcm_identify` | `int (struct tcm_dev *, struct tcm_identification_info *, unsigned int)` | `0xe19ba5c4` | PASS | PASS |

Os quatro contratos foram confirmados por oraculos KCFI compilados localmente. Os callsites em `sub_27D04`, `syna_dev_connect`, `syna_dev_helper_work`, `syna_dev_set_up_app_fw`, `syna_tcm_set_up_flash_access`, `syna_tcm_testing_build_id` e `syna_tcm_testing_config_id` foram alinhados com os tipos recuperados.

## Layout recuperado

O overlay parcial passou a representar os quatro payloads do protocolo TCM e o buffer de resposta usado pelas rotinas. Todos os tamanhos e offsets abaixo possuem `static_assert` compilado contra o GKI local:

| Estrutura ou campo | Tamanho/offset |
|---|---:|
| `struct tcm_identification_info` | `0x30` |
| `identification_info.mode` | `0x01` |
| `identification_info.part_number` | `0x02` |
| `identification_info.build_id` | `0x12` |
| `identification_info.max_write_size` | `0x16` |
| `struct tcm_application_info` | `0x30` |
| `application_info.status` | `0x02` |
| `application_info.customer_config_id` | `0x10` |
| `application_info.max_x` | `0x20` |
| `application_info.num_of_image_rows` | `0x28` |
| `struct tcm_boot_info` | `0x20` |
| `struct tcm_features_info` | `0x10` |
| `struct tcm_response_buffer` | `0x48` |

O acesso de 64 bits ao `customer_config_id`, intencionalmente desalinhado no protocolo, usa `tcm_unaligned_u64` com `aligned(1)` e `may_alias`. Isso evita comportamento indefinido por alinhamento em C/UBSAN e preserva exatamente a sequencia AArch64 stock. O validator de layout retornou `PASS` e vinculou a prova ao SHA-256 final do modulo.

## Paridade de codigo

As quatro funcoes foram reconstruidas em C tipado com os mesmos comandos TCM (`0x10`, `0x20`, `0x32` e `0x02`), contratos de timeout, caminhos IRQ/polling, travas, copias limitadas e propagacao de erros observados.

Em `syna_tcm_identify`, `__builtin_expect_with_probability(..., 1, 0.51)` orienta somente a disposicao dos blocos basicos emitidos pelo Clang 19. A anotacao nao cria instrucao nem regra funcional nova; a comparacao final do ELF confirma identidade.

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---:|
| `syna_tcm_get_boot_info` | 572 bytes / 143 instrucoes | 572 bytes / 143 instrucoes | PASS |
| `syna_tcm_get_app_info` | 672 bytes / 168 instrucoes | 672 bytes / 168 instrucoes | PASS |
| `syna_tcm_get_features` | 552 bytes / 138 instrucoes | 552 bytes / 138 instrucoes | PASS |
| `syna_tcm_identify` | 492 bytes / 123 instrucoes | 492 bytes / 123 instrucoes | PASS |

Secao, tamanho do simbolo, todas as instrucoes e relocations normalizadas coincidem com o stock. Relatorio: `assembly_comparison_next7_abi_final.json`.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225` / Clang 19.0.1
- Target: AArch64, `ARCH=arm64`, `LLVM=1`, `LLVM_IAS=1`, `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`
- Dois ciclos independentes `clean -> modules`: ambos retornaram `0`.
- Duracoes: `399,008 s` e `356,891 s`.
- Tamanho dos dois modulos: `19847184` bytes.
- SHA-256 dos dois artefatos: `1e6cb827166efae177f8c3056ab48770a77dbb5d2423e9a1b74507f52ed611d1`.

`defs.h` foi canonizado em LF antes dos dois ciclos. O blob Git publicado e a entrada compilada possuem o mesmo SHA-256; nenhum ciclo canonico emitiu aviso de clock skew. Relatorio: `build_next7_abi_report.json`.

## KCFI global

A superficie completa possui `322` registros stock. O candidato final obteve `280` matches, `42` mismatches e `0` ausentes: `86,96%`. O grupo atual adicionou quatro matches em relacao ao checkpoint anterior (`276/322`). Cada uma das quatro funcoes deste lote possui type ID e secao exatos.

O relatorio global permanece `INCOMPLETE`; os outros 42 contratos ainda exigem microtarefas proprias. Relatorio: `kcfi_full_surface_next7_abi_final.json`.

## Teste direto offline

O harness `next7_abi_harness.c` foi compilado com `-Wall -Wextra -Werror`, ASAN e UBSAN, e executado duas vezes. Resultado: `23/23` testes em cada execucao, sem falha de sanitizer.

Casos cobertos:

- contratos de assinatura, tamanhos de payload e offsets;
- rejeicao de handles, saidas e modos invalidos;
- comandos `0x10`, `0x20`, `0x32` e `0x02`;
- caminhos de IRQ, polling, timeout explicito e falha de `write_message`;
- resposta nula, resposta maior, copia truncada e falha de copia;
- equilibrio de lock em caminho aninhado;
- status de aplicacao valido, incorreto e invalido;
- estado derivado da aplicacao e copia de `customer_config_id`;
- identificacao, modo reportado e copia do payload.

O harness usa dados deterministas e doubles host para transporte e mutex. Nao executa ADB, fastboot, insmod, rmmod, SPI, IRQ fisica, MMIO ou firmware. Relatorio: `next7_abi_harness_report.json`.

## Rastreamento e status

O mapa estrutural foi regenerado com `367/367` identidades ligadas a fonte, Ghidra, P-Code e assembly stock, usando o SHA-256 final do candidato. `semantic_equivalence` global continua `UNPROVEN`, `hardware_validation` continua `DEFERRED` e a revisao independente continua `NOT_PERFORMED`.

Este checkpoint prova ABI, KCFI, layout, comportamento host coberto, reproducibilidade e assembly estrito das quatro microtarefas do lote. Nao declara o driver inteiro reconstruido em 100%. Mapa: `reconstruction_map_next7_abi.json`.
