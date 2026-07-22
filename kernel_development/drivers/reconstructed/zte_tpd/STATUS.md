# Status de Reconstrucao e Validacao do Driver `zte_tpd`

## Estado Atual - 2026-07-22

- **Classificacao do build:** `static_verified`
- **Veredito do protocolo offline:** `INCOMPLETE`
- **Kernel alvo:** Android 16 / GKI 6.12.23 / AArch64
- **Stock SHA-256:** `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- **Candidato SHA-256:** `647340ba7ca988b83d3f18f20013bc8c0726e765b0a1da83724aeafba9c84ad8`
- **Candidato:** `24262064` bytes
- **Teste em hardware desta revisao:** nao executado

`static_verified` descreve build, ELF, KMI, layouts e rastreabilidade
estrutural. Nao significa equivalencia semantica integral nem validacao de
hardware.

## Gates Offline

PASS:

- O0 identidade e escopo;
- O1 ELF stock local;
- O2 assembly stock integral;
- O3 exports Ghidra, pseudocodigo e P-Code;
- O4 mapa estrutural `367/367`, incluindo nomes duplicados por endereco;
- O5 ABI/layout com probe compilado no Clang `r536225`;
- O8 KCFI da superficie selecionada `176/176`, incluindo as oito familias
  recuperadas `143/143`.

INCOMPLETE:

- O6: `155/367` microtarefas possuem build, KCFI e teste direto atestados;
- O8/O9: a superficie KCFI integral recuperavel esta em `299/322`;
- O10: revisao independente ainda nao foi realizada.

Hardware permanece `DEFERRED`.

## Checkpoint Next15 - Orquestracao de Reflash

O Next15 fechou `syna_dev_do_reflash` com a assinatura KCFI
`int (struct syna_tcm *, bool)`, type ID `0x796eea76`. O oraculo local
compilou `882` declaracoes; somente `struct syna_tcm *`, retorno inteiro de
32 bits e um segundo argumento de um byte produziram o ID stock. Os dois
chamadores locais, os valores `0/1` e o uso como bit de forca sustentam
`bool` como declaracao canonica.

O corpo candidato coincide com o stock em `260` bytes, `65` instrucoes,
secao e todas as relocations. Uma importacao limpa no Ghidra 12.1.2 tambem
coincide em C normalizado e na forma ordenada dos `190` registros P-Code. O
harness direto passou `10/10` em duas execucoes ASAN/UBSAN, cobrindo
`request_firmware`, propagacao de erros, update, logs exatos, truncamento de
tamanho, bit `force` e `release_firmware` na ordem stock.

Dois builds limpos produziram o mesmo modulo de `24.262.064` bytes, SHA-256
`647340ba7ca988b83d3f18f20013bc8c0726e765b0a1da83724aeafba9c84ad8`.
O KCFI global subiu para `299/322` (`92,86%`) e a microtarefa
`144_syna_dev_do_reflash` foi promovida: `155 PASS / 212 READY`.

A assinatura direta de `syna_tcm_do_fw_update` tambem foi recuperada como
`int (struct tcm_dev *, const unsigned char *, unsigned int, unsigned int,
bool)`, KCFI `0xb9434444`. Esta dependencia permanece READY: seu corpo ainda
tem `860` bytes contra `824` stock e nao recebeu harness/assembly estritos
proprios.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT15_REFLASH_VALIDATION_20260722.md`.

## Checkpoint Next14 - Extracao de Bits do Touch Report

O Next14 fechou `syna_tcm_get_touch_data` com a assinatura KCFI
`int (const unsigned char *, unsigned int, unsigned int, unsigned int,
unsigned int *)`, type ID `0xfd344c7d`. O oraculo local compilou `6.400`
declaracoes e encontrou somente a familia acima; as 32 correspondencias sao
aliases equivalentes de `u8/u32` e `unsigned char/unsigned int`.

O corpo candidato coincide com o stock em `244` bytes, `61` instrucoes,
secao e todas as relocations. A nova importacao no Ghidra 12.1.2 tambem
coincide em C normalizado e na forma ordenada dos `220` registros P-Code,
sem equivalencia permissiva. O harness direto passou `10/10` em duas
execucoes ASAN/UBSAN e comparou `1.024` combinacoes validas por execucao com
um extrator de referencia, alem dos caminhos de erro e limites de 32 bits.

