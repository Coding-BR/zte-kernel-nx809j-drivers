# Verificação independente dos artefatos promovidos — 2026-09-04

Esta pasta registra uma verificação separada da identidade dos candidatos
curados após a reconsolidação final. O script
`workspace_tools/reconstruction_pipeline/verify_promoted_candidate.py` foi
executado para os 15 módulos usando como entrada somente:

- o relatório final Docker
  `../reconsolidation_20260904_final/driver_audit_all_final.json`;
- o `.ko` atualmente versionado em
  `kernel_development/drivers/reconstructed/<driver>/<driver>.ko`.

Resultado: `15/15 passed`. Para cada módulo foram confirmados o sucesso do
auditor, a reprodutibilidade dos dois ciclos, igualdade de SHA-256 e tamanho
entre os ciclos, e igualdade do `.ko` curado com o segundo ciclo.

Esta verificação confirma a identidade do artefato e não substitui revisão
humana independente da implementação, prova semântica ou validação no NX809J.
Nenhum módulo foi carregado no Android.

Relatórios individuais:

```text
zlog_common.json
zlog_exception.json
zlog_test.json
zte_charger_policy.json
zte_fingerprint.json
zte_imem_info.json
zte_ir.json
zte_led.json
zte_misc.json
zte_power_supply.json
zte_ramdisk_reboot.json
zte_reboot_ext.json
zte_sensor_sensitivity.json
zte_stats_info.json
zte_tpd.json
```

