.section .text,"ax",@progbits
.align 2
.global syna_cdev_ioctls
.type syna_cdev_ioctls, %function
    .inst 0x2af6cdbb
syna_cdev_ioctls:
    .inst 0xd503233f
    .inst 0xd10643ff
    .inst 0xa9137bfd
    .inst 0xa9146ffc
    .inst 0xa91567fa
    .inst 0xa9165ff8
    .inst 0xa91757f6
    .inst 0xa9184ff4
    .inst 0x9104c3fd
    .inst 0xd5384108
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data
    .inst 0xf9438908
    .inst 0xaa0203f3
    .inst 0x2a0103f5
    .inst 0xf81f03a8
    .inst 0xf8450408
    .inst 0xa900ffff
    .inst 0xf9405514
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x12001eb6
    .inst 0x71003edf
    .inst 0x540001e8
    .inst 0x710006df
    .inst 0x5400022c
    .inst 0x34000fd6
    .inst 0x710006df
    .inst 0x54008c81
    .inst 0xf9413a89
    .inst 0xf9402128
    .inst 0xb4001208
    .inst 0xf100067f
    .inst 0x54001200
    .inst 0xb500bb53
    .inst 0x91002120
    .inst 0x2a1f03e1
    .inst 0x1400008e
    .inst 0x710042df
    .inst 0x54000161
    .inst 0x52800036
    .inst 0x140005d4
    .inst 0x71000adf
    .inst 0x5400ba20
    .inst 0x71000edf
    .inst 0x54008a61
    .inst 0x52800028
    .inst 0x2a1f03f6
    .inst 0x39161288
    .inst 0x140005cc
    .inst 0xd538411a
    .inst 0x39411b48
    .inst 0xd378de7b
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1303e8
    .inst 0x36d00049
    .inst 0x8a9b2268
    .inst 0xb27c8be9
    .inst 0xeb09011f
    .inst 0x54008088
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248fa61
    .inst 0x910023e0
    .inst 0x52800202
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0xb5007d60
    .inst 0xb9400ff7
    .inst 0x714006ff
    .inst 0x54007ee8
    .inst 0x12001ea8
    .inst 0x51004508
    .inst 0x7100451f
    .inst 0x5400b9c8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_cdev_ioctls_rodata_10c8
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_cdev_ioctls_rodata_10c8
    .inst 0xf9400bf5
    .inst 0x1000000a
    .inst 0xb8a8792b
    .inst 0x8b0b014a
    .inst 0xd61f0140
    .inst 0x39560a88
    .inst 0xb9400be3
    .inst 0xb90023ff
    .inst 0x3600ba48
    .inst 0xb9457e88
    .inst 0x71000d1f
    .inst 0x5400c040
    .inst 0x710012ff
    .inst 0x5400c8a3
    .inst 0x71000c7f
    .inst 0x5400c869
    .inst 0xf9413a98
    .inst 0xf9402308
    .inst 0xb400cf68
    .inst 0x710016ff
    .inst 0x5400fb22
    .inst 0x910083e0
    .inst 0xaa1703e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __check_object_size
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xd2c01009
    .inst 0xaa1703f6
    .inst 0xcb170129
    .inst 0xeb08013f
    .inst 0x54008622
    .inst 0xcb1602e8
    .inst 0x52800089
    .inst 0xeb080129
    .inst 0x9a8933e1
    .inst 0xeb16003f
    .inst 0x5400fa63
    .inst 0x910083e9
    .inst 0x2a1f03e1
    .inst 0xaa1603e2
    .inst 0x8b080120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x2a1603f7
    .inst 0x340087f6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x2a1703e2
    .inst 0x1400066c
    .inst 0xf9400280
    .inst 0xb9420c01
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_reset
    .inst 0x2a0003f6
    .inst 0x37f87d80
    .inst 0xf9400288
    .inst 0x39402508
    .inst 0x7100051f
    .inst 0x5400aba1
    .inst 0xf9435e88
    .inst 0xaa1403e0
    .inst 0xb85fc110
    .inst 0x7288e391
    .inst 0x72b5c411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x2a0003f6
    .inst 0x36f8aa40
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_dd2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_dd2
    .inst 0x140003dc
    .inst 0x128002b6
    .inst 0x1400054d
    .inst 0x91002120
    .inst 0x52800021
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x2a0003f6
    .inst 0x14000542
    .inst 0x39560a88
    .inst 0xb9400bf6
    .inst 0xb9001fff
    .inst 0x3600ae28
    .inst 0xb9457e88
    .inst 0x71000d1f
    .inst 0x5400b420
    .inst 0x710012ff
    .inst 0x5400bd03
    .inst 0x71000edf
    .inst 0x5400bcc9
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xb27e93e9
    .inst 0xeb09011f
    .inst 0x5400c1c8
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa1
    .inst 0x910073e0
    .inst 0x52800082
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xaa0003e2
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0xb500be82
    .inst 0xb9401ff7
    .inst 0xf9427e88
    .inst 0x9113e289
    .inst 0xeb09011f
    .inst 0x540005e1
    .inst 0x2a1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __msecs_to_jiffies
    .inst 0xb944f288
    .inst 0xf100001f
    .inst 0x7a400904
    .inst 0x9a9f0400
    .inst 0x350004e8
    .inst 0xb40004c0
    .inst 0x2a1703e0
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xf90013ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __msecs_to_jiffies
    .inst 0xaa0003f7
    .inst 0x910083e0
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_wait_entry
    .inst 0x91142280
    .inst 0x910083e1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, prepare_to_wait_event
    .inst 0xb944f288
    .inst 0xf10002ff
    .inst 0x7a400904
    .inst 0x9a9f06f7
    .inst 0x35000208
    .inst 0xb40001f7
    .inst 0xb5000240
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, schedule_timeout
    .inst 0xaa0003f7
    .inst 0x91142280
    .inst 0x910083e1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, prepare_to_wait_event
    .inst 0xb944f288
    .inst 0xf10002ff
    .inst 0x7a400904
    .inst 0x9a9f06f7
    .inst 0x35000048
    .inst 0xb5fffe77
    .inst 0x91142280
    .inst 0x910083e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, finish_wait
    .inst 0xaa1703e0
    .inst 0x34009f20
    .inst 0x710006df
    .inst 0x540096eb
    .inst 0xb944f288
    .inst 0x39411b49
    .inst 0xb9001fe8
    .inst 0x37280089
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xb27e93e9
    .inst 0xeb09011f
    .inst 0x54000368
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa0
    .inst 0x910073e1
    .inst 0x52800082
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_to_user
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x34009220
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4ca9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4ca9
    .inst 0x1400059f
    .inst 0xf9400296
    .inst 0x39560a88
    .inst 0x390073ff
    .inst 0xa905ffff
    .inst 0xa904ffff
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xf90013ff
    .inst 0x36009c68
    .inst 0xb9457e88
    .inst 0x71000d1f
    .inst 0x5400a260
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb4
    .inst 0xb9400388
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x11000d08
    .inst 0x6b17011f
    .inst 0x5400a828
    .inst 0xb9400be2
    .inst 0x6b17005f
    .inst 0x5400b528
    .inst 0x12820008
    .inst 0x0b080048
    .inst 0x313ffd1f
    .inst 0x5400b4a9
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x48
    .inst 0x39400102
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_cdev_data+0x48
    .inst 0x3500b522
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0x91004320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb940af28
    .inst 0x3941032a
    .inst 0xf9400320
    .inst 0x0aa87d09
    .inst 0xb9400b28
    .inst 0x0b170134
    .inst 0x11000549
    .inst 0x6b14011f
    .inst 0x39010329
    .inst 0x54006382
    .inst 0xb40000c0
    .inst 0xaa0003f8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb400d420
    .inst 0xaa1803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb400d480
    .inst 0x7100029f
    .inst 0x5400c7cd
    .inst 0xaa1403e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0xf9000100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0xb400d460
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x10
    .inst 0xb9000114
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0x10
    .inst 0x1400030a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9427e95
    .inst 0x9113e296
    .inst 0xeb1602bf
    .inst 0x540003e0
    .inst 0xd2802017
    .inst 0xf2fbd5b7
    .inst 0x14000004
    .inst 0xf94002d5
    .inst 0xeb1602bf
    .inst 0x54000320
    .inst 0xf94006a8
    .inst 0xf9400109
    .inst 0xeb15013f
    .inst 0x54000241
    .inst 0xf94002a9
    .inst 0xf940052a
    .inst 0xeb15015f
    .inst 0x540001c1
    .inst 0xf9000528
    .inst 0xf9000109
    .inst 0xf9400aa0
    .inst 0x91008ae8
    .inst 0xa90022b7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xb944f288
    .inst 0x34fffd88
    .inst 0x51000508
    .inst 0xb904f288
    .inst 0x17ffffe9
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_del_entry_valid_or_report
    .inst 0x17fffff3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x39411b48
    .inst 0x36288568
    .inst 0x1400042d
    .inst 0x39560a88
    .inst 0xf9413a9c
    .inst 0xb9001fff
    .inst 0x36009168
    .inst 0xb9457e88
    .inst 0x71000d1f
    .inst 0x54009760
    .inst 0x71000eff
    .inst 0x54009d09
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xb27e93e9
    .inst 0xeb09011f
    .inst 0x5400a628
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa1
    .inst 0x910073e0
    .inst 0x52800082
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0xb500a300
    .inst 0xb9401ff6
    .inst 0xf9427e88
    .inst 0x9113e298
    .inst 0xeb18011f
    .inst 0x540005e1
    .inst 0x2a1603e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __msecs_to_jiffies
    .inst 0xb944f288
    .inst 0xf100001f
    .inst 0x7a400904
    .inst 0x9a9f0400
    .inst 0x350004e8
    .inst 0xb40004c0
    .inst 0x2a1603e0
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xf90013ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __msecs_to_jiffies
    .inst 0xaa0003f6
    .inst 0x910083e0
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_wait_entry
    .inst 0x91142280
    .inst 0x910083e1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, prepare_to_wait_event
    .inst 0xb944f288
    .inst 0xf10002df
    .inst 0x7a400904
    .inst 0x9a9f06d6
    .inst 0x35000208
    .inst 0xb40001f6
    .inst 0xb5000240
    .inst 0xaa1603e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, schedule_timeout
    .inst 0xaa0003f6
    .inst 0x91142280
    .inst 0x910083e1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, prepare_to_wait_event
    .inst 0xb944f288
    .inst 0xf10002df
    .inst 0x7a400904
    .inst 0x9a9f06d6
    .inst 0x35000048
    .inst 0xb5fffe76
    .inst 0x91142280
    .inst 0x910083e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, finish_wait
    .inst 0xaa1603e0
    .inst 0x34008120
    .inst 0xf9400308
    .inst 0xeb18011f
    .inst 0x54007360
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9400318
    .inst 0xb9401b19
    .inst 0x6b17033f
    .inst 0x5400ad88
    .inst 0xf9400b16
    .inst 0xaa1903e1
    .inst 0x52800022
    .inst 0xaa1603e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __check_object_size
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xd2c01009
    .inst 0xcb190129
    .inst 0xeb08013f
    .inst 0x54000363
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa0
    .inst 0xaa1603e1
    .inst 0xaa1903e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_to_user
    .inst 0xaa0003f9
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x3500a9b9
    .inst 0x2a1f03f6
    .inst 0xb9401b09
    .inst 0xf9400708
    .inst 0xb9000be9
    .inst 0xf9400109
    .inst 0xeb18013f
    .inst 0x5400a861
    .inst 0xf9400309
    .inst 0xf940052a
    .inst 0xeb18015f
    .inst 0x5400a7e1
    .inst 0xf9000528
    .inst 0xf9000109
    .inst 0xd2802008
    .inst 0x52800449
    .inst 0xf2fbd5a8
    .inst 0xaa090109
    .inst 0xa9002708
    .inst 0x35000059
    .inst 0xb9401b16
    .inst 0xf9400b00
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xaa1803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xb944f288
    .inst 0x34000068
    .inst 0x51000508
    .inst 0xb904f288
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb8
    .inst 0xb9400129
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb8
    .inst 0x6b09011f
    .inst 0x540001e2
    .inst 0xf9413a88
    .inst 0x3942f108
    .inst 0x37000188
    .inst 0xf9402388
    .inst 0xb4000148
    .inst 0x91002380
    .inst 0x52800021
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x80
    .inst 0x14000360
    .inst 0xb9400be3
    .inst 0xaa1403e0
    .inst 0xaa1503e1
    .inst 0x2a1703e2
    .inst 0x940006a1
    .reloc .-4, R_AARCH64_CALL26, syna_cdev_ioctl_raw_read
    .inst 0x1400007f
    .inst 0xb9400be2
    .inst 0x71004c5f
    .inst 0x540078a9
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x48
    .inst 0xf9400298
    .inst 0x394002e2
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_cdev_data+0x48
    .inst 0x35007ec2
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0x91004320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x39410328
    .inst 0xb9400b36
    .inst 0xf9400320
    .inst 0x11000508
    .inst 0x71004edf
    .inst 0x39010328
    .inst 0x54000248
    .inst 0xb40000c0
    .inst 0xaa0003f6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb400a920
    .inst 0xaa1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb400a980
    .inst 0x52800281
    .inst 0x5281b802
    .inst 0x52800296
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0xf9000100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0xb400a980
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x10
    .inst 0xb9000116
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0x10
    .inst 0x2a1603e2
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xf9400328
    .inst 0xb9000f3f
    .inst 0xb900111f
    .inst 0xa9007d1f
    .inst 0xf9400321
    .inst 0xb9403b08
    .inst 0x79000428
    .inst 0xb9403f08
    .inst 0x79000828
    .inst 0x39400028
    .inst 0x39560a89
    .inst 0x121f7908
    .inst 0x2a090108
    .inst 0x39000028
    .inst 0x121c7908
    .inst 0xb9457e89
    .inst 0x71000d3f
    .inst 0x1a9f17e9
    .inst 0x2a090d08
    .inst 0x39000028
    .inst 0x39420308
    .inst 0x34000048
    .inst 0x39000428
    .inst 0x79401028
    .inst 0x394deb09
    .inst 0x121f7908
    .inst 0x2a090108
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb4
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x79001028
    .inst 0x7940012a
    .inst 0x33185d48
    .inst 0x79001028
    .inst 0xb9400528
    .inst 0x53027d08
    .inst 0x39002828
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xb2705be9
    .inst 0xf29ffd89
    .inst 0xeb09011f
    .inst 0x54006968
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa0
    .inst 0x52800282
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_to_user
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x35006640
    .inst 0x52800296
    .inst 0x394002e2
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_cdev_data+0x48
    .inst 0x7100045f
    .inst 0x54005c80
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_baed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_baed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394002e8
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_cdev_data+0x48
    .inst 0x14000396
    .inst 0xb9400be3
    .inst 0xaa1403e0
    .inst 0xaa1503e1
    .inst 0x2a1703e2
    .inst 0x94000702
    .reloc .-4, R_AARCH64_CALL26, syna_cdev_ioctl_raw_write
    .inst 0x2a0003f6
    .inst 0x140002db
    .inst 0x39560a89
    .inst 0xb9400be8
    .inst 0x390093ff
    .inst 0xb90023ff
    .inst 0x390073ff
    .inst 0x37000089
    .inst 0xb9457e89
    .inst 0x71000d3f
    .inst 0x54008ac1
    .inst 0x710016ff
    .inst 0x540069a3
    .inst 0x7100111f
    .inst 0x54006969
    .inst 0xf9413a88
    .inst 0xf940c509
    .inst 0xb4007109
    .inst 0x295f5d16
    .inst 0x39411b49
    .inst 0x37280089
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xb2705be9
    .inst 0xf29ffd89
    .inst 0x91003d29
    .inst 0xeb09011f
    .inst 0x54007428
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa1
    .inst 0x910083e0
    .inst 0x528000a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0xb5007100
    .inst 0x784213e9
    .inst 0x784233e8
    .inst 0x34000069
    .inst 0xf9413a8a
    .inst 0xb900fd49
    .inst 0x34000068
    .inst 0xf9413a89
    .inst 0xb900f928
    .inst 0xf9413a80
    .inst 0xf940c408
    .inst 0xb85fc110
    .inst 0x72974371
    .inst 0x72a56791
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9413a88
    .inst 0xb900fd17
    .inst 0x394083e8
    .inst 0xf9413a89
    .inst 0x7100051f
    .inst 0xb900f936
    .inst 0x54003760
    .inst 0xf9413a88
    .inst 0x3942f108
    .inst 0x370000a8
    .inst 0xf9400280
    .inst 0x910073e1
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0xf9400288
    .inst 0x39402508
    .inst 0x7100051f
    .inst 0x54003601
    .inst 0xf9435e88
    .inst 0xaa1403e0
    .inst 0xb85fc110
    .inst 0x7288e391
    .inst 0x72b5c411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x2a0003f6
    .inst 0x36f84ec0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_86f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_86f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000270
    .inst 0xb9400be2
    .inst 0x71004c5f
    .inst 0x54005be9
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x48
    .inst 0xf9400296
    .inst 0x39400302
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_cdev_data+0x48
    .inst 0x35006222
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0x91004320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x39410328
    .inst 0xb9400b37
    .inst 0xf9400320
    .inst 0x11000508
    .inst 0x71004eff
    .inst 0x39010328
    .inst 0x54000248
    .inst 0xb40000c0
    .inst 0xaa0003f7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4008f80
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4008fe0
    .inst 0x52800281
    .inst 0x5281b802
    .inst 0x52800297
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0xf9000100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0xb4008fe0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x10
    .inst 0xb9000117
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0x10
    .inst 0x2a1703e2
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x39411b48
    .inst 0xf9400337
    .inst 0xb9000f3f
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xb2705be9
    .inst 0xf29ffd89
    .inst 0xeb09011f
    .inst 0x540017a9
    .inst 0x52800295
    .inst 0xcb1502e8
    .inst 0x2a1f03e1
    .inst 0xaa1503e2
    .inst 0x91005100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x34001a35
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x2a1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x14000226
    .inst 0xb9457e88
    .inst 0xb9400bf6
    .inst 0xa9117fff
    .inst 0xa9107fff
    .inst 0x71000d1f
    .inst 0xa90f7fff
    .inst 0xa90e7fff
    .inst 0xa90d7fff
    .inst 0xa90c7fff
    .inst 0xa90b7fff
    .inst 0xa90a7fff
    .inst 0xa9097fff
    .inst 0xa9087fff
    .inst 0xa9077fff
    .inst 0xa9067fff
    .inst 0xa9057fff
    .inst 0xa9047fff
    .inst 0xa9037fff
    .inst 0xa9027fff
    .inst 0x54005240
    .inst 0x7103feff
    .inst 0x540059c9
    .inst 0x34005cf6
    .inst 0x710406df
    .inst 0x540090e2
    .inst 0x910083e0
    .inst 0xaa1603e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __check_object_size
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xd2c01009
    .inst 0xaa1603e0
    .inst 0xcb160129
    .inst 0xeb08013f
    .inst 0x54005f43
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa1
    .inst 0x910083e0
    .inst 0xaa1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0xb5005c00
    .inst 0xaa1f03f5
    .inst 0x910083f8
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_cdev_process_reports
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_cdev_process_reports
    .inst 0x14000004
    .inst 0x910006b5
    .inst 0xf10402bf
    .inst 0x54002240
    .inst 0x38756b08
    .inst 0x7100051f
    .inst 0x54ffff61
    .inst 0xf9400280
    .inst 0x2a1503e1
    .inst 0xaa1703e2
    .inst 0xaa1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_data_duplicator
    .inst 0x36fffea0
    .inst 0x2a0003f6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9817
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9817
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x2a1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x140001d2
    .inst 0x39560a88
    .inst 0xb9400bf6
    .inst 0x37000088
    .inst 0xb9457e88
    .inst 0x71000d1f
    .inst 0x54006ae1
    .inst 0x340049d7
    .inst 0x6b1702df
    .inst 0x54004988
    .inst 0xf942d697
    .inst 0xb40000b7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4006680
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb40066e0
    .inst 0x34005656
    .inst 0xaa1603e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf902d680
    .inst 0xb40066e0
    .inst 0x2a1f03e1
    .inst 0xaa1603e2
    .inst 0xaa0003f7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xaa1703e0
    .inst 0xaa1603e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __check_object_size
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xd2c01009
    .inst 0xaa1603f4
    .inst 0xcb160129
    .inst 0xeb08013f
    .inst 0x540016e2
    .inst 0xeb1402c8
    .inst 0x9a9433e1
    .inst 0xeb14003f
    .inst 0x54008583
    .inst 0x8b0802e0
    .inst 0x2a1f03e1
    .inst 0xaa1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x340033f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8749
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8749
    .inst 0x2a1403e2
    .inst 0x140001d5
    .inst 0x52800200
    .inst 0xf100441f
    .inst 0x540082a2
    .inst 0x910023e8
    .inst 0xaa0003f3
    .inst 0x2a1f03e1
    .inst 0xcb000108
    .inst 0xaa1303e2
    .inst 0x91004100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_2baf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_2baf
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_2690
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_2690
    .inst 0x2a1303e2
    .inst 0x140001c5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6327
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6327
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_2690
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_2690
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x140001a7
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa1
    .inst 0xaa1703e0
    .inst 0x52800282
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xaa0003f5
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0xb5ffe575
    .inst 0x39560a88
    .inst 0x7100051f
    .inst 0x54002b41
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0xf9400115
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0x79400aa2
    .inst 0x794006a1
    .inst 0x340026e2
    .inst 0xb9403ec8
    .inst 0x6b02011f
    .inst 0x1a9f07e8
    .inst 0x350026a1
    .inst 0x54002701
    .inst 0x14000140
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4048
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4048
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_26a1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_26a1
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b6
    .inst 0x14000176
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_86eb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_86eb
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_26a1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_26a1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000170
    .inst 0xaa0803f4
    .inst 0x2a1f03e1
    .inst 0xaa1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xb9400bf8
    .inst 0xf9400334
    .inst 0xb9000f3f
    .inst 0x37f87798
    .inst 0xaa1403e0
    .inst 0xaa1803e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __check_object_size
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xd2c01009
    .inst 0xaa1803f9
    .inst 0xcb180129
    .inst 0xeb08013f
    .inst 0x54000c62
    .inst 0xcb190308
    .inst 0x2a1f03e1
    .inst 0xaa1903e2
    .inst 0x8b080280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xaa1903f8
    .inst 0x34000ef8
    .inst 0xb9400be2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x140000e8
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa1
    .inst 0x910083e0
    .inst 0xaa1703e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xaa0003f6
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0xb5ff76d6
    .inst 0xb94023e8
    .inst 0x7100051f
    .inst 0x54000620
    .inst 0x350058e8
    .inst 0xf9413a88
    .inst 0x3942f108
    .inst 0x7100051f
    .inst 0x540005e1
    .inst 0xf9402308
    .inst 0x91002300
    .inst 0x2a1f03e1
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x36f86a60
    .inst 0x2a0003f6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_19fc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_19fc
    .inst 0x140002e5
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa1
    .inst 0xaa1703e0
    .inst 0xaa1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xaa0003f4
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0xb4001af4
    .inst 0x17ffff2f
    .inst 0xf9413a88
    .inst 0x3942f108
    .inst 0x36005708
    .inst 0x2a1f03f6
    .inst 0x140000d0
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa1
    .inst 0xaa1403e0
    .inst 0xaa1803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xaa0003f9
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0xb5fff099
    .inst 0x78401299
    .inst 0xb9400be3
    .inst 0x6b03033f
    .inst 0x54004028
    .inst 0x910083e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xc9
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0xc9
    .inst 0x91004100
    .inst 0x390183ff
    .inst 0xa9027fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb0
    .inst 0xaa1403f8
    .inst 0x910073e4
    .inst 0xb9400106
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb0
    .inst 0x38403701
    .inst 0x910083e5
    .inst 0xaa1603e0
    .inst 0xaa1803e2
    .inst 0x2a1903e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_send_command
    .inst 0x37f83ea0
    .inst 0xaa1403e0
    .inst 0x2a1f03e1
    .inst 0xaa1703e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x394073e8
    .inst 0x39000288
    .inst 0xb9402fe8
    .inst 0x39000688
    .inst 0xb9402fe8
    .inst 0x53087d08
    .inst 0x39000a88
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x10
    .inst 0xb9400102
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0x10
    .inst 0xb9402fe4
    .inst 0x6b04005f
    .inst 0x54003da3
    .inst 0x340003e4
    .inst 0xb4005118
    .inst 0xf94013e1
    .inst 0xb40050c1
    .inst 0x51000c43
    .inst 0xb9402be2
    .inst 0x6b03009f
    .inst 0x54004fa8
    .inst 0x6b02009f
    .inst 0x54004f68
    .inst 0xaa1803e0
    .inst 0xaa0403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xb9400388
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x7100051f
    .inst 0x5400022d
    .inst 0xb9402fe9
    .inst 0x794706c8
    .inst 0x11000d2a
    .inst 0x53087d0b
    .inst 0x1100112c
    .inst 0x382a4a88
    .inst 0x529fffca
    .inst 0x382c4a8b
    .inst 0xb9400388
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x0b0a010a
    .inst 0x72003d5f
    .inst 0x540000a0
    .inst 0x394e16c8
    .inst 0x11001529
    .inst 0x38294a88
    .inst 0xb9400388
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0xb9402fe9
    .inst 0x0aa87d08
    .inst 0x0b080128
    .inst 0x31000d16
    .inst 0xb9000bf6
    .inst 0x54005c84
    .inst 0xaa1403e0
    .inst 0xaa1603e1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __check_object_size
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1503e8
    .inst 0x36d00069
    .inst 0xd378dea8
    .inst 0x8a8822a8
    .inst 0xd2c01009
    .inst 0xcb160129
    .inst 0xeb08013f
    .inst 0x54000363
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248faa0
    .inst 0xaa1403e1
    .inst 0xaa1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_to_user
    .inst 0xaa0003f6
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x350034b6
    .inst 0xb9400bf6
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x48
    .inst 0x39400282
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_cdev_data+0x48
    .inst 0x7100045f
    .inst 0x54002e81
    .inst 0x2a1f03e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x18
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x18
    .inst 0x3900c008
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x394183e2
    .inst 0x35002ea2
    .inst 0xf94013f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4002f00
    .inst 0xb40005b4
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x1400002a
    .inst 0x12800796
    .inst 0x14000028
    .inst 0x340001e1
    .inst 0x2a1f03e8
    .inst 0xb9403ac9
    .inst 0x6b01013f
    .inst 0x54000041
    .inst 0x36000148
    .inst 0xf941d6c8
    .inst 0xaa1603e0
    .inst 0xb85fc110
    .inst 0x72963bb1
    .inst 0x72a09411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x794012a8
    .inst 0x394deac9
    .inst 0x12000114
    .inst 0x6b09029f
    .inst 0x540034c1
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb4
    .inst 0x53087d02
    .inst 0xb9400128
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x6b02011f
    .inst 0x54003621
    .inst 0x39402aa8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb8
    .inst 0x531e7502
    .inst 0xb9000122
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb8
    .inst 0x35003668
    .inst 0x2a1f03f6
    .inst 0x39400302
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_cdev_data+0x48
    .inst 0x7100045f
    .inst 0x54001681
    .inst 0x2a1f03e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x18
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x18
    .inst 0x3900c008
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x37f804d6
    .inst 0x39411b48
    .inst 0x37280088
    .inst 0xf9400349
    .inst 0xaa1303e8
    .inst 0x36d00049
    .inst 0x8a9b2268
    .inst 0xb27c8be9
    .inst 0xeb09011f
    .inst 0x540005e8
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400749
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248fa60
    .inst 0x910023e1
    .inst 0x52800202
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_to_user
    .inst 0xaa0003e2
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x350002a2
    .inst 0x2a1f03f6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x50
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x50
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f03a9
    .inst 0xeb09011f
    .inst 0x54004a41
    .inst 0x93407ec0
    .inst 0xa9584ff4
    .inst 0xa95757f6
    .inst 0xa9565ff8
    .inst 0xa95567fa
    .inst 0xa9546ffc
    .inst 0xa9537bfd
    .inst 0x910643ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x52800202
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_a705
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_a705
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_2690
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_2690
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x17ffffe7
    .inst 0x12800db6
    .inst 0x17ffffbf
    .inst 0xb9000bff
    .inst 0x12800db6
    .inst 0x17ffffbc
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4ca9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4ca9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_2742
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_2742
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x17fffcca
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6ad5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6ad5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_a745
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_a745
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39411b48
    .inst 0x362ff628
    .inst 0x17ffffb3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4048
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4048
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_387e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_387e
    .inst 0x17fffe55
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8b7f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8b7f
    .inst 0x1400012b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x14000126
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x14000121
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x1400011c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_7b24
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_7b24
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_2742
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_2742
    .inst 0x14000005
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_7b24
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_7b24
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x52800283
    .inst 0x14000012
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_462f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_462f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x14000023
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_3918
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_3918
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x2a1703e2
    .inst 0x140000b1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4d84
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4d84
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8749
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8749
    .inst 0x2a1703e2
    .inst 0x2a1603e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b6
    .inst 0x17ffff9b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6f6f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6f6f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8b7f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8b7f
    .inst 0x1400000f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_207e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_207e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x1400000a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6f38
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6f38
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x14000005
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6f6f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6f6f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f6
    .inst 0x17ffff5f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6f05
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6f05
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffc06
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6f05
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6f05
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffceb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_baed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_baed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39400308
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_cdev_data+0x48
    .inst 0x51000508
    .inst 0x17ffff47
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_dfd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_dfd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x2a1703e2
    .inst 0x52802003
    .inst 0x14000024
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_91ee
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_91ee
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800256
    .inst 0x17ffff3d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4070
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4070
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x2a1703e2
    .inst 0x1400006a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4070
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4070
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x2a1703e2
    .inst 0x14000064
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_bb01
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_bb01
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x14000046
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_3918
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_3918
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8b7f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8b7f
    .inst 0x2a1703e2
    .inst 0x14000059
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_81b0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_81b0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x2a1703e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b6
    .inst 0x17ffff1e
    .inst 0x528000a0
    .inst 0xf100181f
    .inst 0x54003362
    .inst 0x910083e8
    .inst 0xaa0003f4
    .inst 0x2a1f03e1
    .inst 0xcb000108
    .inst 0xaa1403e2
    .inst 0x91001500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x1400003a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6f17
    .inst 0x14000084
    .inst 0xcb0002c8
    .inst 0x52802009
    .inst 0xaa0003e2
    .inst 0xeb080129
    .inst 0x9a8933e1
    .inst 0xeb00003f
    .inst 0x54003123
    .inst 0x910083e9
    .inst 0x2a1f03e1
    .inst 0xaa0203f6
    .inst 0x8b080120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_81a
    .inst 0x2a1603e2
    .inst 0x14000026
    .inst 0x52800082
    .inst 0xf100145f
    .inst 0x54002f02
    .inst 0x910073e8
    .inst 0x2a1f03e1
    .inst 0xcb020108
    .inst 0x91001100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9851
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9851
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8b7f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8b7f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x17fffeeb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_26be
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_26be
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b6
    .inst 0x17fffee4
    .inst 0x52800080
    .inst 0xf100141f
    .inst 0x54002c22
    .inst 0x910073e8
    .inst 0xaa0003f4
    .inst 0x2a1f03e1
    .inst 0xcb000108
    .inst 0xaa1403e2
    .inst 0x91001100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_336c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x17fffed2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_40a3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_40a3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b6
    .inst 0x17fffecb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6f05
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6f05
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffa53
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_baed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_baed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39400288
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_cdev_data+0x48
    .inst 0x51000508
    .inst 0x17fffe87
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe87
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffeb1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6382
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6382
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x2a1903e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x17fffe6e
    .inst 0x39400282
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_56fd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_56fd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x2a1903e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe05
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4d2c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4d2c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x2a0403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800956
    .inst 0x17fffe5e
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4ca9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4ca9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x17fffe57
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5ff9960
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf902d69f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6b1e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6b1e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8749
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8749
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800176
    .inst 0x17fffea3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9882
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128000b6
    .inst 0x17fffe76
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_c16d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8749
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8749
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128000b6
    .inst 0x17fffe95
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_c0ad
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_c0ad
    .inst 0x7100029f
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_bad6
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_bad6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ae75
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ae75
    .inst 0x9a881122
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1603e0
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_enable_predict_reading
    .inst 0x794012a8
    .inst 0x17fffe4c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_e3d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_e3d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0xb9000122
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe4a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_5228
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_5228
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe49
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4d2c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4d2c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x2a1703e2
    .inst 0x2a1903e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800956
    .inst 0x17fffe49
    .inst 0xaa1803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_del_entry_valid_or_report
    .inst 0x17fffac2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_56c5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_56c5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_97fd
    .inst 0x2a1903e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800676
    .inst 0x17fffaae
    .inst 0xf9402308
    .inst 0x91002300
    .inst 0x52800021
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f80480
    .inst 0xf9400289
    .inst 0xb94023e8
    .inst 0xb9420d29
    .inst 0x6b09011f
    .inst 0x54000062
    .inst 0x2a0903e8
    .inst 0xb90023e9
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9fc0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9fc0
    .inst 0xaa1403e1
    .inst 0xb90002a8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94002a2
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b406
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b406
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffd4d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_6f17
    .inst 0x14000064
    .inst 0xf9402308
    .inst 0x91002300
    .inst 0x52800021
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x36f80f20
    .inst 0x2a0003f6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_26e5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_26e5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe09
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_1a25
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_2bef
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_2bef
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b6
    .inst 0x17fffdc2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5ff56c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0xf900011f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_7620
    .inst 0x52800282
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x10
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_62e7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_62e7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_2742
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_2742
    .inst 0x52800282
    .inst 0xf900011f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x10
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e56
    .inst 0x17fffaf4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5ff7060
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0xf900011f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_7620
    .inst 0x52800282
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x10
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_62e7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_62e7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_20c1
    .inst 0x52800282
    .inst 0xf900011f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x10
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e56
    .inst 0x17fffdb9
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5ff2bc0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x8
    .inst 0xf900011f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_7620
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x10
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_62e7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_62e7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_b433
    .inst 0x2a1703e2
    .inst 0xf900011f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data+0x10
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e56
    .inst 0x17fffd68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_634a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_634a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9400288
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb0
    .inst 0x2a1f03f6
    .inst 0xb9420d08
    .inst 0xb9000128
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb0
    .inst 0x17fffd98
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_9fc0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_9fc0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_ioctls_rodata_str_8195
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb0
    .inst 0x2a1f03f6
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb0
    .inst 0x17fffd8f
    .inst 0x52802000
    .inst 0xaa1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __copy_overflow
    .inst 0x17fffe8c
    .inst 0x52800080
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __copy_overflow
    .inst 0x17fff842
    .inst 0xd4210000
    .inst 0x34ff9a38
    .inst 0x17fffc5a
    .inst 0xd4210000
    .inst 0x17fffd45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xaa0003e2
    .inst 0x528001e0
    .inst 0xaa1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x528001e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x528001e0
    .inst 0xaa1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x528001e0
    .inst 0xaa1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
