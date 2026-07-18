# Status de Reconstrucao e Validacao do Driver `zte_tpd`

## Estado Atual - 2026-07-18

- **Classificacao do build:** `static_verified`
- **Veredito do protocolo offline:** `INCOMPLETE`
- **Kernel alvo:** Android 16 / GKI 6.12.23 / AArch64
- **Stock SHA-256:** `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- **Candidato SHA-256:** `d61b2892ad748d3c91b31b88c5363aca70699d51ed99a6441561e0107122da18`
- **Candidato:** `19146232` bytes
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
- O8 KCFI da superficie selecionada `151/151`, incluindo as oito familias
  anteriores `143/143`.

INCOMPLETE:

- O6: `123/367` microtarefas possuem build, KCFI e teste direto atestados;
- O8/O9: a superficie KCFI integral recuperavel esta em `226/322`;
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

## Resultados Medidos

- Dois builds completamente limpos produziram o mesmo SHA-256
  `d61b2892ad748d3c91b31b88c5363aca70699d51ed99a6441561e0107122da18`.
- Imports KMI: `152/152`, sem ausentes ou inesperados.
- Aliases, namespaces, vermagic alvo e arquitetura AArch64 ET_REL: PASS.
- Todos os `359` simbolos de texto stock existem no candidato.
- O candidato possui `151` simbolos de texto adicionais classificados: 131
  subrotinas do decompilador, 9 duplicatas renomeadas, 2 wrappers de assinatura
  e 9 helpers diversos.
- Superficie KCFI integral: `226/322` matches, `96` divergencias, zero registro
  candidato ausente e `46` preambulos stock excluidos para revisao separada.
- Sete harnesses ASAN/UBSAN: todos PASS, totalizando 60 casos nominais.
- Microtarefas: `123 PASS`, `244 READY`, zero promocao nova e zero PASS obsoleto.
- Decomposicao: pseudocodigo, P-Code e assembly presentes para `367/367`.
- Suite focal dos validadores: `28/28 PASS`.
- Suite global: `105/106 PASS`; a unica falha e externa a este lote e registra
  divergencia entre o config userdebug e `environment.lock.json`.

## Evidencia Autoritativa

- `../../validation/zte_tpd/driver_audit_static_final.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_dev_config.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_context.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_void_context.json`
- `../../validation/zte_tpd/driver_audit_kcfi_device_pm.json`
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
- `reconstruction_map.json`
- `MICROTASKS.json`

Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi
executado nesta revisao.
