# Status de Reconstrucao e Validacao do Driver `zte_tpd`

## Estado Atual - 2026-07-18

- **Classificacao do build:** `static_verified`
- **Veredito do protocolo offline:** `INCOMPLETE`
- **Kernel alvo:** Android 16 / GKI 6.12.23 / AArch64
- **Stock SHA-256:** `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- **Candidato SHA-256:** `34877123f6b30268189d3bbaf3e849cc78311941ceb558ce64b5737e425183bd`
- **Candidato:** `19173552` bytes
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
- O8 KCFI da superficie selecionada `167/167`, incluindo as oito familias
  recuperadas `143/143`.

INCOMPLETE:

- O6: `139/367` microtarefas possuem build, KCFI e teste direto atestados;
- O8/O9: a superficie KCFI integral recuperavel esta em `242/322`;
- O10: revisao independente ainda nao foi realizada.

Hardware permanece `DEFERRED`.

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

## Resultados Medidos

- Dois builds completamente limpos produziram o mesmo SHA-256
  `34877123f6b30268189d3bbaf3e849cc78311941ceb558ce64b5737e425183bd`.
- Imports KMI: `152/152`, sem ausentes ou inesperados.
- Aliases, namespaces, vermagic alvo e arquitetura AArch64 ET_REL: PASS.
- Todos os `359` simbolos de texto stock existem no candidato.
- O candidato possui `151` simbolos de texto adicionais classificados: 131
  subrotinas do decompilador, 9 duplicatas renomeadas, 2 wrappers de assinatura
  e 9 helpers diversos.
- Superficie KCFI integral: `242/322` matches, `80` divergencias, zero registro
  candidato ausente e `46` preambulos stock excluidos para revisao separada.
- Dez harnesses host: todos PASS, totalizando 106 casos nominais.
- Microtarefas: `139 PASS`, `228 READY`, tres promocoes novas e zero PASS obsoleto.
- Decomposicao: pseudocodigo, P-Code e assembly presentes para `367/367`.
- Suite focal dos gates afetados: `39/39 PASS`.
- Suite global: `105/106 PASS`; a unica falha e externa a este lote e registra
  divergencia entre o config userdebug e `environment.lock.json`.

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
- `../../validation/zte_tpd/offline_reconstruction_audit.json`
- `../../validation/zte_tpd/header_layout_probe.json`
- `../../validation/zte_tpd/abi_validation.json`
- `../../validation/zte_tpd/kcfi_direct_surface_final_comparison.json`
- `../../validation/zte_tpd/kcfi_full_surface.json`
- `../../validation/zte_tpd/kcfi_callback_families.json`
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
- `reconstruction_map.json`
- `MICROTASKS.json`

Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi
executado nesta revisao.
