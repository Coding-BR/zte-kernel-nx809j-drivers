.section .text,"ax",@progbits
.align 2
.global syna_tcm_check_flash_block
.type syna_tcm_check_flash_block, %function
syna_tcm_check_flash_block:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xb40007e1
    .inst 0xb4000822
    .inst 0x39406049
    .inst 0xaa0003e8
    .inst 0x2a1f03e0
    .inst 0x51000529
    .inst 0x13890529
    .inst 0x7100093f
    .inst 0x5400036c
    .inst 0x340005e9
    .inst 0x7100053f
    .inst 0x54000901
    .inst 0xb9401040
    .inst 0x340008c0
    .inst 0xb9402c29
    .inst 0x7941710a
    .inst 0x79417503
    .inst 0x1b097d49
    .inst 0x2a030128
    .inst 0x34000808
    .inst 0xb9401442
    .inst 0x6b09005f
    .inst 0x54000aa1
    .inst 0x6b03001f
    .inst 0x54000760
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ca
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ca
    .inst 0x2a0003f3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3c34
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3c34
    .inst 0xaa0803e0
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x14000031
    .inst 0x71000d3f
    .inst 0x54000320
    .inst 0x7100253f
    .inst 0x540005a1
    .inst 0xb9401040
    .inst 0x71001c1f
    .inst 0x540005c9
    .inst 0xf940102a
    .inst 0x39400148
    .inst 0x321f0109
    .inst 0x71000d3f
    .inst 0x540006a1
    .inst 0xb9402c29
    .inst 0xb9401443
    .inst 0x7100051f
    .inst 0x540002e0
    .inst 0x71000d1f
    .inst 0x54000361
    .inst 0x52800228
    .inst 0x5280020b
    .inst 0x14000014
    .inst 0xb9401048
    .inst 0x12801e09
    .inst 0x7100011f
    .inst 0x1a880120
    .inst 0x14000017
    .inst 0xb9401040
    .inst 0x14000015
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2917
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2917
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x41c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x41c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaa75
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaa75
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x1400000b
    .inst 0x528001a8
    .inst 0x5280018b
    .inst 0x386b694b
    .inst 0x38686948
    .inst 0x2a082168
    .inst 0x14000002
    .inst 0x2a1f03e8
    .inst 0x1b097d02
    .inst 0x6b02007f
    .inst 0x54000181
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x894e
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x894e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6c40
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6c40
    .inst 0x2a0003e2
    .inst 0xaa0803e0
    .inst 0x1400000b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1072
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1072
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6c40
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6c40
    .inst 0x1400000e
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb0c6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb0c6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6c40
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6c40
    .inst 0x2a0803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffe9
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x544d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x544d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3c34
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3c34
    .inst 0x2a0903e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffe1
.size syna_tcm_check_flash_block, .-syna_tcm_check_flash_block

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
