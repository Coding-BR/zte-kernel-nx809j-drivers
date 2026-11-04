# Inventário atual de reconstrução — 2026-11-04

Este retrato foi gerado do checkout `715a0266080ac683af424565a06ad62935d58bc7` da branch `codex/zlog-common-lifetime-hardening` e do snapshot curado em `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated`.

## Resultado

- 24 drivers têm candidato `.ko`, módulo stock e inventário Ghidra; o mapa cobre 1.039 identidades de função.
- Isso não significa que os 24 drivers estejam concluídos. Nove árvores têm funções em revisão, hardening candidato, desvio intencional ou validação estática pendente: `fp_goodix`, `gpio_keys_nubia`, `haptic_86938`, `soc_fan`, `zlog_common`, `zte_charger_policy`, `zte_misc`, `zte_power_supply` e `zte_tpd`.
- No `gpio_keys_nubia`, 23 funções constam como `PROMOTED_OFFLINE_EXACT` e uma como `reviewed`; o driver continua `STAGE5_STATIC_PARTIAL`.
- Os candidatos `.ko` do Docker coincidem com os do repositório em 24/24 alvos. Os inputs de build coincidem em 17/24; há divergências em `fp_goodix`, `rdbg`, `soc_fan`, `zte_charger_policy`, `zte_reboot_ext`, `zte_sensor_sensitivity` e `zte_tpd`.
- Os mapas coincidem em 22/24; `aw9620x` e `zte_tpd` precisam de sincronização do mapa no snapshot Docker.
- `adb devices -l` não listou aparelho conectado durante esta auditoria. A validação dinâmica no smartphone ainda não começou.

O inventário é de escopo e rastreabilidade. Status por função, build Docker, equivalência semântica, revisão independente e teste de hardware são gates distintos. Consulte `inventory.md` e `inventory.json` para a tabela completa e os hashes dos candidatos.

## Artefatos e vínculo

- JSON SHA-256: `D72534FBEA8B978AF796D7E3F45253FBA34A75C566DE2888AE68FDFEF32E8A0C`
- Markdown SHA-256: `A5E1B7DB0F46D56412AF698A268B49CBEE5008D4B845CDE50790F6A39AA99563`
- Script: `workspace_tools/reconstruction_pipeline/audit_reconstructed_driver_inventory.py`
- Esta auditoria não alterou fontes nem módulos e não executou build ou teste em hardware.
