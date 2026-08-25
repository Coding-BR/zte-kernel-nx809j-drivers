.section .bss,"aw",@nobits
.align 3

.section .text,"ax",@progbits
.align 2
.global syna_tcm_update_cs_config
.type syna_tcm_update_cs_config, %function
.word 0xdd66a5c9
syna_tcm_update_cs_config:
    .inst 0xd503233f
    .inst 0xd10543ff
    .inst 0xa90f7bfd
    .inst 0xa9106ffc
    .inst 0xa91167fa
    .inst 0xa9125ff8
    .inst 0xa91357f6
    .inst 0xa9144ff4
    .inst 0x9103c3fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xa90dffff
    .inst 0xa90cffff
    .inst 0xa90bffff
    .inst 0xa90affff
    .inst 0xa909ffff
    .inst 0xa908ffff
    .inst 0xa907ffff
    .inst 0xa906ffff
    .inst 0xa905ffff
    .inst 0xa904ffff
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0xb4000fa0
    .inst 0xaa0103f6
    .inst 0xb4000fc1
    .inst 0x2a0203f7
    .inst 0x34000f82
    .inst 0x2a0403f4
    .inst 0x2a0303f8
    .inst 0xaa0003f3
    .inst 0xa90dffff
    .inst 0xa90cffff
    .inst 0xa90bffff
    .inst 0xa90affff
    .inst 0xa909ffff
    .inst 0xa908ffff
    .inst 0xa907ffff
    .inst 0xa906ffff
    .inst 0xa905ffff
    .inst 0xf9002bff
    .inst 0x34000084
    .inst 0xb9420e79
    .inst 0xb941ea75
    .inst 0x14000003
    .inst 0x2a1f03f5
    .inst 0x2a1f03f9
    .inst 0x910143e8
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad58
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad58
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x964
    .inst 0x9100037b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .bss+0x964
    .inst 0x91014100
    .inst 0xaa1a03e1
    .inst 0xaa1b03e2
    .inst 0xa9097fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x910023e8
    .inst 0xaa1a03e1
    .inst 0xaa1b03e2
    .inst 0x91004100
    .inst 0x390123ff
    .inst 0xa900ffff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x52800028
    .inst 0x910143e1
    .inst 0xaa1303e0
    .inst 0x2a1903e2
    .inst 0x2a1503e3
    .inst 0xb9038a68
    .inst 0x97fff3eb
    .inst 0x37f80ae0
    .inst 0x910143e1
    .inst 0x910023e2
    .inst 0xaa1303e0
    .inst 0x2a1903e3
    .inst 0x97fff750
    .inst 0x37f80aa0
    .inst 0xb94017e9
    .inst 0xf94007ea
    .inst 0x5280100b
    .inst 0x51022128
    .inst 0x14000003
    .inst 0x7100216b
    .inst 0x54000140
    .inst 0x0b0b012c
    .inst 0x51021d8d
    .inst 0x38ed494d
    .inst 0x36ffff6d
    .inst 0x51023d8c
    .inst 0x38ec494c
    .inst 0x37ffff0c
    .inst 0x0b0b0128
    .inst 0x51022108
    .inst 0x6b17011f
    .inst 0x540008e3
    .inst 0xb9407feb
    .inst 0x3400092b
    .inst 0x340000d8
    .inst 0x0b0b0309
    .inst 0x51000529
    .inst 0x1acb0929
    .inst 0x1b0b7d29
    .inst 0x14000008
    .inst 0x2a1f03e9
    .inst 0x14000006
    .inst 0x6b0c017f
    .inst 0x540001a9
    .inst 0x0b0b0129
    .inst 0x6b08013f
    .inst 0x54000142
    .inst 0x3869494c
    .inst 0x35ffff8c
    .inst 0xaa0b03ed
    .inst 0x0b0c012e
    .inst 0x386e494e
    .inst 0x35fffece
    .inst 0xf10005ad
    .inst 0x1100058c
    .inst 0x54ffff61
    .inst 0x6b08013f
    .inst 0x540006a8
    .inst 0x0b0b02e8
    .inst 0x2a0903ea
    .inst 0x51000508
    .inst 0x1acb0908
    .inst 0x1b0b7d08
    .inst 0xb900dfe8
    .inst 0x2a1703e8
    .inst 0xf94007eb
    .inst 0x384016cc
    .inst 0xf1000508
    .inst 0x382a496c
    .inst 0x1100054a
    .inst 0x54ffff61
    .inst 0xf94007e8
    .inst 0xb9408bea
    .inst 0x910143e1
    .inst 0xb940dfe4
    .inst 0xaa1303e0
    .inst 0x2a1403e5
    .inst 0x8b294103
    .inst 0x0b090142
    .inst 0x97fffe7c
    .inst 0xb940dfe8
    .inst 0x7100001f
    .inst 0x1a88b014
    .inst 0x14000021
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3561
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3561
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4f1b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4f1b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x14000032
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1506
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1506
    .inst 0x14000010
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5e73
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5e73
    .inst 0x1400000c
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa951
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa951
    .inst 0x14000008
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3580
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3580
    .inst 0x14000004
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x58cf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x58cf
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4f1b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4f1b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39402668
    .inst 0x71002d1f
    .inst 0x540000a1
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x2a1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_switch_fw_mode
    .inst 0xb9038a7f
    .inst 0x394123e2
    .inst 0x35000402
    .inst 0xf94007f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000460
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x394343e2
    .inst 0xf9000bff
    .inst 0x390123ff
    .inst 0x35000442
    .inst 0xf9404bf3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb40004a0
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1403e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000441
    .inst 0xa9544ff4
    .inst 0xa95357f6
    .inst 0xa9525ff8
    .inst 0xa95167fa
    .inst 0xa9506ffc
    .inst 0xa94f7bfd
    .inst 0x910543ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffdc
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffdc
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffda
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffda
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_update_cs_config, .-syna_tcm_update_cs_config

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
