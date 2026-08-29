# Microtarefas Obrigatorias: gpio_keys_nubia

Cada linha representa uma unica funcao stock. Nenhuma funcao pode ser promovida sem mapeamento, compilacao, KCFI, Joern e teste com hash verificavel.

| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_gpio_keys_probe | gpio_keys_probe | 0010071c | binding | gpio_keys_probe_exact.S:gpio_keys_probe | PASS |
| 002_gpio_keys_shutdown | gpio_keys_shutdown | 00101530 | core_logic | gpio_keys_shutdown_exact.S:gpio_keys_shutdown | PASS |
| 003_gpio_keys_open | gpio_keys_open | 00101578 | user_abi | gpio_keys_open_exact.S:gpio_keys_open | PASS |
| 004_gpio_keys_close | gpio_keys_close | 0010163c | core_logic | gpio_keys_close_exact.S:gpio_keys_close | PASS |
| 005_gpio_keys_gpio_report_event | gpio_keys_gpio_report_event | 00101684 | core_logic | gpio_keys_gpio_report_event_exact.S:gpio_keys_gpio_report_event | PASS |
| 006_gpio_keys_gpio_work_func | gpio_keys_gpio_work_func | 0010181c | async_or_irq | gpio_keys_gpio_work_func_exact.S:gpio_keys_gpio_work_func | PASS |
| 007_gpio_keys_gpio_isr | gpio_keys_gpio_isr | 00101878 | core_logic | gpio_keys_gpio_isr_exact.S:gpio_keys_gpio_isr | PASS |
| 008_gpio_keys_irq_timer | gpio_keys_irq_timer | 00101928 | async_or_irq | gpio_keys_irq_timer_exact.S:gpio_keys_irq_timer | PASS |
| 009_gpio_keys_irq_isr | gpio_keys_irq_isr | 001019b0 | async_or_irq | gpio_keys_irq_isr_exact.S:gpio_keys_irq_isr | PASS |
| 010_gpio_keys_quiesce_key | gpio_keys_quiesce_key | 00101acc | core_logic | gpio_keys_quiesce_key_exact.S:gpio_keys_quiesce_key | PASS |
| 011_gpio_keys_suspend | gpio_keys_suspend | 00101b04 | binding | gpio_keys_suspend_exact.S:gpio_keys_suspend | PASS |
| 012_gpio_keys_show_keys | gpio_keys_show_keys | 00101d18 | user_abi | gpio_keys_show_keys_exact.S:gpio_keys_show_keys | PASS |
| 013_gpio_keys_attr_show_helper | gpio_keys_attr_show_helper | 00101d44 | user_abi | gpio_keys_attr_show_helper_exact.S:gpio_keys_attr_show_helper | PASS |
| 014_gpio_keys_show_switches | gpio_keys_show_switches | 00101e88 | user_abi | gpio_keys_show_switches_exact.S:gpio_keys_show_switches | PASS |
| 015_gpio_keys_show_disabled_keys | gpio_keys_show_disabled_keys | 00101eb8 | user_abi | gpio_keys_show_disabled_keys_exact.S:gpio_keys_show_disabled_keys | PASS |
| 016_gpio_keys_store_disabled_keys | gpio_keys_store_disabled_keys | 00101ee8 | user_abi | gpio_keys_store_disabled_keys_exact.S:gpio_keys_store_disabled_keys | PASS |
| 017_gpio_keys_attr_store_helper | gpio_keys_attr_store_helper | 00101f24 | user_abi | gpio_keys_nubia.c:gpio_keys_attr_store_helper | PASS |
| 018_gpio_keys_show_disabled_switches | gpio_keys_show_disabled_switches | 00102248 | user_abi | gpio_keys_nubia.c:gpio_keys_show_disabled_switches | PASS |
| 019_gpio_keys_store_disabled_switches | gpio_keys_store_disabled_switches | 00102278 | user_abi | gpio_keys_nubia.c:gpio_keys_store_disabled_switches | PASS |
| 020_gpio_keys_show_gamekeystatus | gpio_keys_show_GamekeyStatus | 001022b8 | user_abi | gpio_keys_nubia.c:gpio_keys_show_GamekeyStatus | PASS |
| 021_gpio_keys_store_gamekeystatus | gpio_keys_store_GamekeyStatus | 00102388 | user_abi | gpio_keys_nubia.c:gpio_keys_store_GamekeyStatus | PASS |
| 022_gpio_keys_resume | gpio_keys_resume | 001023c0 | binding | gpio_keys_nubia.c:gpio_keys_resume | PASS |
| 023_init_module | init_module | 001025f4 | lifecycle | gpio_keys_nubia.c:gpio_keys_init | PASS |
| 024_cleanup_module | cleanup_module | 00102624 | lifecycle | gpio_keys_nubia.c:gpio_keys_exit | PASS |

O estado exibido e gerado do mesmo manifesto JSON pelo atestador. PASS exige as evidencias declaradas no manifesto, incluindo Joern para novas microtarefas.
