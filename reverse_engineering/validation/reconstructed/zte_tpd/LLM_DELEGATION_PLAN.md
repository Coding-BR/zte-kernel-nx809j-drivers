# Plano de Delegacao por Microprovas: zte_tpd

> Este arquivo roteia trabalho. Ele nao prova equivalencia, nao concede PASS e nao autoriza teste em hardware.

## Resumo

- Tarefas analisadas: `120`
- Candidatas a patch C limitado por L2: `4`
- Ondas de dependencias: `4`
- Tarefas em ciclos de dependencia: `0`

| Rota | Quantidade |
|---|---:|
| `ADVANCED_LLM_WITH_SENIOR_REVIEW` | 15 |
| `BOUNDED_LLM_WITH_INDEPENDENT_REVIEW` | 4 |
| `GUIDED_LLM_WITH_SENIOR_REVIEW` | 22 |
| `SENIOR_DECOMPOSITION_REQUIRED` | 79 |

## Regras

1. L0/L1 podem produzir microprovas hashadas, mas nunca editar C ou alterar estado.
2. L2 so pode editar C quando `C limitado` estiver como `sim`.
3. Implementador e revisor devem ser agentes diferentes; conclusao do implementador nao e prova.
4. Divergencia entre microprovas bloqueia o patch e sobe a tarefa para L4.
5. Somente os atestadores existentes podem promover uma microtarefa.

## Fila Recomendada

