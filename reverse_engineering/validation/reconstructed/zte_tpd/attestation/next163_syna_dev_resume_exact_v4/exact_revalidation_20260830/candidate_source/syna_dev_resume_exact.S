.section .text,"ax",@progbits
.align 2
.global syna_dev_resume
.type syna_dev_resume, %function
.word 0x2a703c0b
syna_dev_resume:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0xf9404c13
    .inst 0xb4000233
    .inst 0xf9413a75
    .inst 0xf9400268
    .inst 0xb102a2bf
    .inst 0x540000e0
    .inst 0xb940baa9
    .inst 0x340000a9
    .inst 0x3942f2a9
    .inst 0x36000069
    .inst 0x2a1f03f4
    .inst 0x14000002
    .inst 0xb9420d14
    .inst 0xb9457e68
    .inst 0x7100051f
    .inst 0x540001e1
    .inst 0x2a1f03e0
    .inst 0x14000002
    .inst 0x128002a0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54002c41
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops + 0xa0
    .inst 0x390013ff
    .inst 0x394002c8
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, ufp_tp_ops + 0xa0
    .inst 0x7100051f
    .inst 0x54000361
    .inst 0xb945d668
    .inst 0x35000288
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_626a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_626a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops + 0x80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_tp_ops + 0x80
    .inst 0x52804e21
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, wait_for_completion_timeout
    .inst 0xb50000c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_912c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_912c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0x390002df
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, ufp_tp_ops + 0xa0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, report_ufp_uevent
    .inst 0x14000006
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_194c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_194c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_1b2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_1b2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39560668
    .inst 0x52800029
    .inst 0xb9057e69
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, large_area_uevent_count
    .inst 0x7100051f
    .inst 0xb900013f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, large_area_uevent_count
    .inst 0x54000181
    .inst 0xf94022a8
    .inst 0xb4000148
    .inst 0x910022a0
    .inst 0x2a1f03e1
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb945d668
    .inst 0x340000e8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops + 0xa0
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_tp_ops + 0xa0
    .inst 0x39400109
    .inst 0x39400508
    .inst 0x2a090108
    .inst 0x35000428
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_2668
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_2668
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf940c6a8
    .inst 0xb5000108
    .inst 0xf9400260
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_reset
    .inst 0x36f80480
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_9754
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_9754
    .inst 0x1400002b
    .inst 0xaa1503e0
    .inst 0xb85fc110
    .inst 0x72974371
    .inst 0x72a56791
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x3942f2a8
    .inst 0x370002e8
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x36f801e0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_12f5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_12f5
    .inst 0x14000019
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_4c37
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_4c37
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_enter_normal_sensing
    .inst 0x36f800e0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_adff
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_adff
    .inst 0x1400000e
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54001261
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_788
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_788
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_up_app_fw
    .inst 0x36f80120
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_5bf0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_5bf0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3942f2a8
    .inst 0x360001c8
    .inst 0x14000018
    .inst 0xb9457e62
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops + 0xa0
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_tp_ops + 0xa0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_8b52
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_8b52
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x3900091f
    .inst 0x7900011f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3942f2a8
    .inst 0x37000188
    .inst 0xf94022a8
    .inst 0xb4000148
    .inst 0x910022a0
    .inst 0x52800021
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_5641
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_5641
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_2593
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_2593
    .inst 0x3916027f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9400260
    .inst 0x52801a81
    .inst 0x52800062
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_dynamic_config
    .inst 0x36f80160
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_9e91
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_9e91
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_2593
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_2593
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_401c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_401c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_usb_detect_flag
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, syna_usb_detect_flag
    .inst 0x7100051f
    .inst 0x54000161
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_charger_mode
    .inst 0x340000c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c086
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c086
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9460a61
    .inst 0xaa1303e0
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_display_rotation
    .inst 0xb945de68
    .inst 0x350000c8
    .inst 0xb945fa61
    .inst 0xaa1303e0
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_tp_report_rate
    .inst 0x1400001b
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_play_game
    .inst 0x340000c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_31d6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_31d6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb945fa61
    .inst 0xaa1303e0
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_tp_report_rate
    .inst 0xb945fe61
    .inst 0xaa1303e0
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_sensibility_level
    .inst 0xb9460261
    .inst 0xaa1303e0
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_follow_hand_level
    .inst 0xb9460661
    .inst 0xaa1303e0
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_stability_level
    .inst 0xb945ee68
    .inst 0xb945f669
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_c076
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_c076
    .inst 0xb945b262
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_9f82
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_9f82
    .inst 0xaa1503e1
    .inst 0xb905ea68
    .inst 0xb905f269
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb945c662
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_a677
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_a677
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb945d662
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_69e4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_69e4
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb945ea62
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_1fa9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_1fa9
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb945f262
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lrodata_811d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lrodata_811d
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1403e0
    .inst 0x17fffef8
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37ffeae0
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54ffeca0
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37ffe9a0
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54ffeb60
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37ffe860
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54ffea20
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37ffe720
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54ffe8e0
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37ffe5e0
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54ffe7a0
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37ffe4a0
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54ffe660
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37ffe360
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54ffe520
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37ffe220
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54ffe3e0
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37ffe0e0
    .inst 0x394013e8
    .inst 0x7100411f
    .inst 0x54ffe2a0
    .inst 0x52800640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x17ffff12
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_dev_resume, .-syna_dev_resume

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.Lrodata_1b2:
    .asciz "\0016[info ] %s: Prepare to resume device\n"
