.section .text,"ax",@progbits
.align 2
.global syna_tcm_read_flash
.type syna_tcm_read_flash, %function
syna_tcm_read_flash:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xa9026ffc
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0xb4000f42
    .inst 0x2a0103f4
    .inst 0x34000f61
    .inst 0x2a0303f6
    .inst 0x34000f23
    .inst 0x39402008
    .inst 0x2a0403f7
    .inst 0xaa0203f8
    .inst 0xaa0003f5
    .inst 0x2a1603f3
    .inst 0x7100091f
    .inst 0x540000e1
    .inst 0xb9403ea8
    .inst 0x2a1603f3
    .inst 0x6b16011f
    .inst 0x54000062
    .inst 0x71001913
    .inst 0x54000ce0
    .inst 0x0b1302c8
    .inst 0x51000508
    .inst 0x1ad30908
    .inst 0x7100051f
    .inst 0x5289ba7a
    .inst 0x2a1f03f9
    .inst 0x1a9f851b
    .inst 0x72a20c5a
    .inst 0x4b1902c8
    .inst 0x6b13011f
    .inst 0x1a933113
    .inst 0x53017e68
    .inst 0x340000b7
    .inst 0x1b177d09
    .inst 0x9bba7d29
    .inst 0xd366fd3c
    .inst 0x14000002
    .inst 0x2a1f03fc
    .inst 0x0b190294
    .inst 0x394026a2
    .inst 0x390013e8
    .inst 0x53017e89
    .inst 0x53097e8a
    .inst 0x53117e8b
    .inst 0x71002c5f
    .inst 0x390003e9
    .inst 0x53197e89
    .inst 0x390007ea
    .inst 0x53097e6a
    .inst 0x39000beb
    .inst 0x39000fe9
    .inst 0x390017ea
    .inst 0x54000501
    .inst 0x350000bc
    .inst 0xf94026a8
    .inst 0x39405108
    .inst 0x36000568
    .inst 0x2a1f03fc
    .inst 0xf941cea8
    .inst 0x910003e2
    .inst 0xaa1503e0
    .inst 0x52800261
    .inst 0x528000c3
    .inst 0xaa1f03e4
    .inst 0x2a1c03e5
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f807c0
    .inst 0xb94156a3
    .inst 0x6b13007f
    .inst 0x54000981
    .inst 0xab394300
    .inst 0x54000b40
    .inst 0xf940a6a1
    .inst 0xb4000b01
    .inst 0xb94152a2
    .inst 0x6b16027f
    .inst 0x540009a8
    .inst 0x6b02027f
    .inst 0x54000968
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xb94156a8
    .inst 0x7100077b
    .inst 0x0b190119
    .inst 0x54fff841
    .inst 0x14000010
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
    .inst 0x35fffb3c
    .inst 0x17ffffd4
    .inst 0xb9420ebc
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
    .inst 0x17ffffd0
    .inst 0x2a1f03e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540007e1
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9426ffc
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x2a1f03e8
    .inst 0x17ffff9c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6646
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6646
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9351
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9351
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb6e0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb6e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffe7
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x885a
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x885a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x2a0003f5
    .inst 0xaa0803e0
    .inst 0x52800262
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x77ff
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x77ff
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb6e0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb6e0
    .inst 0x2a1403e2
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1503e0
    .inst 0x17ffffd6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3d7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3d7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb6e0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb6e0
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffce
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x2a1603e3
    .inst 0x2a1303e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94156b3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3bdd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3bdd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb6e0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb6e0
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002a0
    .inst 0x17ffffbe
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_read_flash, .-syna_tcm_read_flash

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