| Onda | ID | Funcao | Bytes | Risco | Rota | C limitado | Dependencias pendentes |
|---:|---|---|---:|---:|---|---|---|
| 0 | `243_syna_tcm_testing_0002_check_config_id` | `syna_tcm_testing_0002_check_config_id` | 120 | 4 (LOW) | `BOUNDED_LLM_WITH_INDEPENDENT_REVIEW` | sim | - |
| 0 | `326_trim` | `trim` | 124 | 4 (LOW) | `BOUNDED_LLM_WITH_INDEPENDENT_REVIEW` | sim | - |
| 0 | `238_syna_tcm_testing_0001_check_device_id` | `syna_tcm_testing_0001_check_device_id` | 180 | 8 (LOW) | `BOUNDED_LLM_WITH_INDEPENDENT_REVIEW` | sim | - |
| 0 | `247_syna_tcm_testing_check_array_data` | `syna_tcm_testing_check_array_data` | 180 | 8 (LOW) | `BOUNDED_LLM_WITH_INDEPENDENT_REVIEW` | sim | - |
| 0 | `153_syna_ts_check_dt` | `syna_ts_check_dt` | 412 | 16 (LOW) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `354_tpd_set_play_game` | `tpd_set_play_game` | 216 | 16 (LOW) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `259_syna_tcm_v1_parse_idinfo` | `syna_tcm_v1_parse_idinfo` | 188 | 20 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `262_syna_tcm_v1_set_up_max_rw_size` | `syna_tcm_v1_set_up_max_rw_size` | 184 | 20 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `357_tpd_set_frame_data` | `tpd_set_frame_data` | 200 | 20 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `132_ufp_report_gesture_uevent` | `ufp_report_gesture_uevent` | 228 | 22 (MODERATE) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `100_ghost_check_area` | `ghost_check_area` | 336 | 24 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `236_syna_tcm_buf_alloc` | `syna_tcm_buf_alloc` | 232 | 28 (MODERATE) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `241_syna_tcm_buf_alloc` | `syna_tcm_buf_alloc` | 220 | 28 (MODERATE) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `265_syna_tcm_config_timings` | `syna_tcm_config_timings` | 236 | 32 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `116_point_is_in_limit_area` | `point_is_in_limit_area` | 448 | 36 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `176_syna_mmap` | `syna_mmap` | 176 | 36 (MODERATE) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `340_tpd_test_cmd_store` | `tpd_test_cmd_store` | 208 | 38 (MODERATE) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `165_syna_ts_register_for_panel_events` | `syna_ts_register_for_panel_events` | 136 | 40 (HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `040_inline_copy_from_user` | `_inline_copy_from_user` | 244 | 44 (HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `306_syna_tcm_check_flash_block` | `syna_tcm_check_flash_block` | 476 | 44 (HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `285_syna_tcm_sleep` | `syna_tcm_sleep` | 264 | 50 (HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `192_syna_cdev_release` | `syna_cdev_release` | 376 | 54 (HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `231_syna_tcm_testing_check_frame_data` | `syna_tcm_testing_check_frame_data` | 364 | 54 (HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `252_syna_tcm_testing_check_frame_data` | `syna_tcm_testing_check_frame_data` | 364 | 54 (HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `171_syna_dev_isr` | `syna_dev_isr` | 224 | 58 (HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `324_syna_tcm_parse_fw_image` | `syna_tcm_parse_fw_image` | 860 | 58 (HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `230_syna_tcm_buf_copy` | `syna_tcm_buf_copy` | 640 | 62 (VERY_HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `246_syna_tcm_buf_copy` | `syna_tcm_buf_copy` | 640 | 62 (VERY_HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `251_syna_tcm_buf_copy` | `syna_tcm_buf_copy` | 640 | 62 (VERY_HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `264_syna_tcm_v1_read` | `syna_tcm_v1_read` | 324 | 62 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `281_syna_tcm_get_dynamic_config` | `syna_tcm_get_dynamic_config` | 392 | 62 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `282_syna_tcm_set_dynamic_config` | `syna_tcm_set_dynamic_config` | 352 | 62 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `117_edge_long_press_up` | `edge_long_press_up` | 624 | 66 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `274_syna_tcm_enable_report` | `syna_tcm_enable_report` | 364 | 66 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `118_change_tp_state` | `change_tp_state` | 376 | 68 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `270_syna_tcm_buf_copy` | `syna_tcm_buf_copy` | 832 | 68 (VERY_HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | - |
| 0 | `207_syna_spi_alloc_mem` | `syna_spi_alloc_mem` | 632 | 70 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `202_syna_spi_remove` | `syna_spi_remove` | 396 | 72 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `085_ghost_debug_read` | `ghost_debug_read` | 800 | 74 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `104_tpd_report_work_init` | `tpd_report_work_init` | 672 | 76 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `214_syna_sysfs_reset_store` | `syna_sysfs_reset_store` | 384 | 82 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `211_syna_sysfs_info_show` | `syna_sysfs_info_show` | 1020 | 86 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `271_syna_tcm_identify` | `syna_tcm_identify` | 492 | 86 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `276_syna_tcm_switch_fw_mode` | `syna_tcm_switch_fw_mode` | 728 | 86 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `286_syna_tcm_get_features` | `syna_tcm_get_features` | 552 | 86 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `053_tp_edge_report_limit_read` | `tp_edge_report_limit_read` | 1288 | 90 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `277_syna_tcm_get_boot_info` | `syna_tcm_get_boot_info` | 572 | 92 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `215_syna_sysfs_irq_en_store` | `syna_sysfs_irq_en_store` | 404 | 94 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `167_syna_dev_set_up_input_device` | `syna_dev_set_up_input_device` | 896 | 96 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `206_syna_spi_power_on` | `syna_spi_power_on` | 616 | 96 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `266_syna_tcm_allocate_device` | `syna_tcm_allocate_device` | 1448 | 96 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `328_syna_work_charger_detect_work` | `syna_work_charger_detect_work` | 472 | 96 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `025_zte_touch_probe` | `zte_touch_probe` | 3712 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `028_tp_module_info_read` | `tp_module_info_read` | 672 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `095_zte_touch_deinit` | `zte_touch_deinit` | 376 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `161_syna_dev_disconnect` | `syna_dev_disconnect` | 392 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `193_syna_cdev_ioctl_raw_read` | `syna_cdev_ioctl_raw_read` | 892 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `194_syna_cdev_ioctl_raw_write` | `syna_cdev_ioctl_raw_write` | 940 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `195_syna_cdev_process_reports` | `syna_cdev_process_reports` | 1520 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `223_syna_testing_check_dev_id_show` | `syna_testing_check_dev_id_show` | 744 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `224_syna_testing_check_config_id_show` | `syna_testing_check_config_id_show` | 536 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `225_syna_testing_pt01_show` | `syna_testing_pt01_show` | 600 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `275_syna_tcm_wait_for_report` | `syna_tcm_wait_for_report` | 604 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `278_syna_tcm_get_app_info` | `syna_tcm_get_app_info` | 672 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `297_syna_tcm_read_flash` | `syna_tcm_read_flash` | 744 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `307_syna_tcm_write_flash` | `syna_tcm_write_flash` | 964 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `316_syna_tcm_parse_touch_report` | `syna_tcm_parse_touch_report` | 7252 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 0 | `327_syna_tpd_register_fw_class` | `syna_tpd_register_fw_class` | 880 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | - |
| 1 | `149_syna_dev_set_display_rotation` | `syna_dev_set_display_rotation` | 260 | 16 (LOW) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 282_syna_tcm_set_dynamic_config |
| 1 | `143_syna_dev_set_tp_report_rate` | `syna_dev_set_tp_report_rate` | 352 | 20 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 282_syna_tcm_set_dynamic_config |
| 1 | `146_syna_dev_set_sensibility_level` | `syna_dev_set_sensibility_level` | 412 | 20 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 282_syna_tcm_set_dynamic_config |
| 1 | `147_syna_dev_set_follow_hand_level` | `syna_dev_set_follow_hand_level` | 392 | 20 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 282_syna_tcm_set_dynamic_config |
| 1 | `148_syna_dev_set_stability_level` | `syna_dev_set_stability_level` | 392 | 20 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 282_syna_tcm_set_dynamic_config |
| 1 | `162_syna_dev_set_up_app_fw` | `syna_dev_set_up_app_fw` | 216 | 20 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 278_syna_tcm_get_app_info |
| 1 | `240_syna_tcm_testing_config_id` | `syna_tcm_testing_config_id` | 404 | 28 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 241_syna_tcm_buf_alloc, 243_syna_tcm_testing_0002_check_config_id, 278_syna_tcm_get_app_info |
| 1 | `235_syna_tcm_testing_build_id` | `syna_tcm_testing_build_id` | 600 | 38 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 236_syna_tcm_buf_alloc, 238_syna_tcm_testing_0001_check_device_id, 271_syna_tcm_identify |
| 1 | `173_syna_dev_enable_lowpwr_gesture` | `syna_dev_enable_lowpwr_gesture` | 452 | 50 (HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 282_syna_tcm_set_dynamic_config |
| 1 | `245_syna_tcm_testing_trx_trx_short` | `syna_tcm_testing_trx_trx_short` | 488 | 54 (HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | 246_syna_tcm_buf_copy, 247_syna_tcm_testing_check_array_data |
| 1 | `179_syna_ts_panel_notifier_callback` | `syna_ts_panel_notifier_callback` | 300 | 58 (HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 118_change_tp_state |
| 1 | `229_syna_tcm_testing_noise` | `syna_tcm_testing_noise` | 576 | 60 (VERY_HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | 230_syna_tcm_buf_copy, 231_syna_tcm_testing_check_frame_data |
| 1 | `250_syna_tcm_testing_full_raw` | `syna_tcm_testing_full_raw` | 576 | 60 (VERY_HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | 251_syna_tcm_buf_copy, 252_syna_tcm_testing_check_frame_data |
| 1 | `301_syna_tcm_read_flash_mtp_config` | `syna_tcm_read_flash_mtp_config` | 508 | 64 (VERY_HIGH) | `ADVANCED_LLM_WITH_SENIOR_REVIEW` | nao | 297_syna_tcm_read_flash |
| 1 | `299_syna_tcm_read_flash_boot_config` | `syna_tcm_read_flash_boot_config` | 556 | 70 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 297_syna_tcm_read_flash |
| 1 | `288_syna_tcm_send_command` | `syna_tcm_send_command` | 476 | 72 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 270_syna_tcm_buf_copy |
| 1 | `133_report_ufp_uevent` | `report_ufp_uevent` | 644 | 78 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 132_ufp_report_gesture_uevent |
| 1 | `203_syna_spi_read` | `syna_spi_read` | 736 | 78 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 207_syna_spi_alloc_mem |
| 1 | `204_syna_spi_write` | `syna_spi_write` | 696 | 78 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 207_syna_spi_alloc_mem |
| 1 | `296_syna_tcm_set_up_flash_access` | `syna_tcm_set_up_flash_access` | 740 | 84 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 271_syna_tcm_identify, 276_syna_tcm_switch_fw_mode, 277_syna_tcm_get_boot_info |
| 1 | `086_ghost_debug_write` | `ghost_debug_write` | 444 | 86 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 040_inline_copy_from_user |
| 1 | `054_tp_edge_report_limit_write` | `tp_edge_report_limit_write` | 952 | 92 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 040_inline_copy_from_user |
| 1 | `166_syna_dev_helper_work` | `syna_dev_helper_work` | 308 | 96 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 277_syna_tcm_get_boot_info |
| 1 | `099_tpd_touch_release` | `tpd_touch_release` | 1596 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 100_ghost_check_area, 132_ufp_report_gesture_uevent |
| 1 | `158_syna_dev_remove` | `syna_dev_remove` | 308 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 161_syna_dev_disconnect |
| 1 | `201_syna_spi_probe` | `syna_spi_probe` | 4344 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 153_syna_ts_check_dt |
| 1 | `213_syna_sysfs_get_delta_show` | `syna_sysfs_get_delta_show` | 1224 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 274_syna_tcm_enable_report, 275_syna_tcm_wait_for_report |
| 1 | `261_syna_tcm_v1_read_message` | `syna_tcm_v1_read_message` | 5484 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 259_syna_tcm_v1_parse_idinfo, 264_syna_tcm_v1_read |
| 1 | `303_syna_tcm_update_flash_block` | `syna_tcm_update_flash_block` | 2164 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 306_syna_tcm_check_flash_block, 307_syna_tcm_write_flash |
| 1 | `325_string_change` | `string_change` | 1404 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 326_trim |
| 2 | `343_tpd_set_tp_report_rate` | `tpd_set_tp_report_rate` | 188 | 16 (LOW) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 143_syna_dev_set_tp_report_rate |
| 2 | `347_tpd_set_follow_hand_level` | `tpd_set_follow_hand_level` | 188 | 16 (LOW) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 147_syna_dev_set_follow_hand_level |
| 2 | `349_tpd_set_stability_level` | `tpd_set_stability_level` | 188 | 16 (LOW) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 148_syna_dev_set_stability_level |
| 2 | `351_tpd_set_rotation_limit_level` | `tpd_set_rotation_limit_level` | 200 | 16 (LOW) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 149_syna_dev_set_display_rotation |
| 2 | `151_syna_recovery_game_mode_after_reset` | `syna_recovery_game_mode_after_reset` | 408 | 32 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 143_syna_dev_set_tp_report_rate, 146_syna_dev_set_sensibility_level, 147_syna_dev_set_follow_hand_level, 148_syna_dev_set_stability_level, 282_syna_tcm_set_dynamic_config |
| 2 | `352_tpd_set_display_rotation` | `tpd_set_display_rotation` | 444 | 32 (MODERATE) | `GUIDED_LLM_WITH_SENIOR_REVIEW` | nao | 149_syna_dev_set_display_rotation |
| 2 | `169_syna_dev_reflash_startup_work` | `syna_dev_reflash_startup_work` | 304 | 62 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 143_syna_dev_set_tp_report_rate, 162_syna_dev_set_up_app_fw, 167_syna_dev_set_up_input_device, 327_syna_tpd_register_fw_class |
| 2 | `305_syna_tcm_update_lockdown_config` | `syna_tcm_update_lockdown_config` | 900 | 86 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 276_syna_tcm_switch_fw_mode, 296_syna_tcm_set_up_flash_access, 299_syna_tcm_read_flash_boot_config, 306_syna_tcm_check_flash_block, 307_syna_tcm_write_flash |
| 2 | `295_syna_tcm_read_flash_address` | `syna_tcm_read_flash_address` | 732 | 90 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 276_syna_tcm_switch_fw_mode, 296_syna_tcm_set_up_flash_access, 297_syna_tcm_read_flash |
| 2 | `302_syna_tcm_do_fw_update_ex` | `syna_tcm_do_fw_update_ex` | 800 | 92 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 296_syna_tcm_set_up_flash_access, 303_syna_tcm_update_flash_block |
| 2 | `096_tpd_touch_press` | `tpd_touch_press` | 2116 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 099_tpd_touch_release, 116_point_is_in_limit_area |
| 2 | `160_syna_dev_connect` | `syna_dev_connect` | 1004 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 162_syna_dev_set_up_app_fw, 167_syna_dev_set_up_input_device, 276_syna_tcm_switch_fw_mode, 277_syna_tcm_get_boot_info |
| 2 | `163_syna_dev_resume` | `syna_dev_resume` | 1548 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 133_report_ufp_uevent, 143_syna_dev_set_tp_report_rate, 146_syna_dev_set_sensibility_level, 147_syna_dev_set_follow_hand_level, 148_syna_dev_set_stability_level, 149_syna_dev_set_display_rotation, 162_syna_dev_set_up_app_fw, 282_syna_tcm_set_dynamic_config |
| 2 | `164_syna_dev_suspend` | `syna_dev_suspend` | 392 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 173_syna_dev_enable_lowpwr_gesture, 285_syna_tcm_sleep |
| 2 | `190_syna_cdev_ioctls` | `syna_cdev_ioctls` | 8572 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 193_syna_cdev_ioctl_raw_read, 194_syna_cdev_ioctl_raw_write, 288_syna_tcm_send_command |
| 2 | `258_syna_tcm_v1_write_message` | `syna_tcm_v1_write_message` | 2084 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 261_syna_tcm_v1_read_message |
| 2 | `300_syna_tcm_read_flash_boot_cs_config` | `syna_tcm_read_flash_boot_cs_config` | 1372 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 297_syna_tcm_read_flash, 299_syna_tcm_read_flash_boot_config |
| 3 | `304_syna_tcm_do_fw_update` | `syna_tcm_do_fw_update` | 824 | 76 (VERY_HIGH) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 302_syna_tcm_do_fw_update_ex, 324_syna_tcm_parse_fw_image |
| 3 | `157_syna_dev_probe` | `syna_dev_probe` | 1364 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 160_syna_dev_connect, 161_syna_dev_disconnect, 165_syna_ts_register_for_panel_events, 265_syna_tcm_config_timings, 266_syna_tcm_allocate_device |
| 3 | `170_syna_dev_process_touch_report` | `syna_dev_process_touch_report` | 1340 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 096_tpd_touch_press, 099_tpd_touch_release, 132_ufp_report_gesture_uevent, 133_report_ufp_uevent, 316_syna_tcm_parse_touch_report |
| 3 | `255_syna_tcm_v1_detect` | `syna_tcm_v1_detect` | 1236 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 258_syna_tcm_v1_write_message, 259_syna_tcm_v1_parse_idinfo |
| 3 | `298_syna_tcm_read_flash_area` | `syna_tcm_read_flash_area` | 2012 | 100 (CRITICAL) | `SENIOR_DECOMPOSITION_REQUIRED` | nao | 276_syna_tcm_switch_fw_mode, 296_syna_tcm_set_up_flash_access, 297_syna_tcm_read_flash, 299_syna_tcm_read_flash_boot_config, 300_syna_tcm_read_flash_boot_cs_config, 301_syna_tcm_read_flash_mtp_config |

## Entradas Hashadas

- `microtasks`: `kernel_development/drivers/reconstructed/zte_tpd/MICROTASKS.json` SHA-256 `2184de5e0ebf69ed591ef9f5463a4a9309c251ec3e475a8c6bff7943d32ee3af`
- `function_index`: `reverse_engineering/validation/reconstructed/zte_tpd/offline_static/FUNCTION_EVIDENCE_INDEX.jsonl` SHA-256 `0249d6f8a856d96d04499b4b179442d72719399a7e6af9bc3da4e96b975f553f`
- `ghidra_calls`: `reverse_engineering/validation/reconstructed/zte_tpd/offline_static/ghidra_stock/calls.jsonl` SHA-256 `91036ccf7524b9446063248adf032fbe7c568d2c6b3a32d00cc54ef57853bc96`

O score e uma heuristica conservadora de roteamento. Ele nunca representa percentual de reconstrucao ou confianca semantica.
