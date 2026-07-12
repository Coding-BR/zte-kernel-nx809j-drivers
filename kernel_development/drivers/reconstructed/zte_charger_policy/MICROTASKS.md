# Microtarefas Obrigatorias: zte_charger_policy

Cada linha representa uma funcao stock com fonte revisado e evidencias de compilacao, KCFI e teste.

| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_charger_policy_status_ide | charger_policy_status_ide | 00100a34 | core_logic | zte_charger_policy.c:charger_policy_status_ide | PASS |
| 002_charger_policy_status_runchging | charger_policy_status_runchging | 00100bc4 | core_logic | zte_charger_policy.c:charger_policy_status_runchging | PASS |
| 003_charger_policy_status_rundischging | charger_policy_status_rundischging | 00100e88 | core_logic | zte_charger_policy.c:charger_policy_status_rundischging | PASS |
| 004_charger_policy_status_forcedischging | charger_policy_status_forcedischging | 00101160 | core_logic | zte_charger_policy.c:charger_policy_status_forcedischging | PASS |
| 005_charger_policy_timeout_alarm_cb | charger_policy_timeout_alarm_cb | 00101208 | core_logic | zte_charger_policy.c:charger_policy_timeout_alarm_cb | PASS |
| 006_charger_policy_demo_sts_set | charger_policy_demo_sts_set | 00101264 | core_logic | zte_charger_policy.c:charger_policy_demo_sts_set | PASS |
| 007_charger_policy_status_disable | charger_policy_status_disable | 00101378 | core_logic | zte_charger_policy.c:charger_policy_status_disable | PASS |
| 008_charger_policy_demo_sts_get | charger_policy_demo_sts_get | 001013c8 | core_logic | zte_charger_policy.c:charger_policy_demo_sts_get | PASS |
| 009_charger_policy_expired_sts_get | charger_policy_expired_sts_get | 0010146c | core_logic | zte_charger_policy.c:charger_policy_expired_sts_get | PASS |
| 010_charger_policy_expired_sec_set | charger_policy_expired_sec_set | 001014f4 | core_logic | zte_charger_policy.c:charger_policy_expired_sec_set | PASS |
| 011_charger_policy_expired_sec_get | charger_policy_expired_sec_get | 0010159c | core_logic | zte_charger_policy.c:charger_policy_expired_sec_get | PASS |
| 012_charger_policy_force_disching_sec_set | charger_policy_force_disching_sec_set | 00101638 | core_logic | zte_charger_policy.c:charger_policy_force_disching_sec_set | PASS |
| 013_charger_policy_force_disching_sec_get | charger_policy_force_disching_sec_get | 001016e0 | core_logic | zte_charger_policy.c:charger_policy_force_disching_sec_get | PASS |
| 014_charger_policy_cap_min_set | charger_policy_cap_min_set | 0010177c | core_logic | zte_charger_policy.c:charger_policy_cap_min_set | PASS |
| 015_charger_policy_cap_min_get | charger_policy_cap_min_get | 00101828 | core_logic | zte_charger_policy.c:charger_policy_cap_min_get | PASS |
| 016_charger_policy_cap_max_set | charger_policy_cap_max_set | 001018a4 | core_logic | zte_charger_policy.c:charger_policy_cap_max_set | PASS |
| 017_charger_policy_cap_max_get | charger_policy_cap_max_get | 00101954 | core_logic | zte_charger_policy.c:charger_policy_cap_max_get | PASS |
| 018_charger_policy_enable_status_set | charger_policy_enable_status_set | 001019d0 | core_logic | zte_charger_policy.c:charger_policy_enable_status_set | PASS |
| 019_charger_policy_enable_status_get | charger_policy_enable_status_get | 00101a80 | core_logic | zte_charger_policy.c:charger_policy_enable_status_get | PASS |
| 020_charger_policy_get_status | charger_policy_get_status | 00101b04 | core_logic | zte_charger_policy.c:charger_policy_get_status | PASS |
| 021_charger_policy_get_prop_by_name | charger_policy_get_prop_by_name | 00101bd8 | core_logic | zte_charger_policy.c:charger_policy_get_prop_by_name | PASS |
| 022_charger_policy_disable_cas | charger_policy_disable_cas | 00101cdc | core_logic | zte_charger_policy.c:charger_policy_disable_cas | PASS |
| 023_charger_policy_ctrl_charging_enable | charger_policy_ctrl_charging_enable | 00101e08 | core_logic | zte_charger_policy.c:charger_policy_ctrl_charging_enable | PASS |
| 024_zte_charger_policy_get_prop_by_name | zte_charger_policy_get_prop_by_name | 00102020 | core_logic | zte_charger_policy.c:zte_charger_policy_get_prop_by_name | PASS |
| 025_zte_charger_policy_set_prop_by_name | zte_charger_policy_set_prop_by_name | 00102124 | core_logic | zte_charger_policy.c:zte_charger_policy_set_prop_by_name | PASS |
| 026_charger_policy_check_soc_reach_min | charger_policy_check_soc_reach_min | 00102224 | core_logic | zte_charger_policy.c:charger_policy_check_soc_reach_min | PASS |
| 027_charger_policy_probe | charger_policy_probe | 001023ec | binding | zte_charger_policy.c:charger_policy_probe | PASS |
| 028_charger_policy_remove | charger_policy_remove | 00102b90 | binding | zte_charger_policy.c:charger_policy_remove | PASS |
| 029_charger_policy_probe_work | charger_policy_probe_work | 00102c00 | binding | zte_charger_policy.c:charger_policy_probe_work | PASS |
| 030_charger_policy_timeout_handler_work | charger_policy_timeout_handler_work | 00102f34 | async_or_irq | zte_charger_policy.c:charger_policy_timeout_handler_work | PASS |
| 031_charger_policy_check_usb_present | charger_policy_check_usb_present | 00103294 | core_logic | zte_charger_policy.c:charger_policy_check_usb_present | PASS |
| 032_charger_policy_notifier_switch | charger_policy_notifier_switch | 001034d8 | async_or_irq | zte_charger_policy.c:charger_policy_notifier_switch | PASS |
| 033_policy_psy_get_property | policy_psy_get_property | 00103564 | core_logic | zte_charger_policy.c:policy_psy_get_property | PASS |
| 034_policy_psy_set_property | policy_psy_set_property | 00103678 | core_logic | zte_charger_policy.c:policy_psy_set_property | PASS |
| 035_policy_property_is_writeable | policy_property_is_writeable | 00103758 | user_abi | zte_charger_policy.c:policy_property_is_writeable | PASS |
| 036_policy_external_power_changed | policy_external_power_changed | 0010376c | core_logic | zte_charger_policy.c:policy_external_power_changed | PASS |
| 037_init_module | init_module | 00103774 | lifecycle | zte_charger_policy.c:init_module | PASS |
| 038_cleanup_module | cleanup_module | 001037a4 | lifecycle | zte_charger_policy.c:cleanup_module | PASS |
