# Microtarefas Obrigatórias: nubia_hw_version

Cada linha representa uma única função stock. Nenhuma função pode ser promovida sem mapeamento, compilação, KCFI e teste com hash verificável.

| ID | Função stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_nubia_gpio_ctrl1 | nubia_gpio_ctrl1 | 001005a4 | core_logic | nubia_hw_version.c:nubia_gpio_ctrl1 | MAPPED_NOT_EXACT |
| 002_nubia_gpio_ctrl | nubia_gpio_ctrl | 00100604 | core_logic | nubia_hw_version.c:nubia_gpio_ctrl | MAPPED_NOT_EXACT |
| 003_nubia_get_pcb_table_item_by_gpio | nubia_get_pcb_table_item_by_gpio | 00100728 | core_logic | nubia_hw_version.c:nubia_get_pcb_table_item_by_gpio | MAPPED_NOT_EXACT |
| 004_nubia_get_hw_id | nubia_get_hw_id | 00100784 | core_logic | nubia_hw_version.c:nubia_get_hw_id | MAPPED_NOT_EXACT |
| 005_nubia_get_hw_pcb_version | nubia_get_hw_pcb_version | 00100858 | core_logic | nubia_hw_version.c:nubia_get_hw_pcb_version | MAPPED_NOT_EXACT |
| 006_charger_100w | charger_100W | 00100978 | core_logic | nubia_hw_version.c:charger_100W | MAPPED_NOT_EXACT |
| 007_charger_80w | charger_80W | 00100990 | core_logic | nubia_hw_version.c:charger_80W | MAPPED_NOT_EXACT |
| 008_nubia_get_rf_band_by_gpio | nubia_get_rf_band_by_gpio | 001009a8 | core_logic | nubia_hw_version.c:nubia_get_rf_band_by_gpio | MAPPED_NOT_EXACT |
| 009_nubia_hw_ver_probe | nubia_hw_ver_probe | 00100a14 | binding | nubia_hw_version.c:nubia_hw_ver_probe | MAPPED_NOT_EXACT |
| 010_nubia_hw_ver_remove | nubia_hw_ver_remove | 00101008 | binding | nubia_hw_version.c:nubia_hw_ver_remove | MAPPED_NOT_EXACT |
| 011_nubia_get_gpio_status | nubia_get_gpio_status | 0010104c | core_logic | nubia_hw_version.c:nubia_get_gpio_status | MAPPED_NOT_EXACT |
| 012_debug_value_show | debug_value_show | 001010c0 | user_abi | nubia_hw_version.c:debug_value_show | MAPPED_NOT_EXACT |
| 013_debug_value_store | debug_value_store | 001010fc | user_abi | nubia_hw_version.c:debug_value_store | MAPPED_NOT_EXACT |
| 014_nubia_hw_pcb_version_show | nubia_hw_pcb_version_show | 00101140 | user_abi | nubia_hw_version.c:nubia_hw_pcb_version_show | MAPPED_NOT_EXACT |
| 015_nubia_hw_rf_band_show | nubia_hw_rf_band_show | 001011bc | user_abi | nubia_hw_version.c:nubia_hw_rf_band_show | MAPPED_NOT_EXACT |
| 016_nubia_charge_version_show | nubia_charge_version_show | 001012b4 | user_abi | nubia_hw_version.c:nubia_charge_version_show | MAPPED_NOT_EXACT |
| 017_hml_config_version_show | hml_config_version_show | 00101350 | user_abi | nubia_hw_version.c:hml_config_version_show | MAPPED_NOT_EXACT |
| 018_init_module | init_module | 001013f4 | lifecycle | nubia_hw_version.c:nubia_hw_version_init | MAPPED_NOT_EXACT |
| 019_cleanup_module | cleanup_module | 001014d0 | lifecycle | nubia_hw_version.c:nubia_hw_version_exit | MAPPED_NOT_EXACT |

Para cada microtarefa, implemente ou valide somente a função indicada. Use o pseudocódigo e P-Code stock, preserve a ABI/KCFI e anexe evidência hashada de compile, KCFI e teste. Não marque PASS por inspeção visual.
