# Microtarefas Obrigatórias: zte_fingerprint

Cada linha representa uma única função stock. Nenhuma função pode ser promovida sem mapeamento, compilação, KCFI e teste com hash verificável.

| ID | Função stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_gf_ioctl | gf_ioctl | 00100824 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 002_gf_compat_ioctl | gf_compat_ioctl | 00100dc4 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 003_gf_open | gf_open | 00100de8 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 004_gf_release | gf_release | 00100fe8 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 005_gf_disable_irq | gf_disable_irq | 001010d8 | async_or_irq | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 006_gf_enable_irq | gf_enable_irq | 00101118 | async_or_irq | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 007_nav_event_input | nav_event_input | 0010116c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 008_inline_copy_to_user | _inline_copy_to_user | 0010133c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 009_inline_copy_from_user | _inline_copy_from_user | 001013e8 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 010_gf_irq | gf_irq | 001014d8 | async_or_irq | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 011_gf_probe | gf_probe | 00101554 | binding | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 012_gf_remove | gf_remove | 00101968 | binding | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 013_goodixfp_init_drm_notifier | goodixfp_init_drm_notifier | 00101ac0 | lifecycle | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 014_list_del | list_del | 00101bf8 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 015_goodixfp_drm_get_pannel | goodixfp_drm_get_pannel | 00101c64 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 016_goodix_fb_state_chg_callback | goodix_fb_state_chg_callback | 00101db8 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 017_sendnlmsg | sendnlmsg | 00101f1c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 018_netlink_init | netlink_init | 0010202c | lifecycle | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 019_nl_data_ready | nl_data_ready | 001020c8 | user_abi | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 020_netlink_exit | netlink_exit | 001021a8 | lifecycle | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 021_zte_goodix_pinctrl_init | zte_goodix_pinctrl_init | 001021ec | lifecycle | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 022_zte_goodix_pinctrl_select | zte_goodix_pinctrl_select | 001022c0 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 023_gf_parse_dts | gf_parse_dts | 0010237c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 024_gf_cleanup | gf_cleanup | 001026bc | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 025_gf_power_on | gf_power_on | 0010276c | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 026_gf_power_off | gf_power_off | 00102810 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 027_gf_hw_reset | gf_hw_reset | 001028b4 | core_logic | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 028_gf_irq_num | gf_irq_num | 00102970 | async_or_irq | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 029_init_module | init_module | 001029b0 | lifecycle | PENDENTE | WAITING_FOR_SOURCE_MAP |
| 030_cleanup_module | cleanup_module | 00102ac8 | lifecycle | PENDENTE | WAITING_FOR_SOURCE_MAP |

Para cada microtarefa, implemente ou valide somente a função indicada. Use o pseudocódigo e P-Code stock, preserve a ABI/KCFI e anexe evidência hashada de compile, KCFI e teste. Não marque PASS por inspeção visual.