.size syna_cdev_ioctls, .-syna_cdev_ioctls
.section .bss,"aw",@nobits
.org 0x960
.section .rodata,"a",@progbits
.org 0x10c8
.global syna_cdev_ioctls_rodata_10c8
.type syna_cdev_ioctls_rodata_10c8, %object
syna_cdev_ioctls_rodata_10c8:
.byte 0x08, 0x17, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
.size syna_cdev_ioctls_rodata_10c8, 8
.section .rodata.str1.1,"aMS",@progbits,1
.org 0x81a
.L_syna_cdev_ioctls_rodata_str_81a:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x73, 0x65, 0x74, 0x5f, 0x71, 0x75, 0x65, 0x75, 0x65, 0x64, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x73, 0x00
.org 0x86f
.L_syna_cdev_ioctls_rodata_str_86f:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x48, 0x57, 0x20, 0x72, 0x65, 0x73, 0x65, 0x74, 0x3a, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 0x74, 0x6f, 0x20, 0x73, 0x65, 0x74, 0x20, 0x75, 0x70, 0x20, 0x74, 0x68, 0x65, 0x20, 0x61, 0x70, 0x70, 0x20, 0x66, 0x77, 0x0a, 0x00
.org 0xdd2
.L_syna_cdev_ioctls_rodata_str_dd2:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 0x74, 0x6f, 0x20, 0x73, 0x65, 0x74, 0x20, 0x75, 0x70, 0x20, 0x74, 0x68, 0x65, 0x20, 0x61, 0x70, 0x70, 0x20, 0x66, 0x77, 0x0a, 0x00
.org 0xdfd
.L_syna_cdev_ioctls_rodata_str_dfd:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x73, 0x79, 0x6e, 0x63, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x2c, 0x20, 0x62, 0x75, 0x66, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x2c, 0x20, 0x65, 0x78, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0xe3d
.L_syna_cdev_ioctls_rodata_str_e3d:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x61, 0x64, 0x20, 0x69, 0x6e, 0x20, 0x25, 0x64, 0x20, 0x65, 0x78, 0x74, 0x72, 0x61, 0x20, 0x62, 0x79, 0x74, 0x65, 0x73, 0x0a, 0x00
.org 0x19fc
.L_syna_cdev_ioctls_rodata_str_19fc:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x64, 0x69, 0x73, 0x61, 0x62, 0x6c, 0x65, 0x20, 0x69, 0x6e, 0x74, 0x65, 0x72, 0x72, 0x75, 0x70, 0x74, 0x0a, 0x00
.org 0x1a25
.L_syna_cdev_ioctls_rodata_str_1a25:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x63, 0x70, 0x79, 0x00
.org 0x207e
.L_syna_cdev_ioctls_rodata_str_207e:
.byte 0x01, 0x35, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x20, 0x62, 0x61, 0x72, 0x65, 0x20, 0x63, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x6d, 0x6f, 0x64, 0x65, 0x2c, 0x20, 0x6e, 0x6f, 0x20, 0x63, 0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x20, 0x68, 0x61, 0x6e, 0x64, 0x6c, 0x65, 0x72, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x0a, 0x00
.org 0x20c1
.L_syna_cdev_ioctls_rodata_str_20c1:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x73, 0x65, 0x74, 0x5f, 0x63, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x00
.org 0x2690
.L_syna_cdev_ioctls_rodata_str_2690:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x73, 0x00
.org 0x26a1
.L_syna_cdev_ioctls_rodata_str_26a1:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x6f, 0x6c, 0x64, 0x5f, 0x64, 0x69, 0x73, 0x70, 0x61, 0x74, 0x63, 0x68, 0x00
.org 0x26be
.L_syna_cdev_ioctls_rodata_str_26be:
.byte 0x01, 0x34, 0x5b, 0x77, 0x61, 0x72, 0x6e, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x4e, 0x6f, 0x74, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x20, 0x69, 0x72, 0x71, 0x20, 0x63, 0x6f, 0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x0a, 0x00
.org 0x26e5
.L_syna_cdev_ioctls_rodata_str_26e5:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x20, 0x69, 0x6e, 0x74, 0x65, 0x72, 0x72, 0x75, 0x70, 0x74, 0x0a, 0x00
.org 0x2742
.L_syna_cdev_ioctls_rodata_str_2742:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x67, 0x65, 0x74, 0x5f, 0x63, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x5f, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x73, 0x00
.org 0x2baf
.L_syna_cdev_ioctls_rodata_str_2baf:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x20, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x64, 0x61, 0x74, 0x61, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x75, 0x73, 0x65, 0x72, 0x20, 0x73, 0x70, 0x61, 0x63, 0x65, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x2bef
.L_syna_cdev_ioctls_rodata_str_2bef:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x20, 0x72, 0x65, 0x73, 0x70, 0x20, 0x64, 0x61, 0x74, 0x61, 0x0a, 0x00
.org 0x3313
.L_syna_cdev_ioctls_rodata_str_3313:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x42, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x73, 0x74, 0x69, 0x6c, 0x6c, 0x20, 0x69, 0x6e, 0x20, 0x75, 0x73, 0x65, 0x64, 0x2c, 0x20, 0x25, 0x64, 0x20, 0x72, 0x65, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x63, 0x65, 0x73, 0x0a, 0x00
.org 0x336c
.L_syna_cdev_ioctls_rodata_str_336c:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x75, 0x73, 0x65, 0x72, 0x20, 0x73, 0x70, 0x61, 0x63, 0x65, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x387e
.L_syna_cdev_ioctls_rodata_str_387e:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x64, 0x69, 0x73, 0x70, 0x61, 0x74, 0x63, 0x68, 0x00
.org 0x3918
.L_syna_cdev_ioctls_rodata_str_3918:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x73, 0x79, 0x6e, 0x63, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x2c, 0x20, 0x62, 0x75, 0x66, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x20, 0x25, 0x75, 0x0a, 0x00
.org 0x4048
.L_syna_cdev_ioctls_rodata_str_4048:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x55, 0x6e, 0x6b, 0x6e, 0x6f, 0x77, 0x6e, 0x20, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x20, 0x63, 0x6f, 0x64, 0x65, 0x3a, 0x20, 0x30, 0x78, 0x25, 0x78, 0x0a, 0x00
.org 0x4070
.L_syna_cdev_ioctls_rodata_str_4070:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x73, 0x79, 0x6e, 0x63, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x2c, 0x20, 0x62, 0x75, 0x66, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x40a3
.L_syna_cdev_ioctls_rodata_str_40a3:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x6f, 0x66, 0x20, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x20, 0x25, 0x64, 0x0a, 0x00
.org 0x462f
.L_syna_cdev_ioctls_rodata_str_462f:
.byte 0x01, 0x35, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x20, 0x62, 0x61, 0x72, 0x65, 0x20, 0x63, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x6d, 0x6f, 0x64, 0x65, 0x2c, 0x20, 0x6e, 0x6f, 0x20, 0x72, 0x65, 0x70, 0x6f, 0x72, 0x74, 0x20, 0x66, 0x6f, 0x72, 0x77, 0x61, 0x72, 0x64, 0x69, 0x6e, 0x67, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x0a, 0x00
.org 0x4ae7
.L_syna_cdev_ioctls_rodata_str_4ae7:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x00
.org 0x4ca9
.L_syna_cdev_ioctls_rodata_str_4ca9:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x74, 0x6f, 0x20, 0x75, 0x73, 0x65, 0x72, 0x20, 0x73, 0x70, 0x61, 0x63, 0x65, 0x0a, 0x00
.org 0x4d2c
.L_syna_cdev_ioctls_rodata_str_4d2c:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x4e, 0x6f, 0x20, 0x65, 0x6e, 0x6f, 0x75, 0x67, 0x68, 0x20, 0x73, 0x70, 0x61, 0x63, 0x65, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x2c, 0x20, 0x62, 0x75, 0x66, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x20, 0x64, 0x61, 0x74, 0x61, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x4d84
.L_syna_cdev_ioctls_rodata_str_4d84:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x2c, 0x20, 0x62, 0x75, 0x66, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x75, 0x2c, 0x20, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x75, 0x0a, 0x00
.org 0x5228
.L_syna_cdev_ioctls_rodata_str_5228:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x64, 0x6a, 0x75, 0x73, 0x74, 0x20, 0x6b, 0x65, 0x72, 0x6e, 0x65, 0x6c, 0x20, 0x66, 0x69, 0x66, 0x6f, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x74, 0x6f, 0x20, 0x25, 0x64, 0x0a, 0x00
.org 0x56c5
.L_syna_cdev_ioctls_rodata_str_56c5:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x74, 0x6f, 0x20, 0x75, 0x73, 0x65, 0x72, 0x20, 0x73, 0x70, 0x61, 0x63, 0x65, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x56fd
.L_syna_cdev_ioctls_rodata_str_56fd:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x75, 0x6e, 0x20, 0x63, 0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x20, 0x30, 0x78, 0x25, 0x30, 0x32, 0x78, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x70, 0x61, 0x79, 0x6c, 0x6f, 0x61, 0x64, 0x20, 0x6c, 0x65, 0x6e, 0x20, 0x25, 0x64, 0x0a, 0x00
.org 0x5c25
.L_syna_cdev_ioctls_rodata_str_5c25:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x20, 0x28, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x3d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00
.org 0x62e7
.L_syna_cdev_ioctls_rodata_str_62e7:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x63, 0x61, 0x6c, 0x6c, 0x65, 0x72, 0x20, 0x62, 0x75, 0x66, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x20, 0x25, 0x64, 0x0a, 0x00
.org 0x6327
.L_syna_cdev_ioctls_rodata_str_6327:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x0a, 0x00
.org 0x634a
.L_syna_cdev_ioctls_rodata_str_634a:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x52, 0x51, 0x20, 0x69, 0x73, 0x20, 0x64, 0x69, 0x73, 0x61, 0x62, 0x6c, 0x65, 0x64, 0x20, 0x62, 0x79, 0x20, 0x75, 0x73, 0x65, 0x72, 0x73, 0x70, 0x61, 0x63, 0x65, 0x20, 0x61, 0x70, 0x70, 0x6c, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x0a, 0x00
.org 0x6382
.L_syna_cdev_ioctls_rodata_str_6382:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x70, 0x61, 0x79, 0x6c, 0x6f, 0x61, 0x64, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x6d, 0x69, 0x73, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x65, 0x64, 0x2c, 0x20, 0x69, 0x6e, 0x20, 0x68, 0x65, 0x61, 0x64, 0x65, 0x72, 0x3a, 0x25, 0x64, 0x2c, 0x20, 0x61, 0x63, 0x74, 0x75, 0x61, 0x6c, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x6a45
.L_syna_cdev_ioctls_rodata_str_6a45:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x63, 0x6d, 0x5f, 0x62, 0x75, 0x66, 0x5f, 0x72, 0x65, 0x6c, 0x65, 0x61, 0x73, 0x65, 0x00
.org 0x6ad5
.L_syna_cdev_ioctls_rodata_str_6ad5:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x50, 0x49, 0x44, 0x5f, 0x54, 0x41, 0x53, 0x4b, 0x20, 0x69, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x64, 0x0a, 0x00
.org 0x6b1e
.L_syna_cdev_ioctls_rodata_str_6b1e:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x75, 0x73, 0x65, 0x72, 0x20, 0x61, 0x70, 0x70, 0x20, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x3d, 0x20, 0x25, 0x75, 0x0a, 0x00
.org 0x6ed5
.L_syna_cdev_ioctls_rodata_str_6ed5:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x42, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x61, 0x63, 0x63, 0x65, 0x73, 0x73, 0x20, 0x6f, 0x75, 0x74, 0x2d, 0x6f, 0x66, 0x20, 0x62, 0x61, 0x6c, 0x61, 0x6e, 0x63, 0x65, 0x2c, 0x20, 0x25, 0x64, 0x0a, 0x00
.org 0x6f05
.L_syna_cdev_ioctls_rodata_str_6f05:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x63, 0x6d, 0x5f, 0x62, 0x75, 0x66, 0x5f, 0x6c, 0x6f, 0x63, 0x6b, 0x00
.org 0x6f17
.L_syna_cdev_ioctls_rodata_str_6f17:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x65, 0x74, 0x65, 0x72, 0x0a, 0x00
.org 0x6f38
.L_syna_cdev_ioctls_rodata_str_6f38:
.byte 0x01, 0x35, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x20, 0x62, 0x61, 0x72, 0x65, 0x20, 0x63, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x6d, 0x6f, 0x64, 0x65, 0x2c, 0x20, 0x6e, 0x6f, 0x20, 0x69, 0x72, 0x71, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x0a, 0x00
.org 0x6f6f
.L_syna_cdev_ioctls_rodata_str_6f6f:
.byte 0x01, 0x35, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x20, 0x62, 0x61, 0x72, 0x65, 0x20, 0x63, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x6d, 0x6f, 0x64, 0x65, 0x2c, 0x20, 0x6e, 0x6f, 0x20, 0x66, 0x72, 0x61, 0x6d, 0x65, 0x20, 0x66, 0x6f, 0x72, 0x77, 0x61, 0x72, 0x64, 0x69, 0x6e, 0x67, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x0a, 0x00
.org 0x7620
.L_syna_cdev_ioctls_rodata_str_7620:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x63, 0x6d, 0x5f, 0x62, 0x75, 0x66, 0x5f, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x00
.org 0x7b24
.L_syna_cdev_ioctls_rodata_str_7b24:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x20, 0x25, 0x64, 0x20, 0x28, 0x65, 0x78, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x3a, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00
.org 0x8195
.L_syna_cdev_ioctls_rodata_str_8195:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x5f, 0x69, 0x72, 0x71, 0x00
.org 0x81b0
.L_syna_cdev_ioctls_rodata_str_81b0:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x73, 0x79, 0x6e, 0x63, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x2c, 0x20, 0x62, 0x75, 0x66, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x2c, 0x20, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x81f1
.L_syna_cdev_ioctls_rodata_str_81f1:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x2e, 0x20, 0x73, 0x72, 0x63, 0x3a, 0x25, 0x64, 0x2c, 0x20, 0x64, 0x65, 0x73, 0x74, 0x3a, 0x25, 0x64, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x86eb
.L_syna_cdev_ioctls_rodata_str_86eb:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x64, 0x6f, 0x20, 0x72, 0x65, 0x73, 0x65, 0x74, 0x0a, 0x00
.org 0x8749
.L_syna_cdev_ioctls_rodata_str_8749:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x61, 0x70, 0x70, 0x6c, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x5f, 0x69, 0x6e, 0x66, 0x6f, 0x00
.org 0x8b7f
.L_syna_cdev_ioctls_rodata_str_8b7f:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x63, 0x68, 0x65, 0x63, 0x6b, 0x5f, 0x66, 0x72, 0x61, 0x6d, 0x65, 0x00
.org 0x91ee
.L_syna_cdev_ioctls_rodata_str_91ee:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x4e, 0x6f, 0x20, 0x68, 0x61, 0x72, 0x64, 0x77, 0x61, 0x72, 0x65, 0x20, 0x72, 0x65, 0x73, 0x65, 0x74, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x0a, 0x00
.org 0x97fd
.L_syna_cdev_ioctls_rodata_str_97fd:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x67, 0x65, 0x74, 0x5f, 0x66, 0x72, 0x61, 0x6d, 0x65, 0x00
.org 0x9817
.L_syna_cdev_ioctls_rodata_str_9817:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x67, 0x69, 0x73, 0x74, 0x65, 0x72, 0x20, 0x74, 0x68, 0x65, 0x20, 0x68, 0x61, 0x6e, 0x64, 0x6c, 0x65, 0x72, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x72, 0x65, 0x70, 0x6f, 0x72, 0x74, 0x20, 0x25, 0x78, 0x0a, 0x00
.org 0x9851
.L_syna_cdev_ioctls_rodata_str_9851:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x75, 0x73, 0x65, 0x72, 0x20, 0x73, 0x70, 0x61, 0x63, 0x65, 0x0a, 0x00
.org 0x9882
.L_syna_cdev_ioctls_rodata_str_9882:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x64, 0x6f, 0x5f, 0x68, 0x77, 0x5f, 0x72, 0x65, 0x73, 0x65, 0x74, 0x00
.org 0x9fae
.L_syna_cdev_ioctls_rodata_str_9fae:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x66, 0x72, 0x65, 0x65, 0x00
.org 0x9fc0
.L_syna_cdev_ioctls_rodata_str_9fc0:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x52, 0x51, 0x20, 0x69, 0x73, 0x20, 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x64, 0x20, 0x62, 0x79, 0x20, 0x75, 0x73, 0x65, 0x72, 0x73, 0x70, 0x61, 0x63, 0x65, 0x20, 0x61, 0x70, 0x70, 0x6c, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x0a, 0x00
.org 0xa705
.L_syna_cdev_ioctls_rodata_str_a705:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x20, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x64, 0x61, 0x74, 0x61, 0x20, 0x74, 0x6f, 0x20, 0x75, 0x73, 0x65, 0x72, 0x20, 0x73, 0x70, 0x61, 0x63, 0x65, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0xa745
.L_syna_cdev_ioctls_rodata_str_a745:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x73, 0x74, 0x6f, 0x72, 0x65, 0x5f, 0x70, 0x69, 0x64, 0x00
.org 0xad32
.L_syna_cdev_ioctls_rodata_str_ad32:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6d, 0x61, 0x6e, 0x61, 0x67, 0x65, 0x64, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x0a, 0x00
.org 0xad58
.L_syna_cdev_ioctls_rodata_str_ad58:
.byte 0x28, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x6d, 0x75, 0x74, 0x65, 0x78, 0x20, 0x2a, 0x29, 0x70, 0x74, 0x72, 0x00
.org 0xae75
.L_syna_cdev_ioctls_rodata_str_ae75:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x74, 0x6f, 0x20, 0x25, 0x73, 0x20, 0x70, 0x72, 0x65, 0x64, 0x69, 0x63, 0x74, 0x20, 0x72, 0x65, 0x61, 0x64, 0x69, 0x6e, 0x67, 0x0a, 0x00
.org 0xb406
.L_syna_cdev_ioctls_rodata_str_b406:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x53, 0x65, 0x74, 0x20, 0x70, 0x6f, 0x6c, 0x6c, 0x69, 0x6e, 0x67, 0x20, 0x69, 0x6e, 0x74, 0x65, 0x72, 0x76, 0x61, 0x6c, 0x20, 0x69, 0x73, 0x20, 0x25, 0x64, 0x20, 0x6d, 0x73, 0x0a, 0x00
.org 0xb433
.L_syna_cdev_ioctls_rodata_str_b433:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x69, 0x6f, 0x63, 0x74, 0x6c, 0x5f, 0x73, 0x65, 0x6e, 0x64, 0x5f, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x00
.org 0xbad6
.L_syna_cdev_ioctls_rodata_str_bad6:
.byte 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x00
.org 0xbaed
.L_syna_cdev_ioctls_rodata_str_baed:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x63, 0x6d, 0x5f, 0x62, 0x75, 0x66, 0x5f, 0x75, 0x6e, 0x6c, 0x6f, 0x63, 0x6b, 0x00
.org 0xbb01
.L_syna_cdev_ioctls_rodata_str_bb01:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x77, 0x72, 0x69, 0x74, 0x74, 0x65, 0x6e, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x0a, 0x00
.org 0xc0ad
.L_syna_cdev_ioctls_rodata_str_c0ad:
.byte 0x64, 0x69, 0x73, 0x61, 0x62, 0x6c, 0x65, 0x00
.org 0xc16d
.L_syna_cdev_ioctls_rodata_str_c16d:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x4e, 0x6f, 0x74, 0x20, 0x63, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x65, 0x64, 0x0a, 0x00
