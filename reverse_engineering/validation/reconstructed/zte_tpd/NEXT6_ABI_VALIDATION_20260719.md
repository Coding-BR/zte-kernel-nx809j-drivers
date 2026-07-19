# Validacao offline do sexto grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock extraido localmente, pseudocodigo e P-Code do Ghidra, assembly AArch64, relocations ELF, headers GKI locais e o container de compilacao. Nenhum dado da internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `syna_tcm_v1_check_max_rw_size` | `int (struct tcm_dev *)` | `0xd57a6509` | PASS | PASS |
| `syna_tcm_v1_set_up_max_rw_size` | `int (struct tcm_dev *, u32, u32)` | `0x04a0b1dd` | PASS | PASS |
| `syna_tcm_config_timings` | `int (struct tcm_dev *, struct tcm_timings *, u32, u32)` | `0x4b2750f2` | PASS | PASS |
| `syna_tcm_enable_predict_reading` | `int (struct tcm_dev *, bool)` | `0x38633085` | PASS | PASS |
| `syna_tcm_set_report_dispatcher` | `int (struct tcm_dev *, u8, tcm_report_dispatcher_fn, void *)` | `0x6f1c1b70` | PASS | PASS |

Os cinco contratos foram confirmados por oraculos KCFI compilados localmente. Os callsites em `syna_dev_probe`, `syna_tcm_v1_detect`, `syna_cdev_ioctls`, `syna_dev_connect`, `syna_dev_set_up_input_device`, `sub_25330` e `sub_2829C` foram alinhados sem remover a logica adicional dos wrappers.

## Layout recuperado

O overlay parcial de `struct tcm_dev` passou a nomear os limites de leitura/escrita, protocolo, tamanho informado pelo identify report, seis grupos de timing, estado de predicted reading, callbacks de transporte e a tabela de 256 dispatchers.

| Campo | Offset |
|---|---:|
| `max_read_size` | `0x38` |
| `max_write_size` | `0x3c` |
| `host_max_read_size` | `0x40` |
| `host_max_write_size` | `0x44` |
| `protocol_version` | `0x80` |
| `identify_max_write_size` | `0x96` |
| `timing_01e8` / `timing_01ec` | `0x1e8` / `0x1ec` |
| `timing_0208` ate `timing_0218` | `0x208` ate `0x218` |
| `predict_reading_enabled` / `predict_reading_offset` | `0x37a` / `0x37c` |
| `set_up_max_rw_size` / `check_max_rw_size` | `0x3a8` / `0x3b0` |
| `report_dispatchers[256]` | `0x3d8` |

`struct tcm_timings` mede `0x28` bytes. Cada slot de dispatcher mede `0x10` bytes, com contexto em `+0x00` e callback em `+0x08`. O overlay completo permanece com `0x23e8` bytes. O validator AArch64 de layout retornou `PASS`.

## Paridade de codigo

Quatro funcoes foram reproduzidas integralmente em C tipado. Em `syna_tcm_v1_set_up_max_rw_size`, o Clang 19 gerava a mesma semantica, mas trocava a ordem de duas instrucoes independentes. O candidato fixa somente o trio comprovado `cmp; ldr; csel` em inline assembly AArch64, usando `__builtin_offsetof(struct tcm_dev, max_read_size)`; arquiteturas host executam a expressao C equivalente no harness.

Essa restricao nao adiciona acesso novo, endereco literal solto ou comportamento nao observado. Ela existe para tornar a comparacao de opcodes estrita e auditavel.

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---:|
| `syna_tcm_v1_check_max_rw_size` | 164 bytes / 41 instrucoes | 164 bytes / 41 instrucoes | PASS |
| `syna_tcm_v1_set_up_max_rw_size` | 184 bytes / 46 instrucoes | 184 bytes / 46 instrucoes | PASS |
| `syna_tcm_config_timings` | 236 bytes / 59 instrucoes | 236 bytes / 59 instrucoes | PASS |
| `syna_tcm_enable_predict_reading` | 112 bytes / 28 instrucoes | 112 bytes / 28 instrucoes | PASS |
| `syna_tcm_set_report_dispatcher` | 188 bytes / 47 instrucoes | 188 bytes / 47 instrucoes | PASS |

Todas as instrucoes, secoes, tamanhos e relocations normalizadas coincidem com o stock. Relatorio: `assembly_comparison_next6_abi_final.json`.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225` / Clang 19.0.1
- Target: AArch64, `ARCH=arm64`, `LLVM=1`, `LLVM_IAS=1`, `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`
- Dois ciclos independentes `clean -> modules`: ambos retornaram `0`.
- Duracoes: `294,626 s` e `297,761 s`.
- Tamanho dos dois modulos: `19723544` bytes.
- SHA-256 dos dois artefatos: `0b1e0c9df86b9a3df791fa6b7ed53f04cde5480a476b69e25f313143e28f78e5`.

O Kbuild emitiu aviso de clock skew inferior a um segundo no volume montado pelo Windows. O aviso foi preservado nos logs; os dois builds limpos produziram bytes identicos. Relatorio: `build_next6_abi_report.json`.

## KCFI global

A superficie completa possui `322` registros stock. O candidato final obteve `276` matches, `46` mismatches e `0` ausentes: `85,71%`. O grupo atual adicionou cinco matches em relacao ao checkpoint anterior (`271/322`). Cada uma das cinco funcoes deste lote possui type ID e secao exatos.

O relatorio global permanece `INCOMPLETE`; os outros 46 contratos ainda exigem trabalho proprio. Relatorio: `kcfi_full_surface_next6_abi_final.json`.

## Teste direto offline

O harness `next6_abi_harness.c` foi compilado com `-Wall -Wextra -Werror`, ASAN e UBSAN, e executado duas vezes. Resultado: `20/20` testes em cada execucao, sem falha de sanitizer.

Casos cobertos:

- contratos estaticos e offsets das cinco funcoes;
- rejeicao de handle, protocolo, identify report e timing invalidos com logs stock;
- limites de leitura/escrita com host ilimitado, cap de host e identify menor que a requisicao;
- todos os seis bits/grupos de timing, valores default, mascaras e supressao de zero;
- ativacao/desativacao de predicted reading e reset do offset;
- todos os 256 slots de dispatcher, limites `0`, `15`, `16` e `255`, sobrescrita isolada, callback e callback nulo;
- formatos e argumentos dos logs de warning/info/error.

O harness usa dados deterministas e o fallback C equivalente para o trio AArch64. Nao executa ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO ou firmware. Relatorio: `next6_abi_harness_report.json`.

## Rastreamento e status

O mapa estrutural foi regenerado com `367/367` identidades ligadas a fonte, Ghidra, P-Code e assembly stock, usando o SHA-256 final do candidato. `semantic_equivalence` global continua `UNPROVEN`, `hardware_validation` continua `DEFERRED` e a revisao independente continua `NOT_PERFORMED`.

Este checkpoint prova ABI, KCFI, layout, comportamento host coberto, reproducibilidade e assembly estrito das cinco microtarefas do lote. Nao declara o driver inteiro reconstruido em 100%. Mapa: `reconstruction_map_next6_abi.json`.
