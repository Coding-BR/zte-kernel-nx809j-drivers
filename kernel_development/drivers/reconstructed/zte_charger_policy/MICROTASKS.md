# Microtarefas Obrigatórias: zte_charger_policy

Cada linha representa uma única função stock. Nenhuma função pode ser promovida sem mapeamento, compilação, KCFI e teste com hash verificável.

| ID | Função stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_charger_policy_status_ide | charger_policy_status_ide | 00100a34 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 002_charger_policy_status_runchging | charger_policy_status_runchging | 00100bc4 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 003_charger_policy_status_rundischging | charger_policy_status_rundischging | 00100e88 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 004_charger_policy_status_forcedischging | charger_policy_status_forcedischging | 00101160 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 005_charger_policy_timeout_alarm_cb | charger_policy_timeout_alarm_cb | 00101208 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 006_charger_policy_demo_sts_set | charger_policy_demo_sts_set | 00101264 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 007_charger_policy_status_disable | charger_policy_status_disable | 00101378 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 008_charger_policy_demo_sts_get | charger_policy_demo_sts_get | 001013c8 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 009_charger_policy_expired_sts_get | charger_policy_expired_sts_get | 0010146c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 010_charger_policy_expired_sec_set | charger_policy_expired_sec_set | 001014f4 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 011_charger_policy_expired_sec_get | charger_policy_expired_sec_get | 0010159c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 012_charger_policy_force_disching_sec_set | charger_policy_force_disching_sec_set | 00101638 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 013_charger_policy_force_disching_sec_get | charger_policy_force_disching_sec_get | 001016e0 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 014_charger_policy_cap_min_set | charger_policy_cap_min_set | 0010177c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 015_charger_policy_cap_min_get | charger_policy_cap_min_get | 00101828 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 016_charger_policy_cap_max_set | charger_policy_cap_max_set | 001018a4 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 017_charger_policy_cap_max_get | charger_policy_cap_max_get | 00101954 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 018_charger_policy_enable_status_set | charger_policy_enable_status_set | 001019d0 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 019_charger_policy_enable_status_get | charger_policy_enable_status_get | 00101a80 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 020_charger_policy_get_status | charger_policy_get_status | 00101b04 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 021_charger_policy_get_prop_by_name | charger_policy_get_prop_by_name | 00101bd8 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 022_charger_policy_disable_cas | charger_policy_disable_cas | 00101cdc | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 023_charger_policy_ctrl_charging_enable | charger_policy_ctrl_charging_enable | 00101e08 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 024_zte_charger_policy_get_prop_by_name | zte_charger_policy_get_prop_by_name | 00102020 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 025_zte_charger_policy_set_prop_by_name | zte_charger_policy_set_prop_by_name | 00102124 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 026_charger_policy_check_soc_reach_min | charger_policy_check_soc_reach_min | 00102224 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 027_charger_policy_probe | charger_policy_probe | 001023ec | binding | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 028_charger_policy_remove | charger_policy_remove | 00102b90 | binding | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 029_charger_policy_probe_work | charger_policy_probe_work | 00102c00 | binding | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 030_charger_policy_timeout_handler_work | charger_policy_timeout_handler_work | 00102f34 | async_or_irq | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 031_charger_policy_check_usb_present | charger_policy_check_usb_present | 00103294 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 032_charger_policy_notifier_switch | charger_policy_notifier_switch | 001034d8 | async_or_irq | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 033_policy_psy_get_property | policy_psy_get_property | 00103564 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 034_policy_psy_set_property | policy_psy_set_property | 00103678 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 035_policy_property_is_writeable | policy_property_is_writeable | 00103758 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 036_policy_external_power_changed | policy_external_power_changed | 0010376c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 037_init_module | init_module | 00103774 | lifecycle | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 038_cleanup_module | cleanup_module | 001037a4 | lifecycle | PENDENTE | WAITING_FOR_SOURCE_MAP |

Para cada microtarefa, implemente ou valide somente a função indicada. Use o pseudocódigo e P-Code stock, preserve a ABI/KCFI e anexe evidência hashada de compile, KCFI e teste. Não marque PASS por inspeção visual.
