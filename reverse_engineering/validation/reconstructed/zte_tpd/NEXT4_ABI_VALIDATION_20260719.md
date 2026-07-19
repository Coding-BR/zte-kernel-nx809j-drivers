# Validacao offline do quarto grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock extraido localmente, pseudocodigo e P-Code do Ghidra, assembly AArch64, relocations ELF, headers GKI locais e o container de compilacao. Nenhum dado de internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `ufp_report_lcd_state_delayed_work` | `void (unsigned int)` | `0x105d2ee9` | PASS | PASS |
| `ufp_notifier_cb` | `int (int)` | `0xcdde824b` | PASS | PASS |
| `tpd_goodix_ts_resume` | `int (void *)` | `0xc069e464` | PASS | PASS |
| `tpd_goodix_ts_suspend` | `int (void *)` | `0xc069e464` | PASS | PASS |
| `syna_tcm_get_partition_id_string` | `char * (enum flash_area)` | `0x11058819` | PASS | PASS |

As cinco assinaturas foram confirmadas por oraculos KCFI compilados localmente. Os wrappers `sub_14920` e `sub_2EE3C` foram alinhados aos contratos recuperados.

## Tabela de particoes

A tabela provisoria `off_42090`, que continha nomes inventados, foi removida. Os 23 ponteiros stock em `.rodata+0x4910` foram resolvidos pelas relocations `R_AARCH64_ABS64` e pelos bytes de `.rodata.str1.1`:

`APP_CODE`, `APP_CODE_COPRO`, `APP_CONFIG`, `DISPLAY`, `BOOT_CODE`, `BOOT_CONFIG`, `APP_PROD_TEST`, `F35_APP_CODE`, `FORCE`, `GAMMA`, `TEMPERATURE_GAMM`, `LCM`, `LOOKUP`, `OEM`, `OPEN_SHORT`, `OTP`, `PPDT`, `ROMBOOT_APP_CODE`, `TOOL_BOOT_CONFIG`, `JSON_CONFIG_AREA`, `CUSTOM_CS_AREA`, `CUSTOM_LOCKDOWN_AREA`, `CUSTOM_MTP_AREA`.

`TEMPERATURE_GAMM` e o texto stock literal: os bytes em `0x7885` terminam em `4d 4d 00`. Nao deve ser alterado para `TEMPERATURE_GAMMA` sem nova evidencia binaria.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225` / Clang 19.0.1
- Target: AArch64, `LLVM=1`, `LLVM_IAS=1`, `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`
- Dois ciclos independentes `clean -> modules`: ambos retornaram `0`.
- Tamanho dos dois modulos: `19634896` bytes.
- SHA-256 dos dois artefatos: `86e8e87d57baf19a06d9bc2537592c1135d3fe862fdb602d720fbcb98535223c`.

Relatorio: `build_next4_abi_report.json`.

## KCFI global

O relatorio da superficie completa encontrou `322` registros stock, com `266` matches, `56` mismatches e `0` ausentes: `82,61%`. O grupo atual adicionou cinco matches em relacao ao checkpoint anterior (`261/322`). Cada uma das cinco funcoes deste lote possui type ID exato.

Esse percentual e uma metrica de compatibilidade de tipos do modulo completo. Ele nao transforma as outras 56 funcoes divergentes em PASS.

Relatorio: `kcfi_full_surface_next4_abi_final.json`.

## Teste direto offline

O harness `next4_abi_harness.c` foi compilado com `-Wall -Wextra -Werror`, ASAN e UBSAN, e executado duas vezes. Resultado: `10/10` testes em cada execucao, sem falha de sanitizer.

Casos cobertos:

- contratos estaticos das cinco funcoes;
- CPU `32`, offset do workqueue em `tpd_cdev + 1200`, delayed work em `tpd_cdev + 2528` e atraso retornado por `msecs_to_jiffies`;
- notifier com evento zero e nao zero;
- carregamento Goodix em `pdev + 8`, derivacao do `struct device *` em `base + 16` e propagacao dos retornos de resume/suspend;
- os 23 nomes de particao, ID zero, ID 24 e valor negativo.

O harness usa stubs deterministas. Nao executa ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO ou flash.

Relatorio: `next4_abi_harness_report.json`.

## Comparacao de assembly

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---:|
| `ufp_report_lcd_state_delayed_work` | 68 bytes / 17 instrucoes | 68 bytes / 17 instrucoes | PASS |
| `ufp_notifier_cb` | 40 bytes / 10 instrucoes | 40 bytes / 10 instrucoes | PASS |
| `tpd_goodix_ts_resume` | 36 bytes / 9 instrucoes | 36 bytes / 9 instrucoes | PASS |
| `tpd_goodix_ts_suspend` | 36 bytes / 9 instrucoes | 36 bytes / 9 instrucoes | PASS |
| `syna_tcm_get_partition_id_string` | 40 bytes / 10 instrucoes | 40 bytes / 10 instrucoes | PASS |

O comparador foi corrigido para normalizar chamadas `B/BL` pelo simbolo de destino quando um ELF preserva `R_AARCH64_CALL26` e o outro ja resolveu o branch local. Ponteiros para `.rodata.str*` agora sao comparados pelo conteudo da string, nao pelo offset de link. Os 11 testes unitarios do comparador passaram.

Relatorio: `assembly_comparison_next4_abi_final.json`.

## Rastreamento e status

O mapa estrutural foi regenerado com `367/367` identidades ligadas a fonte, Ghidra, P-Code e assembly stock, usando o SHA-256 final do candidato. `semantic_equivalence` global continua `UNPROVEN`, `hardware_validation` continua `DEFERRED` e a revisao independente continua `NOT_PERFORMED`.

Este checkpoint prova ABI, KCFI, comportamento host coberto e assembly estrito das cinco microtarefas do lote. Nao declara o driver inteiro reconstruido em 100%.

Mapa: `reconstruction_map_next4_abi.json`.
