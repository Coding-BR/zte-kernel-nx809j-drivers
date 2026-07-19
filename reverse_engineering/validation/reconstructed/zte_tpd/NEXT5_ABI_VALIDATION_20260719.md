# Validacao offline do quinto grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock extraido localmente, pseudocodigo e P-Code do Ghidra, assembly AArch64, relocations ELF, headers GKI locais e o container de compilacao. Nenhum dado de internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `syna_tcm_set_custom_touch_entity_callback` | `int (struct tcm_dev *, tcm_custom_touch_callback_fn, void *)` | `0x1e333d0b` | PASS | PASS |
| `syna_tcm_set_custom_gesture_callback` | `int (struct tcm_dev *, tcm_custom_touch_callback_fn, void *)` | `0x1e333d0b` | PASS | PASS |
| `syna_tcm_set_post_reset_callback` | `int (struct tcm_dev *, tcm_post_reset_callback_fn, void *)` | `0xef5efc68` | PASS | PASS |
| `syna_tcm_set_data_duplicator` | `int (struct tcm_dev *, unsigned char, tcm_data_duplicator_fn, void *)` | `0x6f1c1b70` | PASS | PASS |
| `syna_tcm_clear_data_duplicator` | `int (struct tcm_dev *)` | `0xd57a6509` | PASS | PASS |

As assinaturas publicas e os tres tipos de callback foram confirmados por oraculos KCFI compilados localmente. Os wrappers `sub_2EDA4` e `sub_2EDF0` foram alinhados ao contrato dos setters customizados.

## Callbacks e layout recuperado

O callback customizado possui o contrato:

`int (u8 entity_code, const u8 *config_data, u32 *config_offset, const u8 *report_data, u32 *report_offset, u32 report_size, void *callback_data)`.

O callback de post-reset possui o contrato `int (void *callback_data)`. O duplicador de dados possui o contrato `int (u8 report_code, const u8 *payload, u32 length, void *callback_data)`.

Offsets comprovados no overlay `struct tcm_dev`:

| Campo | Offset |
|---|---:|
| `custom_touch_callback_data` | `0x3b8` |
| `custom_touch_callback` | `0x3c0` |
| `custom_gesture_callback_data` | `0x3c8` |
| `custom_gesture_callback` | `0x3d0` |
| `data_duplicators[256]` | `0x13d8` |
| `post_reset_context` | `0x23d8` |
| `post_reset_callback` | `0x23e0` |

Cada slot de duplicacao mede `0x10` bytes: contexto em `+0x00` e callback em `+0x08`. A matriz completa ocupa `0x1000` bytes. O tamanho comprovado do overlay passa a ser `0x23e8`.

As mensagens de ponteiro nulo usam o literal stock `"\x01" "3[error] %s: Invalid tcm device handle\n"`. O simbolo provisiorio `unk_3365A` foi removido apenas destas cinco rotinas depois que as relocations demonstraram a string literal.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225` / Clang 19.0.1
- Target: AArch64, `LLVM=1`, `LLVM_IAS=1`, `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`
- Dois ciclos independentes `clean -> modules`: ambos retornaram `0`.
- Duracoes: `355,866 s` e `330,924 s`.
- Tamanho dos dois modulos: `19661816` bytes.
- SHA-256 dos dois artefatos: `f057fe8fb6b8ebcf25a0761bab287a8834bb45cda32cb1850e36519e35a91244`.

Relatorio: `build_next5_abi_report.json`.

## KCFI global

O relatorio da superficie completa encontrou `322` registros stock, com `271` matches, `51` mismatches e `0` ausentes: `84,16%`. O grupo atual adicionou cinco matches em relacao ao checkpoint anterior (`266/322`). Cada uma das cinco funcoes deste lote possui type ID exato.

Esse percentual e uma metrica de compatibilidade de tipos do modulo completo. Ele nao transforma as outras 51 funcoes divergentes em PASS.

Relatorio: `kcfi_full_surface_next5_abi_final.json`.

## Teste direto offline

O harness `next5_abi_harness.c` foi compilado com `-Wall -Wextra -Werror`, ASAN e UBSAN, e executado duas vezes. Resultado: `13/13` testes em cada execucao, sem falha de sanitizer.

Casos cobertos:

- contratos estaticos das cinco funcoes e dos callbacks;
- offsets recuperados e tamanho `0x23e8` de `struct tcm_dev`;
- armazenamento independente dos callbacks custom touch, custom gesture e post-reset;
- slots de duplicacao nos limites `0` e `255`, sobrescrita isolada e invocacao com argumentos exatos;
- limpeza dos 256 slots e preservacao das regioes anterior e posterior;
- retorno `-241` e formato de log das cinco rotinas quando `tcm == NULL`;
- aceitacao de callback/contexto nulos quando o handle e valido.

O harness usa dados deterministas. Nao executa ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO ou firmware.

Relatorio: `next5_abi_harness_report.json`.

## Comparacao de assembly

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---:|
| `syna_tcm_set_custom_touch_entity_callback` | 72 bytes / 18 instrucoes | 72 bytes / 18 instrucoes | PASS |
| `syna_tcm_set_custom_gesture_callback` | 72 bytes / 18 instrucoes | 72 bytes / 18 instrucoes | PASS |
| `syna_tcm_set_post_reset_callback` | 72 bytes / 18 instrucoes | 72 bytes / 18 instrucoes | PASS |
| `syna_tcm_set_data_duplicator` | 76 bytes / 19 instrucoes | 76 bytes / 19 instrucoes | PASS |
| `syna_tcm_clear_data_duplicator` | 80 bytes / 20 instrucoes | 80 bytes / 20 instrucoes | PASS |

Todas as instrucoes, secoes, tamanhos e relocations normalizadas coincidem com o stock.

Relatorio: `assembly_comparison_next5_abi_final.json`.

## Rastreamento e status

O mapa estrutural foi regenerado com `367/367` identidades ligadas a fonte, Ghidra, P-Code e assembly stock, usando o SHA-256 final do candidato. `semantic_equivalence` global continua `UNPROVEN`, `hardware_validation` continua `DEFERRED` e a revisao independente continua `NOT_PERFORMED`.

Este checkpoint prova ABI, KCFI, layout, comportamento host coberto e assembly estrito das cinco microtarefas do lote. Nao declara o driver inteiro reconstruido em 100%.

Mapa: `reconstruction_map_next5_abi.json`.
