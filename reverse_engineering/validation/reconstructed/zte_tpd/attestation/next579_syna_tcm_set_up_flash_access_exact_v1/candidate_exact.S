.section .text,"ax",@progbits
.align 2
.global syna_tcm_set_up_flash_access
.type syna_tcm_set_up_flash_access, %function
syna_tcm_set_up_flash_access:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9047bfd
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910103fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0xb5000101
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2917
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2917
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9334
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9334
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x1400007c
    .inst 0xaa0103f3
    .inst 0xaa0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x77dc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x77dc
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9334
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9334
    .inst 0x2a0203f5
    .inst 0x2a0303f6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910023e1
    .inst 0xaa1403e0
    .inst 0x2a1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_identify
    .inst 0x36f80140
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa99d
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa99d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9334
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9334
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x14000065
    .inst 0x394027e8
    .inst 0x7100051f
    .inst 0x540001c1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5ebb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5ebb
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9334
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9334
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e0
    .inst 0x52800161
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_switch_fw_mode
    .inst 0x36f80080
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa2b8
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa2b8
    .inst 0x17ffffea
    .inst 0x39402682
    .inst 0x71002c5f
    .inst 0x54000241
    .inst 0xaa1f03e8
    .inst 0x52800029
    .inst 0x14000004
    .inst 0x91000508
    .inst 0xf100411f
    .inst 0x540002a0
    .inst 0x8b08028a
    .inst 0x3942094a
    .inst 0x7100e95f
    .inst 0x54ffff41
    .inst 0xf100311f
    .inst 0x54000dc8
    .inst 0x8b08028a
    .inst 0x3942154a
    .inst 0x362ffeaa
    .inst 0x39022269
    .inst 0x17fffff3
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4239
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4239
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9334
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9334
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x14000038
    .inst 0x91038281
    .inst 0xaa1403e0
    .inst 0x2a1503e2
    .inst 0xf9001261
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_boot_info
    .inst 0x36f80080
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4f35
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4f35
    .inst 0x17ffffc4
    .inst 0xf9401268
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9334
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9334
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4276
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4276
    .inst 0xaa1503e1
    .inst 0x39400102
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9401268
    .inst 0xb9403a94
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb091
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb091
    .inst 0xaa1503e1
    .inst 0x39401103
    .inst 0x531f7862
    .inst 0xb9002e62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9401268
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1564
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1564
    .inst 0xaa1503e1
    .inst 0x78405103
    .inst 0x531f7862
    .inst 0xb9002a62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9401268
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6619
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6619
    .inst 0xaa1503e1
    .inst 0x78407102
    .inst 0xb9003262
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9402e68
    .inst 0x340000b4
    .inst 0x6b14011f
    .inst 0x54000069
    .inst 0xb9002e74
    .inst 0x14000002
    .inst 0x34000508
    .inst 0xb9402a68
    .inst 0x34000228
    .inst 0xf9401269
    .inst 0x3940012a
    .inst 0x71000d5f
    .inst 0x54000200
    .inst 0x2a1f03e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540004a1
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9447bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa2e5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa2e5
    .inst 0x14000015
    .inst 0x39405129
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9334
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9334
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3bac
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3bac
    .inst 0xaa1403e1
    .inst 0x1b097d02
    .inst 0x2a0203e3
    .inst 0xb9003e62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9401268
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa9c6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa9c6
    .inst 0xaa1403e1
    .inst 0x39405102
    .inst 0x39405503
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9bf3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9bf3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9334
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9334
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffd9
    .inst 0xd42aa240
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_set_up_flash_access, .-syna_tcm_set_up_flash_access

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