Dois builds limpos e independentes produziram o mesmo modulo de `24.076.520`
bytes, SHA-256
`9a168340ee6147c6547276f1c63a442ecc9302ec34180259b4740286078b85b7`.
O KCFI global subiu para `297/322` (`92,24%`) e a microtarefa
`315_syna_tcm_get_touch_data` foi a unica promocao: `154 PASS / 213 READY`.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT14_TOUCH_DATA_VALIDATION_20260722.md`.

## Checkpoint Next13 - Ciclo de Firmware

O Next13 revalidou nove funcoes do ciclo de firmware por assembly AArch64,
relocations, Ghidra, P-Code, KCFI e dois harnesses diretos. Stock e candidato
coincidem exatamente nas nove funcoes, somando `533` instrucoes e `1.249`
registros P-Code. Os harnesses passaram `24/24` casos por repeticao, em duas
execucoes com ASAN/UBSAN.

O descritor `struct tpd_firmware_data` foi corrigido de `0x10` para `0x18`
bytes. O campo `data` permanece em `+0x08`, seguido de oito bytes reservados.
Essa correcao e imposta por `static_assert` e substitui a inferencia publicada
no Next12. Os offsets canonicos em `tpd_cdev` sao `+0x448`, `+0xc58`,
`+0xc60`, `+0xe18`, `+0xee8`, `+0xf98` e `+0xfa0`.

Dois builds limpos produziram o mesmo modulo de `24.076.504` bytes e SHA-256
`328777a498b79f5cb3fb2ce2e4ce7fbe841049d9ac69faa0c66095074d2b863e`.
O KCFI global chegou a `296/322` (`91,93%`). O manifesto preservou os 150 PASS
anteriores, promoveu tres novas funcoes e terminou em `153 PASS / 214 READY`.
Os callers `syna_testing_pt01_zte`, `syna_testing_pt05_zte` e
`syna_testing_pt0a_zte` permanecem READY: a chamada de copia foi tipada, mas
os corpos ainda divergem do stock e nao possuem teste direto integral.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT13_FIRMWARE_LIFECYCLE_VALIDATION_20260719.md`.

## Checkpoint Report Dispatch

O grupo de tres callbacks Synaptics usa a assinatura KCFI comprovada
`int (unsigned char, const u8 *, unsigned int, void *)`, com type ID
`0x9f93c40a` em stock e candidato. A comparacao de P-Code/assembly tambem
corrigiu argumentos varargs que nao existiam no binario stock e restaurou os
limites dos logs de copia.

O novo candidato passou duas compilações limpas reproduziveis com o SHA-256
`8e48658fd32194a08d59aa7a9e2dc61526e2952db366727e9af89aac41c8021a`. O harness
offline de `syna_dev_process_unexpected_reset` passou `6/6` em duas execucoes
ASAN/UBSAN; apenas essa microtarefa foi promovida. `syna_cdev_process_reports` e
`syna_dev_process_touch_report` permanecem `READY_FOR_IMPLEMENTATION` ate haver
um teste direto do payload/parser. A comparacao de assembly estrita e
`0/3`, documentando divergencia de corpo recompilado e nao equivalencia.

## Checkpoint Control-Value

O lote adicionou `set_lcd_reset_processing`, `tpd_report_uevent` e
`tpd_reset_gpio_output`. O oraculo KCFI encontrou `void (unsigned char)` para
as tres funcoes, com type ID `0xa2fce979` para o callback GPIO. O novo
`control_value_harness_report.json` passou `7/7` casos em duas execucoes
ASAN/UBSAN, cobrindo offset `tpd_cdev + 0x18`, os quatro valores de uevent e o
caminho de callback nulo.

Depois da correcao de tipagem do marcador KCFI, dois builds limpos produziram
o SHA-256 `2eba92f2f3b95b556b19c336b0369e3150080cf0275889b54d864c497b7678b8`.
A comparacao de assembly estrita permanece `0/3`: `tpd_report_uevent` foi
otimizada pelo compilador para uma tabela de saltos, e o shim local de
`__break` preserva um aviso seguro em vez do breakpoint stock. Esses pontos
continuam abertos para revisão de fidelidade.

