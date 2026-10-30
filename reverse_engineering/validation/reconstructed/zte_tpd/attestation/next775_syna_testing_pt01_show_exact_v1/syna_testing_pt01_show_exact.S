.section .text,"ax",@progbits
.align 2
.global syna_testing_pt01_show
.type syna_testing_pt01_show, %function
    .inst 0x4e31a072
syna_testing_pt01_show:
    .inst 0xd503233f
    .inst 0xd10283ff
    .inst 0xa9067bfd
    .inst 0xf9003bf7
    .inst 0xa90857f6
    .inst 0xa9094ff4
    .inst 0x910183fd
    .inst 0xd5384108
    .inst 0xaa0203f3
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9400c08
    .inst 0xa904ffff
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xf9400d08
    .inst 0xf90007ff
    .inst 0xf90013ff
    .inst 0xf9404d15
    .inst 0x39560aa8
    .inst 0x36000a68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_testing_0100
    .inst 0xb4000ae0
    .inst 0x910043f6
    .inst 0xaa0003f4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_ad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_ad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_pal_mutex_alloc.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_pal_mutex_alloc.__key
    .inst 0x910042c0
    .inst 0x390143ff
    .inst 0xa9017fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, pt01_limits
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, pt01_limits
    .inst 0x52800209
    .inst 0xf90003e8
    .inst 0x910003e8
    .inst 0xaa1403e1
    .inst 0xf9006e96
    .inst 0x2a1f03e2
    .inst 0xb9000be9
    .inst 0xf9001e88
    .inst 0xf9400e88
    .inst 0xf94002a0
    .inst 0xb85fc110
    .inst 0x72895251
    .inst 0x72b03811
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f80980
    .inst 0x39404288
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_7718
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_7718
    .inst 0x7100011f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_87ff
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_87ff
    .inst 0x9a891105
    .inst 0xf9400683
    .inst 0xb9400284
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_1af3
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_1af3
    .inst 0xaa1303e0
    .inst 0x52820001
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0xb9401fe8
    .inst 0x2a0003f4
    .inst 0x34000308
    .inst 0x2a1f03f6
    .inst 0x52820017
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_8804
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_8804
    .inst 0xf9400be8
    .inst 0x2a1403e9
    .inst 0xaa1503e2
    .inst 0xcb0902e1
    .inst 0x8b090260
    .inst 0x3876c903
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0xb9401fe8
    .inst 0x110006d6
    .inst 0x0b140014
    .inst 0x6b0802df
    .inst 0x54fffea3
    .inst 0x52820008
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_7a13
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_7a13
    .inst 0xcb140101
    .inst 0x8b140260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0x0b140014
    .inst 0x394143e2
    .inst 0x35000562
    .inst 0xf9400bf3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb40005c0
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1403e0
    .inst 0x1400000e
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_c246
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_c246
    .inst 0xaa1303e0
    .inst 0x52820001
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0x14000007
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_a791
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_a791
    .inst 0xaa1303e0
    .inst 0x52820001
    .inst 0x52802003
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0x93407c00
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540003a1
    .inst 0xa9494ff4
    .inst 0xf9403bf7
    .inst 0xa94857f6
    .inst 0xa9467bfd
    .inst 0x910283ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf9400682
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_c281
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_c281
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_3a32
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_3a32
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000005
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_7718
    .inst 0x910000a5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_7718
    .inst 0x17ffffb4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffd1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_testing_pt01_show_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_testing_pt01_show_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffd1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_testing_pt01_show, .-syna_testing_pt01_show
.section .bss,"aw",@nobits
.align 0
.type syna_pal_mutex_alloc.__key, %object
.size syna_pal_mutex_alloc.__key, 1
syna_pal_mutex_alloc.__key:
.zero 1
.section .rodata.str1.1,"aMS",@progbits,1
.org 0x1af3
.L_syna_testing_pt01_show_rodata_str_1af3:
.byte 0x0a, 0x25, 0x73, 0x20, 0x28, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x2e, 0x25, 0x64, 0x29, 0x3a, 0x20, 0x25, 0x73, 0x0a, 0x0a, 0x00
.org 0x3313
.L_syna_testing_pt01_show_rodata_str_3313:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x42, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x73, 0x74, 0x69, 0x6c, 0x6c, 0x20, 0x69, 0x6e, 0x20, 0x75, 0x73, 0x65, 0x64, 0x2c, 0x20, 0x25, 0x64, 0x20, 0x72, 0x65, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x63, 0x65, 0x73, 0x0a, 0x00
.org 0x3a32
.L_syna_testing_pt01_show_rodata_str_3a32:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x65, 0x73, 0x74, 0x69, 0x6e, 0x67, 0x5f, 0x70, 0x74, 0x30, 0x31, 0x5f, 0x73, 0x68, 0x6f, 0x77, 0x00
.org 0x6a45
.L_syna_testing_pt01_show_rodata_str_6a45:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x63, 0x6d, 0x5f, 0x62, 0x75, 0x66, 0x5f, 0x72, 0x65, 0x6c, 0x65, 0x61, 0x73, 0x65, 0x00
.org 0x7718
.L_syna_testing_pt01_show_rodata_str_7718:
.byte 0x46, 0x61, 0x69, 0x6c, 0x00
.org 0x7a13
.L_syna_testing_pt01_show_rodata_str_7a13:
.byte 0x0a, 0x00
.org 0x87ff
.L_syna_testing_pt01_show_rodata_str_87ff:
.byte 0x50, 0x61, 0x73, 0x73, 0x00
.org 0x8804
.L_syna_testing_pt01_show_rodata_str_8804:
.byte 0x78, 0x25, 0x30, 0x32, 0x58, 0x20, 0x00
.org 0x9fae
.L_syna_testing_pt01_show_rodata_str_9fae:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x66, 0x72, 0x65, 0x65, 0x00
.org 0xa791
.L_syna_testing_pt01_show_rodata_str_a791:
.byte 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x74, 0x65, 0x73, 0x74, 0x69, 0x6e, 0x67, 0x20, 0x69, 0x74, 0x65, 0x6d, 0x20, 0x69, 0x64, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0xad32
.L_syna_testing_pt01_show_rodata_str_ad32:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6d, 0x61, 0x6e, 0x61, 0x67, 0x65, 0x64, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x0a, 0x00
.org 0xad58
.L_syna_testing_pt01_show_rodata_str_ad58:
.byte 0x28, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x6d, 0x75, 0x74, 0x65, 0x78, 0x20, 0x2a, 0x29, 0x70, 0x74, 0x72, 0x00
.org 0xc246
.L_syna_testing_pt01_show_rodata_str_c246:
.byte 0x44, 0x65, 0x76, 0x69, 0x63, 0x65, 0x20, 0x69, 0x73, 0x20, 0x4e, 0x4f, 0x54, 0x20, 0x63, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x65, 0x64, 0x0a, 0x00
.org 0xc281
.L_syna_testing_pt01_show_rodata_str_c281:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x75, 0x6e, 0x20, 0x74, 0x65, 0x73, 0x74, 0x2c, 0x20, 0x25, 0x73, 0x0a, 0x00
.section .rodata,"a",@progbits
.org 0x2cf8
.type pt01_limits, %object
.size pt01_limits, 16
pt01_limits:
.byte 0x00
