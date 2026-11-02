# Microtarefas Obrigatórias: zte_misc

Cada linha representa uma única função stock. Nenhuma função pode ser promovida sem mapeamento, compilação, KCFI e teste com hash verificável.

| ID | Função stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_get_sysnumber_byname | get_sysnumber_byname | 00100a54 | core_logic | zte_misc.c:get_sysnumber_byname | PASS |
| 002_zte_poweroff_charging_status | zte_poweroff_charging_status | 00100ac4 | core_logic | zte_misc.c:zte_poweroff_charging_status | PASS |
| 003_zte_misc_register_callback | zte_misc_register_callback | 00100b10 | core_logic | zte_misc.c:zte_misc_register_callback | PASS |
| 004_zte_misc_get_node_val | zte_misc_get_node_val | 00100c5c | core_logic | zte_misc.c:zte_misc_get_node_val | PASS |
| 005_battery_module_pack_vendor_get | battery_module_pack_vendor_get | 00100db0 | core_logic | zte_misc.c:battery_module_pack_vendor_get | PASS |
| 006_zte_misc_get_design_capacity | zte_misc_get_design_capacity | 0010118c | core_logic | zte_misc.c:zte_misc_get_design_capacity | PASS |
| 007_zte_misc_common_callback_set | zte_misc_common_callback_set | 00101280 | core_logic | zte_misc.c:zte_misc_common_callback_set | PASS |
| 008_zte_misc_common_callback_get | zte_misc_common_callback_get | 0010140c | core_logic | zte_misc.c:zte_misc_common_callback_get | PASS |
| 009_zte_misc_probe | zte_misc_probe | 00101598 | binding | zte_misc.c:zte_misc_probe | PASS |
| 010_zte_misc_remove | zte_misc_remove | 0010182c | binding | zte_misc.c:zte_misc_remove | PASS |
| 011_zte_timezone_setup | zte_timezone_setup | 00101834 | core_logic | zte_misc.c:zte_timezone_setup | PASS |
| 012_zte_poweroff_charging_handle | zte_poweroff_charging_handle | 001018a0 | core_logic | zte_misc.c:zte_poweroff_charging_handle | PASS |
| 013_init_module | init_module | 001018fc | lifecycle | zte_misc.c:init_module | PASS |
| 014_cleanup_module | cleanup_module | 00101940 | lifecycle | zte_misc.c:cleanup_module | PASS |

Para cada microtarefa, implemente ou valide somente a função indicada. Use o pseudocódigo e P-Code stock, preserve a ABI/KCFI e anexe evidência hashada de compile, KCFI e teste. Não marque PASS por inspeção visual.
