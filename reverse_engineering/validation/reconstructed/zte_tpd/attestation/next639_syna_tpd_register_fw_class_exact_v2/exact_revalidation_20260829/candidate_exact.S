.section .text,"ax",@progbits
.align 2
.extern syna_get_charger_status_batt_psy
.global syna_tpd_register_fw_class
.type syna_tpd_register_fw_class, %function
    .word 0x3175607e
syna_tpd_register_fw_class:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7e62
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7e62
    .inst 0xf9438908
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4351
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4351
    .inst 0xf90007e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800141
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x504a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x504a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc429
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc429
    .inst 0x72a000c1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, alloc_workqueue
    .inst 0xf9034660
    .inst 0xb50000e0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc43d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc43d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4351
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4351
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400003c
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_get_charger_status.batt_psy
    .inst 0xf90003ff
    .inst 0xf9400280
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_get_charger_status.batt_psy
    .inst 0xb5000100
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb781
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb781
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, power_supply_get_by_name
    .inst 0xf9000280
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_get_charger_status.batt_psy
    .inst 0xb5000060
    .inst 0x2a1f03e8
    .inst 0x1400000d
    .inst 0xf9400008
    .inst 0x910003e2
    .inst 0x2a1f03e1
    .inst 0xf9401508
    .inst 0xb85fc110
    .inst 0x72819a71
    .inst 0x72bd1331
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb94003e8
    .inst 0x7100111f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x944d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x944d
    .inst 0x7a411904
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x843c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x843c
    .inst 0x1a9f17f4
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_usb_detect_flag
    .inst 0xb26b7be9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, delayed_work_timer_fn
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, delayed_work_timer_fn
    .inst 0x39000114
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, syna_usb_detect_flag
    .inst 0x9118a268
    .inst 0xf9031269
    .inst 0x91190260
    .inst 0x52a00402
    .inst 0xf9031668
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9031a68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_work_charger_detect_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_work_charger_detect_work
    .inst 0xf9031e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5ff2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5ff2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3d50
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3d50
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_charger_notify_call
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_charger_notify_call
    .inst 0x911a4260
    .inst 0xf9034a68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, power_supply_reg_notifier
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_init_tpinfo
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_init_tpinfo
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9cd5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9cd5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4351
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4351
    .inst 0xf9071109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_wakegesture
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_wakegesture
    .inst 0xf9071509
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_enable_wakegesture
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_enable_wakegesture
    .inst 0xf9071909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_singlegamegesture
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_singlegamegesture
    .inst 0xf9076d09
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_singlegamegesture
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_singlegamegesture
    .inst 0xf9077109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_singleaodgesture
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_singleaodgesture
    .inst 0xf9076509
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_singleaodgesture
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_singleaodgesture
    .inst 0xf9076909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_singlefpgesture
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_singlefpgesture
    .inst 0xf9075d09
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_singlefpgesture
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_singlefpgesture
    .inst 0xf9076109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_one_key
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_one_key
    .inst 0xf9077d09
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_one_key
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_one_key
    .inst 0xf9077909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_test_cmd_store
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_test_cmd_store
    .inst 0xf907d109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_test_cmd_show
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_test_cmd_show
    .inst 0xf907cd09
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_tp_report_rate
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_tp_report_rate
    .inst 0xf9078d09
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_tp_report_rate
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_tp_report_rate
    .inst 0xf9078909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_sensibility_level
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_sensibility_level
    .inst 0xf907b109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_sensibility_level
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_sensibility_level
    .inst 0xf907b509
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_follow_hand_level
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_follow_hand_level
    .inst 0xf9079509
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_follow_hand_level
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_follow_hand_level
    .inst 0xf9079109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_stability_level
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_stability_level
    .inst 0xf9079d09
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_stability_level
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_stability_level
    .inst 0xf9079909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_rotation_limit_level
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_rotation_limit_level
    .inst 0xf9074509
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_rotation_limit_level
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_rotation_limit_level
    .inst 0xf9074109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_display_rotation
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_display_rotation
    .inst 0xf9074909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_play_game
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_play_game
    .inst 0xf9078109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_play_game
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_play_game
    .inst 0xf9078509
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_game_partition
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_game_partition
    .inst 0xf907a909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_frame_data
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_frame_data
    .inst 0xf9080109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_frame_data
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_frame_data
    .inst 0xf907fd09
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_palm_mode
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_palm_mode
    .inst 0xf907d509
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_palm_mode
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_palm_mode
    .inst 0xf907d909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_ghost_check_reset
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_ghost_check_reset
    .inst 0xf907f909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_fake_sleep
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_fake_sleep
    .inst 0xf907e909
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_fake_sleep
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_fake_sleep
    .inst 0xf907e509
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_set_screen_off_awake
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_set_screen_off_awake
    .inst 0xf907f109
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_get_screen_off_awake
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_get_screen_off_awake
    .inst 0xf906dd13
    .inst 0xf907ed09
    .inst 0xb943ba69
    .inst 0x79088509
    .inst 0xb943be69
    .inst 0x79088909
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540000c1
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tpd_register_fw_class, .-syna_tpd_register_fw_class

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.zero 0x3d50
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x69, 0x6e, 0x69, 0x74, 0x5f, 0x63, 0x68, 0x61, 0x72, 0x67, 0x65, 0x72, 0x5f, 0x6e, 0x6f, 0x74, 0x69, 0x66, 0x69, 0x65, 0x72, 0x00
.zero 0x5e6
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x70, 0x64, 0x5f, 0x72, 0x65, 0x67, 0x69, 0x73, 0x74, 0x65, 0x72, 0x5f, 0x66, 0x77, 0x5f, 0x63, 0x6c, 0x61, 0x73, 0x73, 0x00
.zero 0xcde
.byte 0x25, 0x73, 0x00
.zero 0xfa5
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x69, 0x74, 0x20, 0x43, 0x68, 0x61, 0x72, 0x67, 0x65, 0x72, 0x20, 0x6e, 0x6f, 0x74, 0x69, 0x66, 0x69, 0x65, 0x72, 0x00
.zero 0x1e4c
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x65, 0x6e, 0x74, 0x72, 0x79, 0x00
.zero 0x5c6
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x67, 0x65, 0x74, 0x5f, 0x63, 0x68, 0x61, 0x72, 0x67, 0x65, 0x72, 0x5f, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x00
.zero 0xff9
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x63, 0x68, 0x61, 0x72, 0x67, 0x65, 0x72, 0x20, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x3a, 0x25, 0x64, 0x00
.zero 0x868
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x65, 0x6e, 0x64, 0x00
.zero 0x1a9a
.byte 0x62, 0x61, 0x74, 0x74, 0x65, 0x72, 0x79, 0x00
.zero 0xca0
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x68, 0x61, 0x72, 0x67, 0x65, 0x72, 0x5f, 0x64, 0x65, 0x74, 0x65, 0x63, 0x74, 0x00
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x63, 0x68, 0x61, 0x72, 0x67, 0x65, 0x72, 0x5f, 0x77, 0x71, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x00
.zero 0x0