## Checkpoint Synaptics Config

O lote atual recuperou no Clang/KCFI a assinatura comum de oito funcoes:

```c
int syna_dev_*(struct syna_tcm *tcm, int value,
               unsigned int delay_ms);
```

O type ID stock e candidato agora e `0x1eb3b73d` para:

- `syna_dev_get_frame_data`;
- `syna_dev_set_charger_mode`;
- `syna_dev_set_display_rotation`;
- `syna_dev_set_follow_hand_level`;
- `syna_dev_set_play_game`;
- `syna_dev_set_sensibility_level`;
- `syna_dev_set_stability_level`;
- `syna_dev_set_tp_report_rate`.

O oraculo compilou `768` candidatos e encontrou quatro grafias equivalentes
por typedef, todas normalizadas para a assinatura acima. P-Code, assembly e
call sites confirmam tres argumentos. A comparacao entre checkpoints detectou
exatamente oito mudancas KCFI, todas `MISMATCH -> MATCH`, sem regressao.

## Checkpoint Synaptics Context

O lote seguinte recuperou uma assinatura comum de contexto para oito funcoes:

```c
int syna_context_fn(struct syna_tcm *tcm);
```

O type ID stock e candidato agora e `0xae20471c` para:

- `syna_dev_connect`;
- `syna_dev_disconnect`;
- `syna_dev_set_up_app_fw`;
- `syna_recovery_game_mode_after_reset`;
- `syna_testing_create_dir`;
- `syna_testing_pt01_zte`;
- `syna_testing_pt05_zte`;
- `syna_testing_pt0a_zte`.

O oraculo compilou 140 candidatos e encontrou uma unica assinatura. O assembly
tambem provou que dois `printk` usam somente formato e nome da funcao; os
argumentos extras inferidos pelo decompilador foram removidos. A comparacao
detectou exatamente oito mudancas KCFI, todas `MISMATCH -> MATCH`, sem regressao.

## Checkpoint Synaptics Void Context

O terceiro lote recuperou a assinatura sem retorno de seis rotinas de contexto:

```c
void syna_void_context_fn(struct syna_tcm *tcm);
```

O type ID stock e candidato agora e `0x3175607e` para:

- `syna_cdev_remove`;
- `syna_dev_free_input_events`;
- `syna_sysfs_remove_dir`;
- `syna_testing_remove_dir`;
- `syna_tpd_register_fw_class`;
- `zte_reset_frame_list`.

O oraculo compilou 140 candidatos e encontrou uma unica assinatura. Retornos
inferidos pelo decompilador foram removidos dos corpos reais; os wrappers
`sub_*` preservam sua ABI decompilada e retornam zero depois da chamada tipada.
O assembly stock tambem eliminou seis argumentos varargs fantasmas em chamadas
`printk`. A comparacao entre checkpoints registrou exatamente seis mudancas
KCFI, todas `MISMATCH -> MATCH`, sem regressao.

## Checkpoint Device PM

O quarto lote recuperou a assinatura comum de cinco rotinas de dispositivo:

```c
int syna_device_fn(struct device *dev);
```

O type ID stock e candidato agora e `0x2a703c0b` para:

- `syna_dev_resume`;
- `syna_dev_suspend`;
- `syna_pm_resume`;
- `syna_pm_suspend`;
- `syna_ts_check_dt`.

O oraculo compilou 140 candidatos e encontrou unicamente
`int (struct device *)`. O assembly confirma acesso a `driver_data` em `+0x98`
e ao `of_node` em `+0x2e8`. As relocacoes stock tambem revelaram uma tabela
`syna_dev_pm_ops` ausente no candidato anterior: ela foi restaurada com
`.suspend`/`.resume` em `+0x10/+0x18`, e `syna_dev_driver + 0xa0` agora aponta
para a tabela. A comparacao KCFI registrou cinco melhorias e zero regressao.

## Checkpoint Validadores de Producao

O quinto lote recuperou a assinatura comum dos validadores de dados e limites:

```c
bool syna_testing_bound_fn(void *data, void *limit, int column, int row);
```

