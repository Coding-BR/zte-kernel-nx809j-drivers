.section .text,"ax",@progbits
.align 2
.global syna_tcm_parse_fw_image
.type syna_tcm_parse_fw_image, %function
    .word 0xcf1edfe9
syna_tcm_parse_fw_image:
    .inst 0xd503233f
    .inst 0xd10203ff
    .inst 0xa9027bfd
    .inst 0xa9036ffc
    .inst 0xa90467fa
    .inst 0xa9055ff8
    .inst 0xa90657f6
    .inst 0xa9074ff4
    .inst 0x910083fd
    .inst 0xb40015c0
    .inst 0xaa0203f9
    .inst 0xb40015e2
    .inst 0x2a0103f4
    .inst 0x34001601
    .inst 0xaa0003f3
    .inst 0x91001320
    .inst 0x2a1f03e1
    .inst 0x52806182
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xf9000733
    .inst 0x5288e569
    .inst 0xb9000334
    .inst 0x72a90309
    .inst 0xb9400268
    .inst 0x6b09011f
    .inst 0x540014e1
    .inst 0xb9400668
    .inst 0xb81fc3a8
    .inst 0x34001328
    .inst 0x2a1f03f5
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x10ee
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x10ee
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x4858
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x4858
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x4910
    .inst 0x9100037b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x4910
    .inst 0x91004328
    .inst 0x52800118
    .inst 0xf9000be8
    .inst 0x1400000a
    .inst 0x52883b09
    .inst 0x72b83f69
    .inst 0x6b09011f
    .inst 0x54000600
    .inst 0xb85fc3a8
    .inst 0x110006b5
    .inst 0x11001318
    .inst 0x6b0802bf
    .inst 0x540010a0
    .inst 0xb8784a68
    .inst 0x529ca2c9
    .inst 0x72af80a9
    .inst 0x8b08027c
    .inst 0xb9400388
    .inst 0x6b09011f
    .inst 0x54fffe21
    .inst 0x528002d4
    .inst 0x71005a9f
    .inst 0x54000088
    .inst 0xf8745af9
    .inst 0xf8745b7a
    .inst 0x14000003
    .inst 0x52800059
    .inst 0xaa1603fa
    .inst 0xaa1a03e0
    .inst 0xaa1903e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strnlen
    .inst 0xaa0003e2
    .inst 0xeb19001f
    .inst 0x540011c8
    .inst 0x54001122
    .inst 0x91001380
    .inst 0xaa1a03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncmp
    .inst 0x34000160
    .inst 0x51000694
    .inst 0x31000a9f
    .inst 0x54fffd81
    .inst 0x91001382
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6c96
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6c96
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2f45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2f45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffd8
    .inst 0x71005e9f
    .inst 0x54fffac2
    .inst 0x1100069a
    .inst 0x52800389
    .inst 0x52800488
    .inst 0x14000004
    .inst 0x5280029a
    .inst 0x52800089
    .inst 0x52800108
    .inst 0xf9400beb
    .inst 0x2a1a03ea
    .inst 0xab0a1579
    .inst 0x54000081
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d10
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d10
    .inst 0x14000004
    .inst 0xb50000fc
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc3f9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc3f9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaaff
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaaff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc1
    .inst 0xb8696b94
    .inst 0x7100535f
    .inst 0x8b080381
    .inst 0x540001c1
    .inst 0x52800288
    .inst 0xf9000721
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8df1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8df1
    .inst 0x39006328
    .inst 0x52800028
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaaff
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaaff
    .inst 0x2a1403e2
    .inst 0x29027f34
    .inst 0x39000328
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000022
    .inst 0xb9402388
    .inst 0x12800000
    .inst 0xaa1403e2
    .inst 0xf90003e1
    .inst 0xb9000fe8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, crc32_le
    .inst 0xb9400fea
    .inst 0x2a2003e4
    .inst 0x6b04015f
    .inst 0x54000421
    .inst 0xb9401b88
    .inst 0xf94003e9
    .inst 0xaa1603e2
    .inst 0x3900633a
    .inst 0x531f7903
    .inst 0x51000748
    .inst 0xf9000729
    .inst 0x52800029
    .inst 0x7100591f
    .inst 0xb9001f2a
    .inst 0x39000329
    .inst 0x29020f34
    .inst 0x54000088
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x49c8
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x49c8
    .inst 0xf8685922
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x29b5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x29b5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaaff
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaaff
    .inst 0x2a0303e4
    .inst 0x2a1403e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9401324
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x789a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x789a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x10f0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x10f0
    .inst 0x2a1a03e2
    .inst 0xaa1903e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff86
    .inst 0x51000748
    .inst 0xaa1603e2
    .inst 0x7100591f
    .inst 0x54000088
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x49c8
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x49c8
    .inst 0xf8685922
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb1e4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb1e4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaaff
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaaff
    .inst 0x2a0a03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff78
    .inst 0x2a1f03e0
    .inst 0x14000010
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x89c8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x89c8
    .inst 0x14000009
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8db6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8db6
    .inst 0x14000006
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6bed
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6bed
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1636
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1636
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x10f0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x10f0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0xa9474ff4
    .inst 0xa94657f6
    .inst 0xa9455ff8
    .inst 0xa94467fa
    .inst 0xa9436ffc
    .inst 0xa9427bfd
    .inst 0x910203ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x91000442
    .inst 0x52800080
    .inst 0xaa1903e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x91000442
    .inst 0x52800040
    .inst 0xaa1903e1
.inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
.size syna_tcm_parse_fw_image, .-syna_tcm_parse_fw_image

.section .rodata,"a",@progbits
.align 3
.zero 0x4858
.xword 9, 15, 11, 8, 10, 12, 14, 13, 6, 6, 17, 4
.xword 7, 4, 11, 4, 5, 17, 17, 17, 15, 21, 16
.xword .L_parse_name_0, .L_parse_name_1, .L_parse_name_2
.xword .L_parse_name_3, .L_parse_name_4, .L_parse_name_5
.xword .L_parse_name_6, .L_parse_name_7, .L_parse_name_8
.xword .L_parse_name_9, .L_parse_name_10, .L_parse_name_11
.xword .L_parse_name_12, .L_parse_name_13, .L_parse_name_14
.xword .L_parse_name_15, .L_parse_name_16, .L_parse_name_17
.xword .L_parse_name_18, .L_parse_name_19, .L_parse_name_20
.xword .L_parse_name_21, .L_parse_name_22
.xword .L_parse_name_0, .L_parse_name_1, .L_parse_name_2
.xword .L_parse_name_3, .L_parse_name_4, .L_parse_name_5
.xword .L_parse_name_6, .L_parse_name_7, .L_parse_name_8
.xword .L_parse_name_9, .L_parse_name_10, .L_parse_name_11
.xword .L_parse_name_12, .L_parse_name_13, .L_parse_name_14
.xword .L_parse_name_15, .L_parse_name_16, .L_parse_name_17
.xword .L_parse_name_18, .L_parse_fallback, .L_parse_name_20
.xword .L_parse_name_21, .L_parse_name_22
.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
.L_parse_fallback:
    .asciz " "
.L_parse_name_0:
    .asciz "APP_CODE"
.L_parse_name_1:
    .asciz "APP_CODE_COPRO"
.L_parse_name_2:
    .asciz "APP_CONFIG"
.L_parse_name_3:
    .asciz "DISPLAY"
.L_parse_name_4:
    .asciz "BOOT_CODE"
.L_parse_name_5:
    .asciz "BOOT_CONFIG"
.L_parse_name_6:
    .asciz "APP_PROD_TEST"
.L_parse_name_7:
    .asciz "F35_APP_CODE"
.L_parse_name_8:
    .asciz "FORCE"
.L_parse_name_9:
    .asciz "GAMMA"
.L_parse_name_10:
    .asciz "TEMPERATURE_GAMM"
.L_parse_name_11:
    .asciz "LCM"
.L_parse_name_12:
    .asciz "LOOKUP"
.L_parse_name_13:
    .asciz "OEM"
.L_parse_name_14:
    .asciz "OPEN_SHORT"
.L_parse_name_15:
    .asciz "OTP"
.L_parse_name_16:
    .asciz "PPDT"
.L_parse_name_17:
    .asciz "ROMBOOT_APP_CODE"
.L_parse_name_18:
    .asciz "TOOL_BOOT_CONFIG"
.L_parse_name_19:
    .asciz "JSON_CONFIG_AREA"
.L_parse_name_20:
    .asciz "CUSTOM_CS_AREA"
.L_parse_name_21:
    .asciz "CUSTOM_LOCKDOWN_AREA"
.L_parse_name_22:
    .asciz "CUSTOM_MTP_AREA"