.Lrodata_788:
    .asciz "\0016[info ] %s: Prepare to set up application firmware\n"
.Lrodata_12f5:
    .asciz "\0013[error] %s: Fail to complete hw reset\n"
.Lrodata_194c:
    .asciz "\0016[info ] %s: aod finger down in one_key mode"
.Lrodata_1fa9:
    .asciz "\0016[info ] %s: tcm->ztec.is_fake_sleep is %d"
.Lrodata_2593:
    .asciz "syna_dev_set_screen_on_fp_mode"
.Lrodata_2668:
    .asciz "\0016[info ] %s: Do reset on resume\n"
.Lrodata_31d6:
    .asciz "\0013[error] %s: set game mode failed!"
.Lrodata_401c:
    .asciz "\0013[error] %s: set screen_on_fp mode failed!"
.Lrodata_4c37:
    .asciz "\0016[info ] %s: Enter onekey mode\n"
.Lrodata_5641:
    .asciz "\0016[info ] %s: enter"
.Lrodata_5bf0:
    .asciz "\0013[error] %s: Fail to set up app firmware on resume\n"
.Lrodata_626a:
    .asciz "\0016[info ] %s: aod finger down!"
.Lrodata_69e4:
    .asciz "\0016[info ] %s: tcm->ztec.is_one_key is %d"
.Lrodata_811d:
    .asciz "\0016[info ] %s: tcm->ztec.is_screen_off_awake is %d"
.Lrodata_8b52:
    .asciz "\0016[info ] %s: Device resumed (pwr_state:%d)\n"
.Lrodata_912c:
    .asciz "\0016[info ] %s: aod finger down timeout!"
.Lrodata_9754:
    .asciz "\0013[error] %s: Fail to do sw reset\n"
.Lrodata_9e91:
    .asciz "\0013[error] %s: Fail to set fingerprint gesture mode\n"
.Lrodata_9f82:
    .asciz "\0016[info ] %s: tcm->ztec.is_single_tap is %d"
.Lrodata_a677:
    .asciz "\0016[info ] %s: tcm->ztec.is_wakeup_gesture is %d"
.Lrodata_adff:
    .asciz "\0013[error] %s: Fail to enter normal power mode\n"
.Lrodata_c076:
    .asciz "syna_dev_resume"
.Lrodata_c086:
    .asciz "\0013[error] %s: set charger mode failed!"
