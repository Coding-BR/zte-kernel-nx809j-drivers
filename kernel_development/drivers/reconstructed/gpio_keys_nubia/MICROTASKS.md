# Microtarefas Obrigatórias: gpio_keys_nubia

Cada linha representa uma única função stock. Nenhuma função pode ser promovida sem mapeamento, compilação, KCFI e teste com hash verificável.

| ID | Função stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_gpio_keys_probe | gpio_keys_probe | 0010071c | binding | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 002_gpio_keys_shutdown | gpio_keys_shutdown | 00101530 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 003_gpio_keys_open | gpio_keys_open | 00101578 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 004_gpio_keys_close | gpio_keys_close | 0010163c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 005_gpio_keys_gpio_report_event | gpio_keys_gpio_report_event | 00101684 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 006_gpio_keys_gpio_work_func | gpio_keys_gpio_work_func | 0010181c | async_or_irq | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 007_gpio_keys_gpio_isr | gpio_keys_gpio_isr | 00101878 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 008_gpio_keys_irq_timer | gpio_keys_irq_timer | 00101928 | async_or_irq | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 009_gpio_keys_irq_isr | gpio_keys_irq_isr | 001019b0 | async_or_irq | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 010_gpio_keys_quiesce_key | gpio_keys_quiesce_key | 00101acc | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 011_gpio_keys_suspend | gpio_keys_suspend | 00101b04 | binding | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 012_gpio_keys_show_keys | gpio_keys_show_keys | 00101d18 | user_abi | gpio_keys_nubia.c:gpio_keys_show_keys | READY_FOR_IMPLEMENTATION |
| 013_gpio_keys_attr_show_helper | gpio_keys_attr_show_helper | 00101d44 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 014_gpio_keys_show_switches | gpio_keys_show_switches | 00101e88 | user_abi | gpio_keys_nubia.c:gpio_keys_show_switches | READY_FOR_IMPLEMENTATION |
| 015_gpio_keys_show_disabled_keys | gpio_keys_show_disabled_keys | 00101eb8 | user_abi | gpio_keys_nubia.c:gpio_keys_show_disabled_keys | READY_FOR_IMPLEMENTATION |
| 016_gpio_keys_store_disabled_keys | gpio_keys_store_disabled_keys | 00101ee8 | user_abi | gpio_keys_nubia.c:gpio_keys_store_disabled_keys | READY_FOR_IMPLEMENTATION |
| 017_gpio_keys_attr_store_helper | gpio_keys_attr_store_helper | 00101f24 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 018_gpio_keys_show_disabled_switches | gpio_keys_show_disabled_switches | 00102248 | user_abi | gpio_keys_nubia.c:gpio_keys_show_disabled_switches | READY_FOR_IMPLEMENTATION |
| 019_gpio_keys_store_disabled_switches | gpio_keys_store_disabled_switches | 00102278 | user_abi | gpio_keys_nubia.c:gpio_keys_store_disabled_switches | READY_FOR_IMPLEMENTATION |
| 020_gpio_keys_show_gamekeystatus | gpio_keys_show_GamekeyStatus | 001022b8 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 021_gpio_keys_store_gamekeystatus | gpio_keys_store_GamekeyStatus | 00102388 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 022_gpio_keys_resume | gpio_keys_resume | 001023c0 | binding | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 023_init_module | init_module | 001025f4 | lifecycle | gpio_keys_nubia.c:gpio_keys_init | READY_FOR_IMPLEMENTATION |
| 024_cleanup_module | cleanup_module | 00102624 | lifecycle | gpio_keys_nubia.c:gpio_keys_exit | READY_FOR_IMPLEMENTATION |

Para cada microtarefa, implemente ou valide somente a função indicada. Use o pseudocódigo e P-Code stock, preserve a ABI/KCFI e anexe evidência hashada de compile, KCFI e teste. Não marque PASS por inspeção visual.
