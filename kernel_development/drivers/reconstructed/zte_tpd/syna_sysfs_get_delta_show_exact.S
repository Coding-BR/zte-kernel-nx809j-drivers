.section .text,"ax",@progbits
.align 2
.global syna_sysfs_get_delta_show
.type syna_sysfs_get_delta_show, %function
    .inst 0x4e31a072
syna_sysfs_get_delta_show:
    .inst 0xd503233f
    .inst 0xd10343ff
    .inst 0xa9077bfd
    .inst 0xa9086ffc
    .inst 0xa90967fa
    .inst 0xa90a5ff8
    .inst 0xa90b57f6
    .inst 0xa90c4ff4
    .inst 0x9101c3fd
    .inst 0xd5384108
    .inst 0xaa0203f3
    .inst 0x52800241
    .inst 0xf9438908
    .inst 0x52800022
    .inst 0x52800143
    .inst 0xf81f83a8
    .inst 0xf9400c08
    .inst 0xa905ffff
    .inst 0xa904ffff
    .inst 0xf9404d16
    .inst 0xa903ffff
    .inst 0xf9001bff
    .inst 0xf94002d4
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_enable_report
    .inst 0x37f81a00
    .inst 0xa9004ff6
    .inst 0xb4001c74
    .inst 0xf9402695
    .inst 0xb4001ef5
    .inst 0xf9401ea8
    .inst 0xb40001e8
    .inst 0x91014280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9401ea8
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x91014280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x910083e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_ad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_ad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_pal_mutex_alloc.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_pal_mutex_alloc.__key
    .inst 0x91004100
    .inst 0x390183ff
    .inst 0xa9027fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x2a1f03f3
    .inst 0x2a1f03fa
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_c25f
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_c25f
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_91b
    .inst 0x9100039c
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_91b
    .inst 0x910083e2
    .inst 0xaa1403e0
    .inst 0x52800241
    .inst 0x52800c83
    .inst 0x52807d04
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_wait_for_report
    .inst 0x37f80060
    .inst 0xb9402fe8
    .inst 0x350000e8
    .inst 0x1100075a
    .inst 0x7100067f
    .inst 0x54000ee8
    .inst 0x7100175f
    .inst 0x54fffe63
    .inst 0x14000074
    .inst 0x11000673
    .inst 0xaa1503e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_af06
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_af06
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9401e88
    .inst 0x34fffe88
    .inst 0xf94013f7
    .inst 0xb90013f3
    .inst 0x2a1f03f3
    .inst 0xb90017f3
    .inst 0xb9402293
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5000080
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_ad32
    .inst 0x14000007
    .inst 0x0b130668
    .inst 0x531f7916
    .inst 0x710002df
    .inst 0x5400016c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_6f17
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1f03f6
    .inst 0xaa1f03fb
    .inst 0xb9402288
    .inst 0x34000108
    .inst 0x14000018
    .inst 0xaa1603e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xaa0003fb
    .inst 0xb9402288
    .inst 0x35000248
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_52b3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_52b3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_af06
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_af06
    .inst 0xaa1b03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000760
    .inst 0xb94017f3
    .inst 0xb400007b
    .inst 0xaa1b03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xb9401e88
    .inst 0x11000673
    .inst 0x6b08027f
    .inst 0x54fffac3
    .inst 0x14000039
    .inst 0x2a1f03f3
    .inst 0x14000007
    .inst 0x38356b7f
    .inst 0xb9402295
    .inst 0x11000673
    .inst 0x91000af7
    .inst 0x6b15027f
    .inst 0x54fffd02
    .inst 0x79003bff
    .inst 0x910063e0
    .inst 0x528000c1
    .inst 0xb9001bff
    .inst 0xaa1c03e2
    .inst 0x79c002e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xb9402295
    .inst 0xaa1b03e0
    .inst 0x0b1506a8
    .inst 0x531f7919
    .inst 0xaa1903e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strnlen
    .inst 0xaa0003f8
    .inst 0xb100041f
    .inst 0x540010c0
    .inst 0x910063e0
    .inst 0x528000c1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strnlen
    .inst 0xf1001c1f
    .inst 0x540010a2
    .inst 0xf100181f
    .inst 0x540010e0
    .inst 0xeb19031f
    .inst 0x54fffc82
    .inst 0x8b180008
    .inst 0xd1000729
    .inst 0xeb19011f
    .inst 0x9a893115
    .inst 0xb10006bf
    .inst 0x54001060
    .inst 0xaa3803e9
    .inst 0xeb19011f
    .inst 0x910063e1
    .inst 0x8b190129
    .inst 0x9a893002
    .inst 0x8b180360
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xeb1502df
    .inst 0x54fffa68
    .inst 0x1400007d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94017f3
    .inst 0x17ffffc4
    .inst 0xb94013f3
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_c25f
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_c25f
    .inst 0x17ffff89
    .inst 0xf94003e8
    .inst 0x52800241
    .inst 0x2a1f03e2
    .inst 0x52800143
    .inst 0xf9400100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_enable_report
    .inst 0xb4000794
    .inst 0xf9402695
    .inst 0xf94007f3
    .inst 0xb4000a55
    .inst 0xf9401ea8
    .inst 0xb40001e8
    .inst 0x91014280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9401ea8
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x91014280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x394183e2
    .inst 0x350005c2
    .inst 0xf94013f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000620
    .inst 0xb4000074
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_b51e
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_b51e
    .inst 0xaa1303e0
    .inst 0x52820001
    .inst 0xf90017ff
    .inst 0x390183ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0x14000007
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_76fe
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_76fe
    .inst 0xaa1303e0
    .inst 0x52820001
    .inst 0x52800243
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540007c1
    .inst 0x93407c00
    .inst 0xa94c4ff4
    .inst 0xa94b57f6
    .inst 0xa94a5ff8
    .inst 0xa94967fa
    .inst 0xa9486ffc
    .inst 0xa9477bfd
    .inst 0x910343ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_2055
    .inst 0x14000016
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_2055
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_af20
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_af20
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94007f3
    .inst 0x17ffffd2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffce
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffce
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_6a5a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_6a5a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_af20
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_af20
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff15
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_6a5a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_6a5a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_get_delta_show_rodata_str_af20
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_get_delta_show_rodata_str_af20
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffba
    .inst 0x91000702
    .inst 0x52800040
    .inst 0x92800001
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x91000402
    .inst 0x52800040
    .inst 0x528000c1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x52800080
    .inst 0x528000c1
    .inst 0x528000e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x910006a2
    .inst 0x52800120
    .inst 0x92800001
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0xd4200020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_sysfs_get_delta_show, .-syna_sysfs_get_delta_show
.section .bss,"aw",@nobits
.align 0
.type syna_pal_mutex_alloc.__key, %object
.size syna_pal_mutex_alloc.__key, 1
syna_pal_mutex_alloc.__key:
.zero 1
.section .rodata.str1.1,"aMS",@progbits,1
.org 0x91b
.L_syna_sysfs_get_delta_show_rodata_str_91b:
.byte 0x25, 0x34, 0x64, 0x20, 0x00
.org 0x2055
.L_syna_sysfs_get_delta_show_rodata_str_2055:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x74, 0x63, 0x6d, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x20, 0x68, 0x61, 0x6e, 0x64, 0x6c, 0x65, 0x0a, 0x00
.org 0x3313
.L_syna_sysfs_get_delta_show_rodata_str_3313:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x42, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x73, 0x74, 0x69, 0x6c, 0x6c, 0x20, 0x69, 0x6e, 0x20, 0x75, 0x73, 0x65, 0x64, 0x2c, 0x20, 0x25, 0x64, 0x20, 0x72, 0x65, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x63, 0x65, 0x73, 0x0a, 0x00
.org 0x4ae7
.L_syna_sysfs_get_delta_show_rodata_str_4ae7:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x00
.org 0x52b3
.L_syna_sysfs_get_delta_show_rodata_str_52b3:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x25, 0x73, 0x0a, 0x00
.org 0x6a45
.L_syna_sysfs_get_delta_show_rodata_str_6a45:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x63, 0x6d, 0x5f, 0x62, 0x75, 0x66, 0x5f, 0x72, 0x65, 0x6c, 0x65, 0x61, 0x73, 0x65, 0x00
.org 0x6a5a
.L_syna_sysfs_get_delta_show_rodata_str_6a5a:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x68, 0x61, 0x6e, 0x64, 0x6c, 0x65, 0x20, 0x6f, 0x66, 0x20, 0x68, 0x61, 0x72, 0x64, 0x77, 0x61, 0x72, 0x65, 0x20, 0x70, 0x6c, 0x61, 0x74, 0x66, 0x6f, 0x72, 0x6d, 0x0a, 0x00
.org 0x6f17
.L_syna_sysfs_get_delta_show_rodata_str_6f17:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x65, 0x74, 0x65, 0x72, 0x0a, 0x00
.org 0x76fe
.L_syna_sysfs_get_delta_show_rodata_str_76fe:
.byte 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x20, 0x72, 0x65, 0x70, 0x6f, 0x72, 0x74, 0x20, 0x25, 0x78, 0x0a, 0x00
.org 0x9fae
.L_syna_sysfs_get_delta_show_rodata_str_9fae:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x66, 0x72, 0x65, 0x65, 0x00
.org 0xad32
.L_syna_sysfs_get_delta_show_rodata_str_ad32:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6d, 0x61, 0x6e, 0x61, 0x67, 0x65, 0x64, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x0a, 0x00
.org 0xad58
.L_syna_sysfs_get_delta_show_rodata_str_ad58:
.byte 0x28, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x6d, 0x75, 0x74, 0x65, 0x78, 0x20, 0x2a, 0x29, 0x70, 0x74, 0x72, 0x00
.org 0xaf06
.L_syna_sysfs_get_delta_show_rodata_str_af06:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x79, 0x73, 0x66, 0x73, 0x5f, 0x67, 0x65, 0x74, 0x5f, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x5f, 0x73, 0x68, 0x6f, 0x77, 0x00
.org 0xaf20
.L_syna_sysfs_get_delta_show_rodata_str_af20:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x63, 0x6d, 0x5f, 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x5f, 0x69, 0x72, 0x71, 0x00
.org 0xb51e
.L_syna_sysfs_get_delta_show_rodata_str_b51e:
.byte 0x44, 0x6f, 0x6e, 0x65, 0x0a, 0x00
.org 0xc25f
.L_syna_sysfs_get_delta_show_rodata_str_c25f:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x44, 0x65, 0x6c, 0x74, 0x61, 0x20, 0x46, 0x72, 0x61, 0x6d, 0x65, 0x20, 0x25, 0x64, 0x20, 0x2e, 0x2e, 0x2e, 0x0a, 0x00
