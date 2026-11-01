.section .text,"ax",@progbits
.align 2
.global richtap_file_unlocked_ioctl
.type richtap_file_unlocked_ioctl, %function
    .word 0x2af6cdbb
richtap_file_unlocked_ioctl:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xf90013f5
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0203f4
    .inst 0x2a0103f5
    .inst 0xf9438908
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_20cb
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_20cb
    .inst 0x2a1503e2
    .inst 0xaa1403e3
    .inst 0xf90007e8
    .inst 0xf9401013
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_2cdb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_2cdb
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x528a4108
    .inst 0x6b0802bf
    .inst 0x540001ed
    .inst 0x528a4208
    .inst 0x6b0802bf
    .inst 0x540002cd
    .inst 0x528a4228
    .inst 0x6b0802bf
    .inst 0x54001600
    .inst 0x528a4248
    .inst 0x6b0802bf
    .inst 0x54001d41
    .inst 0xf9422661
    .inst 0x9119a262
    .inst 0x52800400
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_work_on
    .inst 0x140000a6
    .inst 0x528a4068
    .inst 0x6b0802bf
    .inst 0x54000dc0
    .inst 0x528a40a8
    .inst 0x6b0802bf
    .inst 0x54001260
    .inst 0x528a40c8
    .inst 0x6b0802bf
    .inst 0x540013a0
    .inst 0x14000131
    .inst 0x528a4128
    .inst 0x6b0802bf
    .inst 0x54001c81
    .inst 0x910bc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9401d08
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x910bc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xd5384108
    .inst 0x39411909
    .inst 0xf9430675
    .inst 0x37280089
    .inst 0xf940010a
    .inst 0xaa1403e9
    .inst 0x36d0006a
    .inst 0xd378de89
    .inst 0x8a892289
    .inst 0xb2705bea
    .inst 0xf298300a
    .inst 0xeb0a013f
    .inst 0x54001568
    .inst 0xd503201f
    .inst 0xd53b4229
    .inst 0xd50343df
    .inst 0xf9400508
    .inst 0xd538202a
    .inst 0xaa0803eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182008
    .inst 0xd5033fdf
    .inst 0xd51b4229
    .inst 0x9248fa81
    .inst 0xaa1503e0
    .inst 0x5287d002
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
    .inst 0xb5001222
    .inst 0xf9430668
    .inst 0xb9400102
    .inst 0x5287cfa8
    .inst 0x6b08005f
    .inst 0xb90007e2
    .inst 0x54001f2a
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0xf9408d08
    .inst 0xb85fc110
    .inst 0x728dd2b1
    .inst 0x72ba6f71
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xb9403261
    .inst 0xaa1303e0
    .inst 0xf9405108
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xaa1303e0
    .inst 0x97ffff15
    .reloc .-4, R_AARCH64_CALL26, richtap_rtp_start
    .inst 0x36000880
    .inst 0xf942e668
    .inst 0xf9430669
    .inst 0xaa1303e0
    .inst 0xb94007e2
    .inst 0xf9406908
    .inst 0x91001121
    .inst 0xb85fc110
    .inst 0x72965371
    .inst 0x72b8d4f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x14000036
    .inst 0xd5384108
    .inst 0x39411909
    .inst 0x528000aa
    .inst 0xb90007ea
    .inst 0x37280089
    .inst 0xf940010a
    .inst 0xaa1403e9
    .inst 0x36d0006a
    .inst 0xd378de89
    .inst 0x8a892289
    .inst 0xb2705bea
    .inst 0xf29fffaa
    .inst 0xeb0a013f
    .inst 0x54000b62
    .inst 0xd503201f
    .inst 0xd53b4229
    .inst 0xd50343df
    .inst 0xf9400508
    .inst 0xd538202a
    .inst 0xaa0803eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182008
    .inst 0xd5033fdf
    .inst 0xd51b4229
    .inst 0x9248fa80
    .inst 0x910013e1
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
    .inst 0x14000037
    .inst 0xf942e668
    .inst 0xf102029f
    .inst 0x52801009
    .inst 0x9a893281
    .inst 0xaa1303e0
    .inst 0xf9404508
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xaa1f03e0
    .inst 0x14000033
    .inst 0xd5384108
    .inst 0xb9406269
    .inst 0x3941190a
    .inst 0xb90007e9
    .inst 0x3728008a
    .inst 0xf940010a
    .inst 0xaa1403e9
    .inst 0x36d0006a
    .inst 0xd378de89
    .inst 0x8a892289
    .inst 0xb2705bea
    .inst 0xf29fffaa
    .inst 0xeb0a013f
    .inst 0x54000482
    .inst 0xd503201f
    .inst 0xd53b4229
    .inst 0xd50343df
    .inst 0xf9400508
    .inst 0xd538202a
    .inst 0xaa0803eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182008
    .inst 0xd5033fdf
    .inst 0xd51b4229
    .inst 0x9248fa80
    .inst 0x910013e1
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
    .inst 0xf100001f
    .inst 0x928001a8
    .inst 0x9a8803e0
    .inst 0x14000008
    .inst 0x5287d002
    .inst 0xcb0202a8
    .inst 0x5287d009
    .inst 0x2a1f03e1
    .inst 0x8b090100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x928001a0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000d41
    .inst 0xa9434ff4
    .inst 0xf94013f5
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x528a4268
    .inst 0x6b0802bf
    .inst 0x54000a81
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_0bbe
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_0bbe
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_0000
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_0000
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_20cb
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_20cb
    .inst 0x5280be42
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffb6
    .inst 0x528a4148
    .inst 0x6b0802bf
    .inst 0x54000901
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_1037
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_1037
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_0000
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_0000
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_20cb
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_20cb
    .inst 0x5280bb22
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x940000aa
    .reloc .-4, R_AARCH64_CALL26, richtap_clean_buf
    .inst 0x910bc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9407908
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9401d08
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x910bc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0xf9408908
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb906be7f
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0xf942e668
    .inst 0xf9408d08
    .inst 0xb85fc110
    .inst 0x728dd2b1
    .inst 0x72ba6f71
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xb9403261
    .inst 0xaa1303e0
    .inst 0xf9405108
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9422661
    .inst 0x91192262
    .inst 0x17fffec4
    .inst 0xf9419260
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_078a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_078a
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_20cb
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_20cb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x17ffff65
    .inst 0xf9419260
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_2a97
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_2a97
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x928002a0
    .inst 0x17ffff93
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size richtap_file_unlocked_ioctl, .-richtap_file_unlocked_ioctl