O type ID stock e candidato agora e `0xa33285f2` para:

- `syna_tcm_testing_0100_check_data`;
- `syna_tcm_testing_0500_check_lower_bound`;
- `syna_tcm_testing_0500_check_upper_bound`;
- `syna_tcm_testing_0A00_check_lower_bound`;
- `syna_tcm_testing_0A00_check_upper_bound`.

O oracle compilou 770 candidatos e reduziu o resultado a duas grafias
equivalentes (`int`/`s32`). O callsite indireto stock verifica esse mesmo type
ID antes de `blr` e passa ponteiros, coluna e linha em `x0`, `x1`, `w2` e `w3`.
Os quatro diagnosticos de limite tambem voltaram a encaminhar linha, coluna,
valor e limite ao `printk`, como observado no assembly. A comparacao entre
checkpoints detectou exatamente cinco mudancas KCFI e zero regressao.

## Checkpoint TCM Reset e Delay

O sexto lote recuperou a ABI comum das rotinas de reset e temporizacao:

```c
int syna_tcm_delay_fn(struct tcm_dev *tcm, unsigned int delay_ms);
```

O type ID stock e candidato e `0x627e4777` para `syna_tcm_reset`,
`syna_tcm_rezero`, `syna_tcm_erase_mtp_data` e
`syna_tcm_preserve_touch_report_config`. O overlay de `struct tcm_dev` foi
estendido ate `0x23e8` com os callbacks comprovados em `0x3b0`, `0x23d8` e
`0x23e0`. O harness dedicado passou `10/10` contratos offline.

## Checkpoint TCM CS/MTP

O lote atual recuperou a ABI comum das quatro rotinas de dados de flash:

```c
int syna_tcm_flash_data_fn(struct tcm_dev *tcm, char *data,
                           unsigned int length, unsigned int offset,
                           unsigned int delay_mode);
```

O type ID stock e candidato e `0xdd66a5c9` para:

- `syna_tcm_read_cs_data`;
- `syna_tcm_read_mtp_data`;
- `syna_tcm_update_cs_config`;
- `syna_tcm_update_mtp_data`.

O oraculo compilou `1920` candidatos e encontrou 24 grafias C equivalentes da
mesma assinatura. Ponteiro `const`, retorno `void`, `bool` e comprimentos
assinados foram rejeitados pelo KCFI. A comparacao stock detectou exatamente
essas quatro mudancas; os quatro wrappers auxiliares `sub_*`, ausentes do stock,
tambem receberam a ABI correta. O harness direto passou `9/9` contratos, mas os
caminhos de sucesso de leitura e gravacao da flash permanecem nao exercitados.

## Checkpoint TCM Configuracao Estatica

O lote atual recuperou a ABI comum de tres rotinas de configuracao:

```c
int syna_tcm_static_config_fn(struct tcm_dev *tcm, char *config,
                              unsigned int length,
                              unsigned int delay_ms);
```

O type ID stock e candidato e `0x135bb445` para:

- `syna_tcm_get_static_config`;
- `syna_tcm_set_static_config`;
- `syna_tcm_set_touch_report_config`.

O oraculo compilou `800` candidatos e encontrou 12 grafias equivalentes por
aliases `char`/`u8` e `unsigned int`/`u32`. O assembly revelou uma perda
funcional no candidato anterior: `syna_tcm_set_static_config` chamava
`write_message` sem argumentos. A chamada agora encaminha `tcm`, comando
`0x22`, buffer, comprimento, resposta nula e delay, e restaura o delay padrao
de `tcm + 0x20c`. O harness dedicado passou `20/20` contratos offline.

## Checkpoint TCM Ciclo de Vida

O lote seguinte recuperou a assinatura comum de tres funcoes e do callback
armazenado em `struct tcm_dev + 0x3a0`:

```c
void syna_tcm_lifecycle_fn(struct tcm_dev *tcm);
```

O Type ID stock e candidato e `0x9b7e2760` para:

- `syna_tcm_clear_command_processing`;
- `syna_tcm_remove_device`;
- `syna_tcm_v1_terminate`.

