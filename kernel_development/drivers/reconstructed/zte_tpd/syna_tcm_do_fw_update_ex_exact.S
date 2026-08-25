.section .bss,"aw",@nobits
.align 3

.section .text,"ax",@progbits
.align 2
.global syna_tcm_do_fw_update_ex
.type syna_tcm_do_fw_update_ex, %function
.word 0xf4d5d168
syna_tcm_do_fw_update_ex:
    .inst 0xd503233f
    .inst 0xd103c3ff
    .inst 0xa90a7bfd
    .inst 0xf9005bf9
    .inst 0xa90c5ff8
    .inst 0xa90d57f6
    .inst 0xa90e4ff4
    .inst 0x910283fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xb5000080
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x14000006
    .inst 0xb4000061
    .inst 0xb9400028
    .inst 0x35000288
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6bed
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6bed
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x58b6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x58b6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54001561
    .inst 0xa94e4ff4
    .inst 0xf9405bf9
    .inst 0xa94d57f6
    .inst 0xa94c5ff8
    .inst 0xa94a7bfd
    .inst 0x9103c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xaa0003f3
    .inst 0x2a0503f4
    .inst 0xaa0103f9
    .inst 0x2a0603f8
    .inst 0x2a0303f6
    .inst 0x2a0403f5
    .inst 0xa908ffff
    .inst 0xa907ffff
    .inst 0xa906ffff
    .inst 0xa905ffff
    .inst 0xa904ffff
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0xf90003ff
    .inst 0xb90003e2
    .inst 0x35000065
    .inst 0x2a1f03f7
    .inst 0x14000002
    .inst 0xb9420e77
    .inst 0x910003e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x964
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .bss+0x964
    .inst 0x91014100
    .inst 0xa9047fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0xb9400328
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x28ca
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x28ca
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x58b6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x58b6
    .inst 0xf9000ff9
    .inst 0xb90013e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800028
    .inst 0xb9038a68
    .inst 0x39402669
    .inst 0x71002d3f
    .inst 0x54000101
    .inst 0xb94003e8
    .inst 0x52800129
    .inst 0x2a1403e3
    .inst 0x2a090108
    .inst 0xb90003e8
    .inst 0x37180188
    .inst 0x14000010
    .inst 0xb94003e8
    .inst 0x7100053f
    .inst 0x54000721
    .inst 0x79416669
    .inst 0x2a1403e3
    .inst 0x34000089
    .inst 0x52800129
    .inst 0x2a090108
    .inst 0xb90003e8
    .inst 0x361800c8
    .inst 0xf9400fe9
    .inst 0xb9408fea
    .inst 0xb9404129
    .inst 0x0b090149
    .inst 0xb9008fe9
    .inst 0x360000c8
    .inst 0xf9400fe8
    .inst 0xb9408fe9
    .inst 0xb9408108
    .inst 0x0b080128
    .inst 0xb9008fe8
    .inst 0x910003e1
    .inst 0xaa1303e0
    .inst 0x2a1703e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_up_flash_access
    .inst 0x36f80100
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1506
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1506
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x58b6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x58b6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000037
    .inst 0x39402662
    .inst 0x71002c5f
    .inst 0x54000241
    .inst 0xb94003e8
    .inst 0x36180348
    .inst 0x394223e8
    .inst 0xf9400fe9
    .inst 0x910003e1
    .inst 0xaa1303e0
    .inst 0x2a1603e3
    .inst 0x2a1503e4
    .inst 0x0a180108
    .inst 0x9100c122
    .inst 0x12000105
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_update_flash_block
    .inst 0x36f801c0
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1531
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1531
    .inst 0x17ffffe9
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa14
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa14
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x58b6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x58b6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000018
    .inst 0x2a1403e3
    .inst 0x371ff9c8
    .inst 0x17ffffd2
    .inst 0xb94003e8
    .inst 0x360001c8
    .inst 0xf9400fe8
    .inst 0x910003e1
    .inst 0xaa1303e0
    .inst 0x2a1603e3
    .inst 0x2a1503e4
    .inst 0x2a1f03e5
    .inst 0x9101c102
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_update_flash_block
    .inst 0x36f800a0
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x77ab
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x77ab
    .inst 0x17ffffd1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4efd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4efd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x58b6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x58b6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_reset
    .inst 0x2a0003f4
    .inst 0x37f80300
    .inst 0xb9038a7f
    .inst 0x394203e2
    .inst 0x35000122
    .inst 0xf94023f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000180
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1403e0
    .inst 0x17ffff61
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
    .inst 0x17fffff3
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
    .inst 0x17fffff3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x86eb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x86eb
    .inst 0x17ffffad
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_do_fw_update_ex, .-syna_tcm_do_fw_update_ex

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
