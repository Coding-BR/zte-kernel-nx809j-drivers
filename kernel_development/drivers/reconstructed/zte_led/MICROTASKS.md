# Microtarefas Obrigatorias: zte_led

Cada linha representa uma funcao stock com fonte revisado e evidencias de compilacao, KCFI e teste.

| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_aw22xxx_set_breath_data | aw22xxx_set_breath_data | 001014e4 | core_logic | zte_led.c:aw22xxx_set_breath_data | PASS |
| 002_aw22xxx_play | aw22xxx_play | 001015f4 | core_logic | zte_led.c:aw22xxx_play | PASS |
| 003_aw22xxx_init_cfg_update_array | aw22xxx_init_cfg_update_array | 00101738 | lifecycle | zte_led.c:aw22xxx_init_cfg_update_array | PASS |
| 004_aw22xxx_led_imax_cfg | aw22xxx_led_imax_cfg | 0010188c | core_logic | zte_led.c:aw22xxx_led_imax_cfg | PASS |
| 005_aw22xxx_i2c_write | aw22xxx_i2c_write | 001018fc | user_abi | zte_led.c:aw22xxx_i2c_write | PASS |
| 006_aw22xxx_i2c_read | aw22xxx_i2c_read | 00101a2c | user_abi | zte_led.c:aw22xxx_i2c_read | PASS |
| 007_aw22xxx_i2c_probe | aw22xxx_i2c_probe | 00101b68 | binding | zte_led.c:aw22xxx_i2c_probe | PASS |
| 008_aw22xxx_i2c_remove | aw22xxx_i2c_remove | 00102204 | binding | zte_led.c:aw22xxx_i2c_remove | PASS |
| 009_aw22xxx_hw_reset | aw22xxx_hw_reset | 001022c8 | core_logic | zte_led.c:aw22xxx_hw_reset | PASS |
| 010_aw22xxx_read_chipid | aw22xxx_read_chipid | 00102364 | user_abi | zte_led.c:aw22xxx_read_chipid | PASS |
| 011_aw22xxx_interrupt_setup | aw22xxx_interrupt_setup | 00102530 | core_logic | zte_led.c:aw22xxx_interrupt_setup | PASS |
| 012_aw22xxx_irq_v15 | aw22xxx_irq_v15 | 00102638 | async_or_irq | zte_led.c:aw22xxx_irq_v15 | PASS |
| 013_aw22xxx_irq | aw22xxx_irq | 00102880 | async_or_irq | zte_led.c:aw22xxx_irq | PASS |
| 014_aw22xxx_parse_led_cdev | aw22xxx_parse_led_cdev | 00102984 | core_logic | zte_led.c:aw22xxx_parse_led_cdev | PASS |
| 015_aw22xxx_alloc_name_array | aw22xxx_alloc_name_array | 00102b8c | core_logic | zte_led.c:aw22xxx_alloc_name_array | PASS |
| 016_aw22xxx_fw_init | aw22xxx_fw_init | 00102df0 | lifecycle | zte_led.c:aw22xxx_fw_init | PASS |
| 017_aw22xxx_create_proc_entry | aw22xxx_create_proc_entry | 00102ec4 | core_logic | zte_led.c:aw22xxx_create_proc_entry | PASS |
| 018_aw22xxx_brightness_work | aw22xxx_brightness_work | 00102f28 | async_or_irq | zte_led.c:aw22xxx_brightness_work | PASS |
| 019_aw22xxx_task_work | aw22xxx_task_work | 00103178 | async_or_irq | zte_led.c:aw22xxx_task_work | PASS |
| 020_aw22xxx_set_brightness | aw22xxx_set_brightness | 001033dc | core_logic | zte_led.c:aw22xxx_set_brightness | PASS |
| 021_aw22xxx_reg_show | aw22xxx_reg_show | 00103414 | user_abi | zte_led.c:aw22xxx_reg_show | PASS |
| 022_aw22xxx_reg_store | aw22xxx_reg_store | 00103528 | user_abi | zte_led.c:aw22xxx_reg_store | PASS |
| 023_aw22xxx_hwen_show | aw22xxx_hwen_show | 001035e8 | user_abi | zte_led.c:aw22xxx_hwen_show | PASS |
| 024_aw22xxx_hwen_store | aw22xxx_hwen_store | 0010363c | user_abi | zte_led.c:aw22xxx_hwen_store | PASS |
| 025_aw22xxx_fw_show | aw22xxx_fw_show | 00103764 | user_abi | zte_led.c:aw22xxx_fw_show | PASS |
| 026_aw22xxx_fw_store | aw22xxx_fw_store | 001037a0 | user_abi | zte_led.c:aw22xxx_fw_store | PASS |
| 027_aw22xxx_cfg_show | aw22xxx_cfg_show | 0010384c | user_abi | zte_led.c:aw22xxx_cfg_show | PASS |
| 028_aw22xxx_cfg_store | aw22xxx_cfg_store | 001038d4 | user_abi | zte_led.c:aw22xxx_cfg_store | PASS |
| 029_aw22xxx_effect_show | aw22xxx_effect_show | 00103998 | user_abi | zte_led.c:aw22xxx_effect_show | PASS |
| 030_aw22xxx_effect_store | aw22xxx_effect_store | 001039d4 | user_abi | zte_led.c:aw22xxx_effect_store | PASS |
| 031_aw22xxx_get_fwname | aw22xxx_get_fwname | 00103ca8 | core_logic | zte_led.c:aw22xxx_get_fwname | PASS |
| 032_aw22xxx_cfg_update_wait_from_dyn_name | aw22xxx_cfg_update_wait_from_dyn_name | 00103ea4 | core_logic | zte_led.c:aw22xxx_cfg_update_wait_from_dyn_name | PASS |
| 033_aw22xxx_set_cfg_run_state | aw22xxx_set_cfg_run_state | 00103fa8 | core_logic | zte_led.c:aw22xxx_set_cfg_run_state | PASS |
| 034_aw22xxx_cfg_loaded | aw22xxx_cfg_loaded | 001040cc | core_logic | zte_led.c:aw22xxx_cfg_loaded | PASS |
| 035_aw22xxx_imax_show | aw22xxx_imax_show | 001042ac | user_abi | zte_led.c:aw22xxx_imax_show | PASS |
| 036_aw22xxx_imax_store | aw22xxx_imax_store | 00104498 | user_abi | zte_led.c:aw22xxx_imax_store | PASS |
| 037_aw22xxx_rgb_show | aw22xxx_rgb_show | 0010458c | user_abi | zte_led.c:aw22xxx_rgb_show | PASS |
| 038_aw22xxx_rgb_store | aw22xxx_rgb_store | 001046d0 | user_abi | zte_led.c:aw22xxx_rgb_store | PASS |
| 039_aw22xxx_task0_show | aw22xxx_task0_show | 00104790 | user_abi | zte_led.c:aw22xxx_task0_show | PASS |
| 040_aw22xxx_task0_store | aw22xxx_task0_store | 001047cc | user_abi | zte_led.c:aw22xxx_task0_store | PASS |
| 041_aw22xxx_task1_show | aw22xxx_task1_show | 001048a4 | user_abi | zte_led.c:aw22xxx_task1_show | PASS |
| 042_aw22xxx_task1_store | aw22xxx_task1_store | 001048e0 | user_abi | zte_led.c:aw22xxx_task1_store | PASS |
| 043_aw22xxx_task_irq_show | aw22xxx_task_irq_show | 001049a4 | user_abi | zte_led.c:aw22xxx_task_irq_show | PASS |
| 044_aw22xxx_task_irq_store | aw22xxx_task_irq_store | 001049e0 | user_abi | zte_led.c:aw22xxx_task_irq_store | PASS |
| 045_aw22xxx_para_show | aw22xxx_para_show | 00104aa0 | user_abi | zte_led.c:aw22xxx_para_show | PASS |
| 046_aw22xxx_para_store | aw22xxx_para_store | 00104bc0 | user_abi | zte_led.c:aw22xxx_para_store | PASS |
| 047_aw22xxx_multi_breath_pattern_show | aw22xxx_multi_breath_pattern_show | 00105018 | user_abi | zte_led.c:aw22xxx_multi_breath_pattern_show | PASS |
| 048_aw22xxx_multi_breath_pattern_store | aw22xxx_multi_breath_pattern_store | 00105054 | user_abi | zte_led.c:aw22xxx_multi_breath_pattern_store | PASS |
| 049_aw22xxx_fw_timer_func | aw22xxx_fw_timer_func | 001051e8 | async_or_irq | zte_led.c:aw22xxx_fw_timer_func | PASS |
| 050_aw22xxx_fw_work_routine | aw22xxx_fw_work_routine | 0010523c | async_or_irq | zte_led.c:aw22xxx_fw_work_routine | PASS |
| 051_aw22xxx_cfg_work_routine | aw22xxx_cfg_work_routine | 001052d0 | async_or_irq | zte_led.c:aw22xxx_cfg_work_routine | PASS |
| 052_aw22xxx_recover_work_routine | aw22xxx_recover_work_routine | 001053b8 | async_or_irq | zte_led.c:aw22xxx_recover_work_routine | PASS |
| 053_aw22xxx_fw_loaded | aw22xxx_fw_loaded | 001055c8 | core_logic | zte_led.c:aw22xxx_fw_loaded | PASS |
| 054_aw22xxx_led_init | aw22xxx_led_init | 00106204 | lifecycle | zte_led.c:aw22xxx_led_init | PASS |
| 055_aw22xxx_cfg_recover_update_wait | aw22xxx_cfg_recover_update_wait | 00106394 | core_logic | zte_led.c:aw22xxx_cfg_recover_update_wait | PASS |
| 056_get_aw22xxx_id | get_aw22xxx_id | 00106760 | core_logic | zte_led.c:get_aw22xxx_id | PASS |
| 057_init_module | init_module | 00106824 | lifecycle | zte_led.c:aw22xxx_driver_init | PASS |
| 058_cleanup_module | cleanup_module | 001068a0 | lifecycle | zte_led.c:aw22xxx_driver_exit | PASS |
