# Microtarefas Obrigatorias: fp_goodix

Cada linha representa uma funcao stock com fonte revisado e evidencias de compilacao, KCFI e teste.

| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_gf_ioctl | gf_ioctl | 00100824 | user_abi | fp_goodix_core.c:gf_ioctl | PASS |
| 002_gf_compat_ioctl | gf_compat_ioctl | 00100dc4 | user_abi | fp_goodix_core.c:gf_compat_ioctl | PASS |
| 003_gf_open | gf_open | 00100de8 | user_abi | fp_goodix_core.c:gf_open | PASS |
| 004_gf_release | gf_release | 00100fe8 | user_abi | fp_goodix_core.c:gf_release | PASS |
| 005_gf_disable_irq | gf_disable_irq | 001010d8 | async_or_irq | fp_goodix_core.c:gf_disable_irq | PASS |
| 006_gf_enable_irq | gf_enable_irq | 00101118 | async_or_irq | fp_goodix_core.c:gf_enable_irq | PASS |
| 007_nav_event_input | nav_event_input | 0010116c | core_logic | fp_goodix_core.c:nav_event_input | PASS |
| 008_inline_copy_to_user | _inline_copy_to_user | 0010133c | core_logic | fp_goodix_core.c:gf_ioctl | PASS |
| 009_inline_copy_from_user | _inline_copy_from_user | 001013e8 | core_logic | fp_goodix_core.c:gf_ioctl | PASS |
| 010_gf_irq | gf_irq | 001014d8 | async_or_irq | fp_goodix_core.c:gf_irq | PASS |
| 011_gf_probe | gf_probe | 00101554 | binding | fp_goodix_core.c:gf_probe | PASS |
| 012_gf_remove | gf_remove | 00101968 | binding | fp_goodix_core.c:gf_remove | PASS |
| 013_goodixfp_init_drm_notifier | goodixfp_init_drm_notifier | 00101ac0 | lifecycle | fp_goodix_core.c:goodixfp_init_drm_notifier | PASS |
| 014_list_del | list_del | 00101bf8 | core_logic | fp_goodix_core.c:gf_probe_list_del | PASS |
| 015_goodixfp_drm_get_pannel | goodixfp_drm_get_pannel | 00101c64 | core_logic | fp_goodix_core.c:goodixfp_drm_get_pannel | PASS |
| 016_goodix_fb_state_chg_callback | goodix_fb_state_chg_callback | 00101db8 | core_logic | fp_goodix_core.c:goodix_fb_state_chg_callback | PASS |
| 017_sendnlmsg | sendnlmsg | 00101f1c | core_logic | fp_goodix_netlink.c:sendnlmsg | PASS |
| 018_netlink_init | netlink_init | 0010202c | lifecycle | fp_goodix_netlink.c:netlink_init | PASS |
| 019_nl_data_ready | nl_data_ready | 001020c8 | user_abi | fp_goodix_netlink.c:nl_data_ready | PASS |
| 020_netlink_exit | netlink_exit | 001021a8 | lifecycle | fp_goodix_netlink.c:netlink_exit | PASS |
| 021_zte_goodix_pinctrl_init | zte_goodix_pinctrl_init | 001021ec | lifecycle | fp_goodix_platform.c:zte_goodix_pinctrl_init | PASS |
| 022_zte_goodix_pinctrl_select | zte_goodix_pinctrl_select | 001022c0 | core_logic | fp_goodix_platform.c:zte_goodix_pinctrl_select | PASS |
| 023_gf_parse_dts | gf_parse_dts | 0010237c | core_logic | fp_goodix_platform.c:gf_parse_dts | PASS |
| 024_gf_cleanup | gf_cleanup | 001026bc | core_logic | fp_goodix_platform.c:gf_cleanup | PASS |
| 025_gf_power_on | gf_power_on | 0010276c | core_logic | fp_goodix_platform.c:gf_power_on | PASS |
| 026_gf_power_off | gf_power_off | 00102810 | core_logic | fp_goodix_platform.c:gf_power_off | PASS |
| 027_gf_hw_reset | gf_hw_reset | 001028b4 | core_logic | fp_goodix_platform.c:gf_hw_reset | PASS |
| 028_gf_irq_num | gf_irq_num | 00102970 | async_or_irq | fp_goodix_platform.c:gf_irq_num | PASS |
| 029_init_module | init_module | 001029b0 | lifecycle | fp_goodix_core.c:zte_fp_init | PASS |
| 030_cleanup_module | cleanup_module | 00102ac8 | lifecycle | fp_goodix_core.c:zte_fp_exit | PASS |