O oraculo compilou `30` candidatos e encontrou somente
`void (struct tcm_dev *)`. A correcao removeu dois argumentos residuais das
entradas, tipou o callback de `0x3a0` e passou um unico contexto ao `blr`. O
harness de ciclo de vida passou `11/11`, cobrindo cleanup e completion.

## Resultados Medidos

- Dois builds completamente limpos produziram o mesmo SHA-256
  `647340ba7ca988b83d3f18f20013bc8c0726e765b0a1da83724aeafba9c84ad8`.
- Imports KMI: `152/152`, sem ausentes ou inesperados.
- Aliases, namespaces, vermagic alvo e arquitetura AArch64 ET_REL: PASS.
- Todos os `359` simbolos de texto stock existem no candidato.
- O candidato possui `151` simbolos de texto adicionais classificados: 131
  subrotinas do decompilador, 9 duplicatas renomeadas, 2 wrappers de assinatura
  e 9 helpers diversos.
- Superficie KCFI integral: `299/322` matches, `23` divergencias, zero registro
  candidato ausente e `46` preambulos stock excluidos para revisao separada.
- Harnesses do Next13: `24/24` casos por repeticao, duas repeticoes ASAN/UBSAN.
- Harness Next14: `10/10` casos por repeticao, duas repeticoes ASAN/UBSAN,
  incluindo `1.024` combinacoes validas por execucao.
- Harness Next15: `10/10` casos por repeticao, duas repeticoes ASAN/UBSAN,
  cobrindo o ciclo request/update/log/release.
- Microtarefas: `155 PASS`, `212 READY`, uma promocao nova no Next15 e zero
  PASS obsoleto.
- Decomposicao: pseudocodigo, P-Code e assembly presentes para `367/367`.
- Suite focal das ferramentas relacionadas: `48/48 PASS`.
- Suite global do pipeline: `136/136 PASS`.
- O hash obsoleto do config userdebug em `environment.lock.json` foi corrigido
  contra o arquivo rastreado e a auditoria de observabilidade voltou a PASS.

## Evidencia Autoritativa

- `../../validation/zte_tpd/driver_audit_static_final.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_dev_config.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_context.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_void_context.json`
- `../../validation/zte_tpd/driver_audit_kcfi_device_pm.json`
- `../../validation/zte_tpd/driver_audit_kcfi_testing_bound.json`
- `../../validation/zte_tpd/driver_audit_kcfi_tcm_delay.json`
- `../../validation/zte_tpd/driver_audit_kcfi_tcm_flash_data.json`
- `../../validation/zte_tpd/driver_audit_kcfi_tcm_static_config.json`
- `../../validation/zte_tpd/driver_audit_kcfi_tcm_lifecycle.json`
- `../../validation/zte_tpd/offline_reconstruction_audit.json`
- `../../validation/zte_tpd/header_layout_probe.json`
- `../../validation/zte_tpd/abi_validation.json`
- `../../validation/zte_tpd/kcfi_direct_surface_final_comparison.json`
- `../../validation/zte_tpd/kcfi_full_surface.json`
- `../../validation/zte_tpd/kcfi_callback_families.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_report_dispatch.json`
- `../../validation/zte_tpd/report_dispatch_harness_report.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_control_value_v2.json`
- `../../validation/zte_tpd/control_value_harness_report.json`
- `../../validation/zte_tpd/assembly_comparison_syna_control_value_final.json`
- `../../validation/zte_tpd/signature_oracles/syna_control_value_kcfi_candidates.json`
- `../../validation/zte_tpd/microtask_progress.json`
- `../../validation/zte_tpd/module_decomposition_audit.json`
- `../../validation/zte_tpd/parity_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_dev_config_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_context_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_void_context_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_device_pm_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_device_pm_relocation_audit.json`
- `../../validation/zte_tpd/signature_oracles/testing_bound_callback_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/tcm_delay_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/tcm_flash_data_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/tcm_static_config_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/tcm_lifecycle_kcfi_report.json`
- `reconstruction_map.json`
- `MICROTASKS.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT15_REFLASH_VALIDATION_20260722.md`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT14_TOUCH_DATA_VALIDATION_20260722.md`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT13_FIRMWARE_LIFECYCLE_VALIDATION_20260719.md`

Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi
executado nesta revisao.
