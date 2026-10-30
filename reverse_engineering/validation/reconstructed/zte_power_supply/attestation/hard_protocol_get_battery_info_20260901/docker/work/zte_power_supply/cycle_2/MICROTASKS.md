# Microtarefas Obrigatorias: zte_power_supply

Cada linha representa uma funcao stock com fonte revisado e evidencias de compilacao, KCFI e teste.

| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_zte_power_supply_changed | zte_power_supply_changed | 00101234 | core_logic | zte_power_supply.c:zte_power_supply_changed | PASS |
| 002_zte_power_supply_set_battery_charged | zte_power_supply_set_battery_charged | 00101298 | core_logic | zte_power_supply.c:zte_power_supply_set_battery_charged | PASS |
| 003_zte_power_supply_get_by_name | zte_power_supply_get_by_name | 001012fc | core_logic | zte_power_supply.c:zte_power_supply_get_by_name | PASS |
| 004_zte_power_supply_match_device_by_name | zte_power_supply_match_device_by_name | 0010136c | core_logic | zte_power_supply.c:zte_power_supply_match_device_by_name | PASS |
| 005_zte_power_supply_put | zte_power_supply_put | 001013a0 | core_logic | zte_power_supply.c:zte_power_supply_put | PASS |
| 006_zte_power_supply_get_by_phandle | zte_power_supply_get_by_phandle | 001013f4 | core_logic | zte_power_supply.c:zte_power_supply_get_by_phandle | PASS |
| 007_zte_power_supply_match_device_node | zte_power_supply_match_device_node | 001014c4 | core_logic | zte_power_supply.c:zte_power_supply_match_device_node | PASS |
| 008_zte_power_supply_get_by_phandle_array | zte_power_supply_get_by_phandle_array | 001014e8 | core_logic | zte_power_supply.c:zte_power_supply_get_by_phandle_array | PASS |
| 009_zte_power_supply_match_device_node_array | zte_power_supply_match_device_node_array | 001015b8 | core_logic | zte_power_supply.c:zte_power_supply_match_device_node_array | PASS |
| 010_zte_devm_power_supply_get_by_phandle | zte_devm_power_supply_get_by_phandle | 00101644 | core_logic | zte_power_supply.c:zte_devm_power_supply_get_by_phandle | PASS |
| 011_zte_devm_power_supply_put | zte_devm_power_supply_put | 001017a4 | core_logic | zte_power_supply.c:zte_devm_power_supply_put | PASS |
| 012_zte_power_supply_get_battery_info | zte_power_supply_get_battery_info | 001017fc | core_logic | zte_power_supply.c:zte_power_supply_get_battery_info | PASS |
| 013_zte_power_supply_put_battery_info | zte_power_supply_put_battery_info | 00101e34 | core_logic | zte_power_supply.c:zte_power_supply_put_battery_info | PASS |
| 014_zte_power_supply_temp2resist_simple | zte_power_supply_temp2resist_simple | 00101ea4 | core_logic | zte_power_supply.c:zte_power_supply_temp2resist_simple | PASS |
| 015_zte_power_supply_ocv2cap_simple | zte_power_supply_ocv2cap_simple | 00101f10 | core_logic | zte_power_supply.c:zte_power_supply_ocv2cap_simple | PASS |
| 016_zte_power_supply_find_ocv2cap_table | zte_power_supply_find_ocv2cap_table | 00101f7c | core_logic | zte_power_supply.c:zte_power_supply_find_ocv2cap_table | PASS |
| 017_zte_power_supply_batinfo_ocv2cap | zte_power_supply_batinfo_ocv2cap | 00101ff0 | core_logic | zte_power_supply.c:zte_power_supply_batinfo_ocv2cap | PASS |
| 018_zte_power_supply_get_property | zte_power_supply_get_property | 001020c4 | core_logic | zte_power_supply.c:zte_power_supply_get_property | PASS |
| 019_zte_power_supply_set_property | zte_power_supply_set_property | 00102128 | core_logic | zte_power_supply.c:zte_power_supply_set_property | PASS |
| 020_zte_power_supply_property_is_writeable | zte_power_supply_property_is_writeable | 00102180 | user_abi | zte_power_supply.c:zte_power_supply_property_is_writeable | PASS |
| 021_zte_power_supply_external_power_changed | zte_power_supply_external_power_changed | 001021d8 | core_logic | zte_power_supply.c:zte_power_supply_external_power_changed | PASS |
| 022_zte_power_supply_powers | zte_power_supply_powers | 00102228 | core_logic | zte_power_supply.c:zte_power_supply_powers | PASS |
| 023_zte_power_supply_reg_notifier | zte_power_supply_reg_notifier | 00102254 | async_or_irq | zte_power_supply.c:zte_power_supply_reg_notifier | PASS |
| 024_zte_power_supply_unreg_notifier | zte_power_supply_unreg_notifier | 00102280 | async_or_irq | zte_power_supply.c:zte_power_supply_unreg_notifier | PASS |
| 025_zte_power_supply_register | zte_power_supply_register | 001022ac | core_logic | zte_power_supply.c:zte_power_supply_register | PASS |
| 026_zte_power_supply_register | __zte_power_supply_register | 001022cc | core_logic | zte_power_supply.c:__zte_power_supply_register | PASS |
| 027_zte_power_supply_register_no_ws | zte_power_supply_register_no_ws | 001025c4 | core_logic | zte_power_supply.c:zte_power_supply_register_no_ws | PASS |
| 028_zte_devm_power_supply_register | zte_devm_power_supply_register | 001025e8 | core_logic | zte_power_supply.c:zte_devm_power_supply_register | PASS |
| 029_zte_devm_power_supply_release | zte_devm_power_supply_release | 00102690 | user_abi | zte_power_supply.c:zte_devm_power_supply_release | PASS |
| 030_zte_devm_power_supply_register_no_ws | zte_devm_power_supply_register_no_ws | 001026b4 | core_logic | zte_power_supply.c:zte_devm_power_supply_register_no_ws | PASS |
| 031_zte_power_supply_unregister | zte_power_supply_unregister | 0010275c | core_logic | zte_power_supply.c:zte_power_supply_unregister | PASS |
| 032_device_init_wakeup | device_init_wakeup | 00102808 | lifecycle | zte_power_supply.c:__zte_power_supply_register | PASS |
| 033_zte_power_supply_get_drvdata | zte_power_supply_get_drvdata | 0010285c | core_logic | zte_power_supply.c:zte_power_supply_get_drvdata | PASS |
| 034_zte_power_supply_dev_release | zte_power_supply_dev_release | 00102868 | user_abi | zte_power_supply.c:zte_power_supply_dev_release | PASS |
| 035_zte_power_supply_changed_work | zte_power_supply_changed_work | 0010288c | async_or_irq | zte_power_supply.c:zte_power_supply_changed_work | PASS |
| 036_zte_power_supply_deferred_register_work | zte_power_supply_deferred_register_work | 0010294c | async_or_irq | zte_power_supply.c:zte_power_supply_deferred_register_work | PASS |
| 037_zte_power_supply_check_supplies | zte_power_supply_check_supplies | 001029f4 | core_logic | zte_power_supply.c:zte_power_supply_check_supplies | PASS |
| 038_zte_power_supply_changed_work | __zte_power_supply_changed_work | 00102ba4 | async_or_irq | zte_power_supply.c:__zte_power_supply_changed_work | PASS |
| 039_zte_power_supply_find_supply_from_node | __zte_power_supply_find_supply_from_node | 00102c9c | core_logic | zte_power_supply.c:__zte_power_supply_find_supply_from_node | PASS |
| 040_zte_power_supply_populate_supplied_from | __zte_power_supply_populate_supplied_from | 00102cb4 | core_logic | zte_power_supply.c:__zte_power_supply_populate_supplied_from | PASS |
| 041_zte_power_supply_init_attrs | zte_power_supply_init_attrs | 00102dac | lifecycle | zte_power_supply.c:zte_power_supply_init_attrs | PASS |
| 042_zte_power_supply_show_property | zte_power_supply_show_property | 00102ef0 | user_abi | zte_power_supply.c:zte_power_supply_show_property | PASS |
| 043_zte_power_supply_store_property | zte_power_supply_store_property | 0010305c | user_abi | zte_power_supply.c:zte_power_supply_store_property | PASS |
| 044_zte_power_supply_uevent | zte_power_supply_uevent | 0010314c | core_logic | zte_power_supply.c:zte_power_supply_uevent | PASS |
| 045_power_supply_attr_is_visible | power_supply_attr_is_visible | 001032dc | core_logic | zte_power_supply.c:power_supply_attr_is_visible | PASS |
| 046_init_module | init_module | 001033e8 | lifecycle | zte_power_supply.c:zte_power_supply_init | PASS |
| 047_cleanup_module | cleanup_module | 0010343c | lifecycle | zte_power_supply.c:zte_power_supply_exit | PASS |
