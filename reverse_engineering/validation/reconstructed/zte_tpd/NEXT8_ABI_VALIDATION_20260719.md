# Validacao offline do oitavo grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock
extraido localmente, pseudocodigo e P-Code do Ghidra, assembly AArch64,
relocations ELF, headers GKI locais e o container de compilacao. Nenhum dado
da internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `syna_tcm_sleep` | `int (struct tcm_dev *, bool, unsigned int)` | `0xdad41fc4` | PASS | PASS |
| `syna_tcm_switch_fw_mode` | `int (struct tcm_dev *, u8, unsigned int)` | `0xdad41fc4` | PASS | PASS |
| `syna_tcm_enable_report` | `int (struct tcm_dev *, u8, bool, unsigned int)` | `0xd6e30d13` | PASS | PASS |
| `syna_tcm_get_dynamic_config` | `int (struct tcm_dev *, u8, u16 *, unsigned int)` | `0x56ccd541` | PASS | PASS |
| `syna_tcm_set_dynamic_config` | `int (struct tcm_dev *, u8, u16, unsigned int)` | `0xc1b5ec9e` | PASS | PASS |

Quatro oraculos KCFI independentes confirmam os cinco contratos. `sleep` e
`switch_fw_mode` possuem a mesma forma ABI reduzida e, por isso, o mesmo type
ID. `defs.h` foi canonizado com os cinco prototipos tipados; os callsites
existentes nao exigiram casts nem supressao de CFI.

## Layout reutilizado e revalidado

Este lote nao inventou campos novos. Ele reutiliza somente offsets ja ligados
ao ELF stock e protegidos por `static_assert`:

| Campo | Offset |
|---|---:|
| `tcm_dev.firmware_mode` | `0x09` |
| `tcm_dev.transport` | `0x48` |
| `tcm_dev.response.data` | `0x148` |
| `tcm_dev.response.data_length` | `0x154` |
| `tcm_dev.timing_01e8` | `0x1e8` |
| `tcm_dev.command_delay_ms` | `0x20c` |
| `tcm_dev.write_message` | `0x398` |
| `tcm_dev.check_max_rw_size` | `0x3b0` |

O probe completo de layout, objetos de teste e relocations retornou `PASS` e
o `abi_validation_next8_abi.json` esta ligado ao SHA-256 final do candidato.

## Paridade de codigo

As cinco funcoes foram reescritas em C tipado preservando comandos TCM,
payloads, timeouts, selecao IRQ/polling, modos de firmware, retornos e logs.
Em `switch_fw_mode`, os nomes presentes no binario demonstraram que os caminhos
application e bootloader provinham de helpers `static` incorporados. A
reconstrucao usa esses dois helpers e um `switch`, reproduzindo a intencao e o
layout do stock.

As duas anotacoes `__builtin_expect_with_probability(..., 0, 0.51)` nos
helpers orientam somente a disposicao dos blocos sem IRQ. Elas nao emitem
instrucao nem alteram a regra funcional; a identidade final do ELF confirma
isso.

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---:|
| `syna_tcm_sleep` | 264 bytes / 66 instrucoes | 264 bytes / 66 instrucoes | PASS |
| `syna_tcm_switch_fw_mode` | 728 bytes / 182 instrucoes | 728 bytes / 182 instrucoes | PASS |
| `syna_tcm_enable_report` | 364 bytes / 91 instrucoes | 364 bytes / 91 instrucoes | PASS |
| `syna_tcm_get_dynamic_config` | 392 bytes / 98 instrucoes | 392 bytes / 98 instrucoes | PASS |
| `syna_tcm_set_dynamic_config` | 352 bytes / 88 instrucoes | 352 bytes / 88 instrucoes | PASS |

Secao, tamanho de simbolo, todas as instrucoes e relocations normalizadas
coincidem com o stock. Relatorio:
`assembly_comparison_next8_abi_final.json`.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`.
- Toolchain: `clang-r536225` / Clang 19.0.1.
- Target: AArch64 com `ARCH=arm64`, `LLVM=1`, `LLVM_IAS=1` e
  `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`.
- Dois ciclos independentes `clean -> modules` retornaram `0`.
- Duracoes: `124,654 s` e `115,326 s`.
- Tamanho dos dois modulos: `19.919.304` bytes.
- SHA-256 dos dois artefatos:
  `74c0172942814761020d96acd38fa144827fd192186cea4fb601f2df67080112`.
- Os dois logs possuem o mesmo SHA-256 e nenhum aviso.

Relatorio: `build_next8_abi_report.json`.

## KCFI global

A superficie completa possui `322` registros stock. O candidato final obteve
`285` matches, `37` mismatches e `0` ausentes: `88,51%`. O grupo atual
adicionou cinco matches ao checkpoint anterior (`280/322`). Cada funcao deste
lote possui type ID e secao exatos.

O relatorio global permanece `INCOMPLETE`; os outros 37 contratos exigem
microtarefas proprias. Relatorio:
`kcfi_full_surface_next8_abi_final.json`.

## Teste direto offline

O harness `next8_abi_harness.c` foi compilado com `-Wall -Wextra -Werror`,
ASAN e UBSAN, e executado duas vezes. Resultado: `29/29` testes em cada
execucao, sem falha de sanitizer.

Casos cobertos:

- contratos de assinatura e offsets usados;
- handles e modos de aplicacao invalidos;
- sleep e wake com comandos `0x2c` e `0x2d`;
- enable/disable de report com comandos `0x05` e `0x06`;
- get/set dynamic config com comandos `0x23` e `0x24`;
- byte order do payload de 16 bits e resposta curta;
- caminhos IRQ, polling, timeout explicito e falha de `write_message`;
- transicoes application `0x14` e bootloader `0x1f`;
- modo ja ativo, modo final incorreto e propagacao de erro;
- callback `check_max_rw_size`;
- caminhos polling dos dois helpers estaticos incorporados.

O harness usa dados deterministas e doubles host para callbacks. Nao executa
ADB, fastboot, `insmod`, `rmmod`, SPI, IRQ fisica, MMIO ou firmware.
Relatorio: `next8_abi_harness_report.json`.

## Regressao da infraestrutura

Os 20 testes direcionados aos validadores de assembly, KCFI e layout passaram.
A suite completa de `workspace_tools/reconstruction_pipeline/tests` executou
108 testes: 107 passaram e um falhou fora deste escopo. A falha preexistente
esta em `test_audit_userdebug_observability.py` e informa que o SHA-256 de
`reproducible_environment/inputs/nx809j_kernel.config` difere do valor
registrado em `environment.lock.json`. Nenhum desses dois arquivos foi
alterado ou incluido neste lote.

## Rastreamento e status

O mapa estrutural foi regenerado com `367/367` identidades ligadas a fonte,
Ghidra, P-Code e assembly stock, usando o SHA-256 final do candidato.
`semantic_equivalence` global continua `UNPROVEN`, `hardware_validation`
continua `DEFERRED` e a revisao independente continua `NOT_PERFORMED`.

Este checkpoint prova ABI, KCFI, layout, comportamento host coberto,
reprodutibilidade e assembly estrito das cinco microtarefas do lote. Ele nao
declara o driver inteiro reconstruido em 100%. Mapa:
`reconstruction_map_next8_abi.json`.
