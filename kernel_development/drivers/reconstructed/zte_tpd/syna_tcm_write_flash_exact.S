.section .text,"ax",@progbits
.align 2
.global syna_tcm_write_flash
.type syna_tcm_write_flash, %function
syna_tcm_write_flash:
    .inst 0xd503233f
    .inst 0xd10203ff
    .inst 0xa9027bfd
    .inst 0xa9036ffc
    .inst 0xa90467fa
    .inst 0xa9055ff8
    .inst 0xa90657f6
    .inst 0xa9074ff4
    .inst 0x910083fd
    .inst 0x2945d434
    .inst 0xb81f43a2
    .inst 0x39420022
    .inst 0x2a0503fc
    .inst 0x2a0403f6
    .inst 0xaa0103f3
    .inst 0xaa0003f8
    .inst 0xf81f83a3
    .inst 0x350012e2
    .inst 0x91014260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x39420268
    .inst 0x11000508
    .inst 0x39020268
    .inst 0x34000ff6
    .inst 0x1ad40aa8
    .inst 0x2a1f03f7
    .inst 0x2901dbfc
    .inst 0x1b147d15
    .inst 0x2a1603f4
    .inst 0x6b15029f
    .inst 0xb9404a62
    .inst 0xf9402260
    .inst 0x1a95329b
    .inst 0x11000b79
    .inst 0x6b19005f
    .inst 0x54000242
    .inst 0xb40000c0
    .inst 0xaa0003f6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000c80
    .inst 0xaa1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000ce0
    .inst 0x7100033f
    .inst 0x540014ad
    .inst 0xaa1903e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9002260
    .inst 0xb40014c0
    .inst 0xaa1903e2
    .inst 0xb9004a79
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xb85f43a9
    .inst 0xb9402e68
    .inst 0xb9004e7f
    .inst 0x0b0902fa
    .inst 0xf9402269
    .inst 0x1ac80b48
    .inst 0x39000128
    .inst 0x53087d08
    .inst 0xf9402269
    .inst 0x39000528
    .inst 0xb9402e68
    .inst 0x34000088
    .inst 0x0b080369
    .inst 0x51000529
    .inst 0x1ac80928
    .inst 0x340000dc
    .inst 0x1b1c7d08
    .inst 0x5289ba69
    .inst 0x72a20c49
    .inst 0x9ba97d08
    .inst 0xd366fd1c
    .inst 0xf85f83a8
    .inst 0xab374101
    .inst 0x54000cc0
    .inst 0xf9402268
    .inst 0x91000900
    .inst 0xb4000c60
    .inst 0xb94013e8
    .inst 0x4b170102
    .inst 0xb9404a68
    .inst 0x6b02037f
    .inst 0x51000903
    .inst 0x54000ae8
    .inst 0x6b03037f
    .inst 0x54000aa8
    .inst 0xaa1b03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x39402702
    .inst 0xf9402276
    .inst 0x71002c5f
    .inst 0x540003a1
    .inst 0x350000bc
    .inst 0xf9402708
    .inst 0x39405108
    .inst 0x36000408
    .inst 0x2a1f03fc
    .inst 0xf941cf08
    .inst 0xaa1803e0
    .inst 0x52800241
    .inst 0xaa1603e2
    .inst 0x2a1903e3
    .inst 0xaa1f03e4
    .inst 0x2a1c03e5
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f809a0
    .inst 0xb9409268
    .inst 0xb9400ffc
    .inst 0x6b1b0294
    .inst 0x0b1b02f7
    .inst 0x0b1b0108
    .inst 0xb9009268
    .inst 0x54fff461
    .inst 0x1400001a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x666c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x666c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x35fffc9c
    .inst 0x17ffffdf
    .inst 0xb9420f1c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x53b6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x53b6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x2a1c03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffdb
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
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5fff360
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x14000040
    .inst 0x39420268
    .inst 0x12001d09
    .inst 0x2a1f03fc
    .inst 0x7100053f
    .inst 0x2a1f03e9
    .inst 0x540009c1
    .inst 0x91014260
    .inst 0x39020269
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1c03e0
    .inst 0xa9474ff4
    .inst 0xa94657f6
    .inst 0xa9455ff8
    .inst 0xa94467fa
    .inst 0xa9436ffc
    .inst 0xa9427bfd
    .inst 0x910203ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f05
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f05
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff65
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x2a1b03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6c0f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6c0f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4f8c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4f8c
    .inst 0x2a1b03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420268
    .inst 0x128002bc
    .inst 0x7100051f
    .inst 0x54000561
    .inst 0x2a1f03e9
    .inst 0x17ffffdc
    .inst 0x2a0003fc
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x885a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x885a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x52800242
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7de2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7de2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4f8c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4f8c
    .inst 0x2a1a03e2
    .inst 0x2a1903e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420268
    .inst 0x7100051f
    .inst 0x54fffdc0
    .inst 0x14000017
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f17
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf900227f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x2a1903e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4f59
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4f59
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4f8c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4f8c
    .inst 0xf900267f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420268
    .inst 0x12801e5c
    .inst 0x7100051f
    .inst 0x54fffae0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x12001d02
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420268
    .inst 0x51000509
    .inst 0x17ffffab
.size syna_tcm_write_flash, .-syna_tcm_write_flash

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
